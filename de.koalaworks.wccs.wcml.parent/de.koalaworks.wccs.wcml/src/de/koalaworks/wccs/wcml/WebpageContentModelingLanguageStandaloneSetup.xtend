/*
 * generated by Xtext 2.12.0
 */
package de.koalaworks.wccs.wcml


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class WebpageContentModelingLanguageStandaloneSetup extends WebpageContentModelingLanguageStandaloneSetupGenerated {

	def static void doSetup() {
		new WebpageContentModelingLanguageStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
