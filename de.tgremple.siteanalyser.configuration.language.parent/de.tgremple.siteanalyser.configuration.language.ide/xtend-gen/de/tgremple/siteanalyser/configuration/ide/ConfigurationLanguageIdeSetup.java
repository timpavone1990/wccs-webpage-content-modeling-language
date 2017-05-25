/**
 * generated by Xtext 2.12.0
 */
package de.tgremple.siteanalyser.configuration.ide;

import com.google.inject.Guice;
import com.google.inject.Injector;
import de.tgremple.siteanalyser.configuration.ConfigurationLanguageRuntimeModule;
import de.tgremple.siteanalyser.configuration.ConfigurationLanguageStandaloneSetup;
import de.tgremple.siteanalyser.configuration.ide.ConfigurationLanguageIdeModule;
import org.eclipse.xtext.util.Modules2;

/**
 * Initialization support for running Xtext languages as language servers.
 */
@SuppressWarnings("all")
public class ConfigurationLanguageIdeSetup extends ConfigurationLanguageStandaloneSetup {
  @Override
  public Injector createInjector() {
    ConfigurationLanguageRuntimeModule _configurationLanguageRuntimeModule = new ConfigurationLanguageRuntimeModule();
    ConfigurationLanguageIdeModule _configurationLanguageIdeModule = new ConfigurationLanguageIdeModule();
    return Guice.createInjector(Modules2.mixin(_configurationLanguageRuntimeModule, _configurationLanguageIdeModule));
  }
}
