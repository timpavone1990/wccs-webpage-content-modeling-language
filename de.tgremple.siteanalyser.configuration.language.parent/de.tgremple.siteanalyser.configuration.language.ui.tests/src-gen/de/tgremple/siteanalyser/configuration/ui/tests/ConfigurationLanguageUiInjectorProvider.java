/*
 * generated by Xtext 2.12.0
 */
package de.tgremple.siteanalyser.configuration.ui.tests;

import com.google.inject.Injector;
import de.tgremple.siteanalyser.configuration.language.ui.internal.LanguageActivator;
import org.eclipse.xtext.testing.IInjectorProvider;

public class ConfigurationLanguageUiInjectorProvider implements IInjectorProvider {

	@Override
	public Injector getInjector() {
		return LanguageActivator.getInstance().getInjector("de.tgremple.siteanalyser.configuration.ConfigurationLanguage");
	}

}
