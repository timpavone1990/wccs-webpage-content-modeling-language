/*
 * generated by Xtext 2.12.0
 */
package de.koalaworks.wcts.validation

import org.eclipse.xtext.validation.Check
import de.koalaworks.wcts.typeDefinitionLanguage.Feature
import de.koalaworks.wcts.typeDefinitionLanguage.TypeDefinitionLanguagePackage
import de.koalaworks.wcts.typeDefinitionLanguage.ContentType
import de.koalaworks.wcts.typeDefinitionLanguage.ReferenceType
import de.koalaworks.wcts.typeDefinitionLanguage.ContentSelector
import de.koalaworks.wcts.typeDefinitionLanguage.ReferenceSelector
import de.koalaworks.wcts.typeDefinitionLanguage.UrlPatternSelector
import de.koalaworks.wcts.typeDefinitionLanguage.CssSelector

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class TypeDefinitionLanguageValidator extends AbstractTypeDefinitionLanguageValidator {
	
	public static val NO_INFERABLE_FEATURE_SELECTOR = 'noInferableFeatureSelector'
	public static val INVALID_CUSTOM_FEATURE_SELECTOR = 'invalidCustomFeatureSelector'
	public static val REFERENCE_MUST_NOT_HAVE_REFERENCE = 'referenceMustNotHaveReference'

	@Check
	def ensureInferableFeatureSelector(Feature feature) {
		// feature.type.eContainer is null, if type is not found in current scope
		if (feature.selector === null && feature.type.eContainer !== null && feature.type.noSelector) {
			error("Type " + feature.type.name + " does not specify a default selector.",
				feature, TypeDefinitionLanguagePackage.Literals.FEATURE__SELECTOR,
				NO_INFERABLE_FEATURE_SELECTOR
			);
		}
	}
	
	@Check
	def ensureFeatureSelectorTypeMatch(Feature feature) {
		if (feature.selector !== null && !(feature.type.selectorType as Class).isAssignableFrom(feature.selector.class)) {
			error(feature.type.displayName + " can not be recognized by " + feature.selector.messageSuffix + ".",
				feature, TypeDefinitionLanguagePackage.Literals.FEATURE__SELECTOR,
				INVALID_CUSTOM_FEATURE_SELECTOR
			);
		}
	}
	
	@Check
	def ensureReferencesHaveNoReferences(Feature feature) {
		if (feature.eContainer instanceof ReferenceType
			&& feature.type instanceof ReferenceType
		) {
			error("References are not capable of owning a reference themselves.",
				feature, TypeDefinitionLanguagePackage.Literals.FEATURE__SELECTOR,
				REFERENCE_MUST_NOT_HAVE_REFERENCE
			);
		}		
	}
	
	def dispatch messageSuffix(UrlPatternSelector urlPatternSelector) {
		return "an url pattern"
	}
	
	def dispatch messageSuffix(CssSelector cssSelector) {
		return "a css selector"
	}
	
	def dispatch displayName(ContentType contentType) {
		return "Content"
	}
	
	def dispatch displayName(ReferenceType referenceType) {
		return "Reference"
	}
	
	def dispatch selectorType(ContentType contentType) {
		return ContentSelector
	}
	
	def dispatch selectorType(ReferenceType contentType) {
		return ReferenceSelector
	}
	
	def dispatch noSelector(ContentType contentType) {
		return contentType.selector === null;
	}
	
	def dispatch noSelector(ReferenceType referenceType) {
		return referenceType.selector === null;
	}
	
	def dispatch name(ContentType contentType) {
		return contentType.name;
	}
	
	def dispatch name(ReferenceType referenceType) {
		return referenceType.name;
	}
}
