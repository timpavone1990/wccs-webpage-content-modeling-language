/*
 * generated by Xtext 2.12.0
 */
package de.tgremple.siteanalyser.configuration.validation

import org.eclipse.xtext.validation.Check
import de.tgremple.siteanalyser.configuration.configurationLanguage.Property;
import de.tgremple.siteanalyser.configuration.configurationLanguage.ConfigurationLanguagePackage

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class ConfigurationLanguageValidator extends AbstractConfigurationLanguageValidator {
	
	public static val NO_CONTENT_SELECTOR = 'noContentSelector'

	@Check
	def checkPropertyOrContentTypeDefineSelector(Property property) {
		if (property.selector === null && property.type.selector === null) {
			error(property.type.name + " does not specify a default selector.",
				property, ConfigurationLanguagePackage.Literals.PROPERTY__SELECTOR,
				NO_CONTENT_SELECTOR
			);
		}
	}
}
