/*
 * generated by Xtext 2.12.0
 */
package de.koalaworks.wcts

import org.eclipse.xtext.scoping.impl.ImportUriGlobalScopeProvider

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class TypeDefinitionLanguageRuntimeModule extends AbstractTypeDefinitionLanguageRuntimeModule {

	override bindIGlobalScopeProvider() {
		return typeof(ImportUriGlobalScopeProvider);
	}
}
