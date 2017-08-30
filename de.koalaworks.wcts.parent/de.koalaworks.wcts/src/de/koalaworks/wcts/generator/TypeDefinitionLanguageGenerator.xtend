/*
 * generated by Xtext 2.12.0
 */
package de.koalaworks.wcts.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import de.koalaworks.wcts.typeDefinitionLanguage.ContentType
import com.google.inject.Inject
import org.eclipse.xtext.resource.IResourceDescriptions
import org.eclipse.xtext.EcoreUtil2
import org.eclipse.xtext.resource.IContainer
import de.koalaworks.wcts.typeDefinitionLanguage.Type
import java.util.List
import de.koalaworks.wcts.typeDefinitionLanguage.PageType
import de.koalaworks.wcts.typeDefinitionLanguage.TypeDefinitionLanguagePackage
import java.util.ArrayList
import de.koalaworks.wcts.typeDefinitionLanguage.Feature
import de.koalaworks.wcts.typeDefinitionLanguage.ReferenceType
import java.util.Collections
import org.eclipse.emf.ecore.EClass
import java.util.Map
import de.koalaworks.wcts.validation.SelectorWrapper

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class TypeDefinitionLanguageGenerator extends AbstractGenerator {

	@Inject
	private IResourceDescriptions descriptions;

	@Inject
	private IContainer.Manager containerManager;

	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		if (!context.cancelIndicator.canceled) {
			val projectName = resource.URI.toPlatformString(true).split("/", 3).get(1)
			val visibleContainers = containerManager.getVisibleContainers(descriptions.getResourceDescription(resource.URI), descriptions)
			val typeDefinitionsByType = visibleContainers
				.map[container | container.resourceDescriptions]
				.flatten
				.map[description | EcoreUtil2.getResource(resource, description.URI.toString)]
				.map[otherResource | otherResource.allContents.toIterable ]
				.flatten
				.filter(Type)
				.groupBy[type | type.eClass]
			
			doGenerate(projectName, typeDefinitionsByType, fsa)
		}
	}
	
	def void doGenerate(String projectName, Map<EClass, List<Type>> typeDefinitionsByType, IFileSystemAccess2 fsa) {
		fsa.generateFile(projectName + ".js",
			'''
			"use strict;"
			module.exports = {
				"pageTypes": {
					«compileTypes(typeDefinitionsByType.get(TypeDefinitionLanguagePackage.Literals.PAGE_TYPE))»
				},
				"contentTypes": {
					«compileTypes(typeDefinitionsByType.get(TypeDefinitionLanguagePackage.Literals.CONTENT_TYPE))»
				},
				"referenceTypes": {
					«compileTypes(typeDefinitionsByType.get(TypeDefinitionLanguagePackage.Literals.REFERENCE_TYPE))»
				}
			};
			''')
	}
	
	def private compileTypes(List<Type> types) {
		if (!types.isNullOrEmpty) {
			val List<CharSequence> compiledTypes = new ArrayList(types.size)
			for (type : types) {
				compiledTypes.add(compileType(type))
			}
			return String.join(",\n", compiledTypes)
		}
	}

	def private compileType(Type type) {
		val Map<EClass, List<Feature>> featuresByType =
			if (type.features.nullOrEmpty) Collections.emptyMap
			else type.features.groupBy[feature | feature.type.eClass]
		
		val selector = type.selectorWrapper

		'''
		"«type.name»": {
			"name": "«type.name.trim»",
			"selector": «IF selector.isPresent»«selector.compileSelector»«ELSE»{}«ENDIF»,
			"properties": {
				«compileFeatures(featuresByType.get(TypeDefinitionLanguagePackage.Literals.CONTENT_TYPE))»
			}«IF !(type instanceof ReferenceType)»,
			"references": {
				«compileFeatures(featuresByType.get(TypeDefinitionLanguagePackage.Literals.REFERENCE_TYPE))»
			}«ENDIF»
		}'''
	}

	def private dispatch selectorWrapper(PageType pageType) {
		return SelectorWrapper.create(pageType.selector)
	}

	def private dispatch selectorWrapper(ContentType contentType) {
		return SelectorWrapper.create(contentType.selector)
	}
	
	def private dispatch selectorWrapper(ReferenceType referenceType) {
		return SelectorWrapper.create(referenceType.selector)
	}
	
	def private dispatch selectorWrapper(Feature referenceType) {
		return SelectorWrapper.create(referenceType.selector)
	}

	def private compileSelector(SelectorWrapper selector) {
		'''{ "type": "«selector.typeName.trim»", "value": "«selector.value.trim»" }'''
	}

	def private compileFeatures(Iterable<Feature> features) {
		if (!features.isNullOrEmpty) {
			val List<CharSequence> compiledFeatures = new ArrayList(features.size)
			for (feature : features) {
				compiledFeatures.add(feature.compileFeature)
			}
			return String.join(",\n", compiledFeatures)
		}
	}

	def private compileFeature(Feature feature) {
		val selectorWrapper = feature.selectorWrapper
		'''"«feature.name»": { "name": "«feature.name.trim»", "type": "«feature.type.typeName.trim»", "selector": «IF selectorWrapper.isPresent»«selectorWrapper.compileSelector»«ELSE»{}«ENDIF» }'''
	}
	
	def private dispatch typeName(ContentType contentType) {
		return contentType.name
	}
	
	def private dispatch typeName(ReferenceType referenceType) {
		return referenceType.name
	}
}
