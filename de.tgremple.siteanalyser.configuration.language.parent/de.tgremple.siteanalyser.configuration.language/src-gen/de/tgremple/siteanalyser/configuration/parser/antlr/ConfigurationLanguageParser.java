/*
 * generated by Xtext 2.12.0
 */
package de.tgremple.siteanalyser.configuration.parser.antlr;

import com.google.inject.Inject;
import de.tgremple.siteanalyser.configuration.parser.antlr.internal.InternalConfigurationLanguageParser;
import de.tgremple.siteanalyser.configuration.services.ConfigurationLanguageGrammarAccess;
import org.eclipse.xtext.parser.antlr.AbstractAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;

public class ConfigurationLanguageParser extends AbstractAntlrParser {

	@Inject
	private ConfigurationLanguageGrammarAccess grammarAccess;

	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	

	@Override
	protected InternalConfigurationLanguageParser createParser(XtextTokenStream stream) {
		return new InternalConfigurationLanguageParser(stream, getGrammarAccess());
	}

	@Override 
	protected String getDefaultRuleName() {
		return "SiteStructure";
	}

	public ConfigurationLanguageGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(ConfigurationLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
