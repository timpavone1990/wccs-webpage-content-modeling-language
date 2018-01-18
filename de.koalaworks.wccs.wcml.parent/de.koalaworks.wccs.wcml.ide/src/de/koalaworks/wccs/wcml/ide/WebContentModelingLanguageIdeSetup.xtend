/*
 * generated by Xtext 2.12.0
 */
package de.koalaworks.wccs.wcml.ide

import com.google.inject.Guice
import de.koalaworks.wccs.wcml.WebContentModelingLanguageRuntimeModule
import de.koalaworks.wccs.wcml.WebContentModelingLanguageStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class WebContentModelingLanguageIdeSetup extends WebContentModelingLanguageStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new WebContentModelingLanguageRuntimeModule, new WebContentModelingLanguageIdeModule))
	}
	
}
