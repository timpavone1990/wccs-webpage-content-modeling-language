/*
 * generated by Xtext 2.12.0
 */
grammar InternalConfigurationLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package de.tgremple.siteanalyser.configuration.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package de.tgremple.siteanalyser.configuration.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import de.tgremple.siteanalyser.configuration.services.ConfigurationLanguageGrammarAccess;

}

@parser::members {

 	private ConfigurationLanguageGrammarAccess grammarAccess;

    public InternalConfigurationLanguageParser(TokenStream input, ConfigurationLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "SiteStructure";
   	}

   	@Override
   	protected ConfigurationLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleSiteStructure
entryRuleSiteStructure returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSiteStructureRule()); }
	iv_ruleSiteStructure=ruleSiteStructure
	{ $current=$iv_ruleSiteStructure.current; }
	EOF;

// Rule SiteStructure
ruleSiteStructure returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSiteStructureAccess().getTypeDefinitionsTypeParserRuleCall_0());
			}
			lv_typeDefinitions_0_0=ruleType
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSiteStructureRule());
				}
				add(
					$current,
					"typeDefinitions",
					lv_typeDefinitions_0_0,
					"de.tgremple.siteanalyser.configuration.ConfigurationLanguage.Type");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleType
entryRuleType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeRule()); }
	iv_ruleType=ruleType
	{ $current=$iv_ruleType.current; }
	EOF;

// Rule Type
ruleType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getTypeAccess().getContentTypeParserRuleCall_0());
		}
		this_ContentType_0=ruleContentType
		{
			$current = $this_ContentType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getTypeAccess().getPageTypeParserRuleCall_1());
		}
		this_PageType_1=rulePageType
		{
			$current = $this_PageType_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleContentType
entryRuleContentType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getContentTypeRule()); }
	iv_ruleContentType=ruleContentType
	{ $current=$iv_ruleContentType.current; }
	EOF;

// Rule ContentType
ruleContentType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='content'
		{
			newLeafNode(otherlv_0, grammarAccess.getContentTypeAccess().getContentKeyword_0());
		}
		otherlv_1='type'
		{
			newLeafNode(otherlv_1, grammarAccess.getContentTypeAccess().getTypeKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getContentTypeAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getContentTypeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_3='is'
			{
				newLeafNode(otherlv_3, grammarAccess.getContentTypeAccess().getIsKeyword_3_0());
			}
			otherlv_4='recognized'
			{
				newLeafNode(otherlv_4, grammarAccess.getContentTypeAccess().getRecognizedKeyword_3_1());
			}
			otherlv_5='by'
			{
				newLeafNode(otherlv_5, grammarAccess.getContentTypeAccess().getByKeyword_3_2());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentTypeAccess().getSelectorContentSelectorParserRuleCall_3_3_0());
					}
					lv_selector_6_0=ruleContentSelector
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentTypeRule());
						}
						set(
							$current,
							"selector",
							lv_selector_6_0,
							"de.tgremple.siteanalyser.configuration.ConfigurationLanguage.ContentSelector");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		(
			otherlv_7='recognize'
			{
				newLeafNode(otherlv_7, grammarAccess.getContentTypeAccess().getRecognizeKeyword_4_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getContentTypeAccess().getPropertiesPropertyParserRuleCall_4_1_0());
					}
					lv_properties_8_0=ruleProperty
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getContentTypeRule());
						}
						add(
							$current,
							"properties",
							lv_properties_8_0,
							"de.tgremple.siteanalyser.configuration.ConfigurationLanguage.Property");
						afterParserOrEnumRuleCall();
					}
				)
			)*
		)?
	)
;

// Entry rule entryRulePageType
entryRulePageType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPageTypeRule()); }
	iv_rulePageType=rulePageType
	{ $current=$iv_rulePageType.current; }
	EOF;

// Rule PageType
rulePageType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='page'
		{
			newLeafNode(otherlv_0, grammarAccess.getPageTypeAccess().getPageKeyword_0());
		}
		otherlv_1='type'
		{
			newLeafNode(otherlv_1, grammarAccess.getPageTypeAccess().getTypeKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getPageTypeAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPageTypeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='is'
		{
			newLeafNode(otherlv_3, grammarAccess.getPageTypeAccess().getIsKeyword_3());
		}
		otherlv_4='recognized'
		{
			newLeafNode(otherlv_4, grammarAccess.getPageTypeAccess().getRecognizedKeyword_4());
		}
		otherlv_5='by'
		{
			newLeafNode(otherlv_5, grammarAccess.getPageTypeAccess().getByKeyword_5());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPageTypeAccess().getSelectorPageSelectorParserRuleCall_6_0());
				}
				lv_selector_6_0=rulePageSelector
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPageTypeRule());
					}
					set(
						$current,
						"selector",
						lv_selector_6_0,
						"de.tgremple.siteanalyser.configuration.ConfigurationLanguage.PageSelector");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_7='recognize'
			{
				newLeafNode(otherlv_7, grammarAccess.getPageTypeAccess().getRecognizeKeyword_7_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getPageTypeAccess().getPropertiesPropertyParserRuleCall_7_1_0());
					}
					lv_properties_8_0=ruleProperty
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPageTypeRule());
						}
						add(
							$current,
							"properties",
							lv_properties_8_0,
							"de.tgremple.siteanalyser.configuration.ConfigurationLanguage.Property");
						afterParserOrEnumRuleCall();
					}
				)
			)*
		)?
	)
;

// Entry rule entryRuleContentSelector
entryRuleContentSelector returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getContentSelectorRule()); }
	iv_ruleContentSelector=ruleContentSelector
	{ $current=$iv_ruleContentSelector.current; }
	EOF;

// Rule ContentSelector
ruleContentSelector returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getContentSelectorAccess().getCssSelectorParserRuleCall());
	}
	this_CssSelector_0=ruleCssSelector
	{
		$current = $this_CssSelector_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRulePageSelector
entryRulePageSelector returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPageSelectorRule()); }
	iv_rulePageSelector=rulePageSelector
	{ $current=$iv_rulePageSelector.current; }
	EOF;

// Rule PageSelector
rulePageSelector returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getPageSelectorAccess().getCssSelectorParserRuleCall_0());
		}
		this_CssSelector_0=ruleCssSelector
		{
			$current = $this_CssSelector_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getPageSelectorAccess().getUrlPatternSelectorParserRuleCall_1());
		}
		this_UrlPatternSelector_1=ruleUrlPatternSelector
		{
			$current = $this_UrlPatternSelector_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleCssSelector
entryRuleCssSelector returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCssSelectorRule()); }
	iv_ruleCssSelector=ruleCssSelector
	{ $current=$iv_ruleCssSelector.current; }
	EOF;

// Rule CssSelector
ruleCssSelector returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='css'
		{
			newLeafNode(otherlv_0, grammarAccess.getCssSelectorAccess().getCssKeyword_0());
		}
		(
			(
				lv_definition_1_0=RULE_STRING
				{
					newLeafNode(lv_definition_1_0, grammarAccess.getCssSelectorAccess().getDefinitionSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCssSelectorRule());
					}
					setWithLastConsumed(
						$current,
						"definition",
						lv_definition_1_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleUrlPatternSelector
entryRuleUrlPatternSelector returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getUrlPatternSelectorRule()); }
	iv_ruleUrlPatternSelector=ruleUrlPatternSelector
	{ $current=$iv_ruleUrlPatternSelector.current; }
	EOF;

// Rule UrlPatternSelector
ruleUrlPatternSelector returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='url'
		{
			newLeafNode(otherlv_0, grammarAccess.getUrlPatternSelectorAccess().getUrlKeyword_0());
		}
		otherlv_1='pattern'
		{
			newLeafNode(otherlv_1, grammarAccess.getUrlPatternSelectorAccess().getPatternKeyword_1());
		}
		(
			(
				lv_definition_2_0=RULE_STRING
				{
					newLeafNode(lv_definition_2_0, grammarAccess.getUrlPatternSelectorAccess().getDefinitionSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getUrlPatternSelectorRule());
					}
					setWithLastConsumed(
						$current,
						"definition",
						lv_definition_2_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleProperty
entryRuleProperty returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPropertyRule()); }
	iv_ruleProperty=ruleProperty
	{ $current=$iv_ruleProperty.current; }
	EOF;

// Rule Property
ruleProperty returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getPropertyAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPropertyRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1='as'
		{
			newLeafNode(otherlv_1, grammarAccess.getPropertyAccess().getAsKeyword_1());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPropertyRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getPropertyAccess().getTypeContentTypeCrossReference_2_0());
				}
			)
		)
		(
			otherlv_3='by'
			{
				newLeafNode(otherlv_3, grammarAccess.getPropertyAccess().getByKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getPropertyAccess().getSelectorContentSelectorParserRuleCall_3_1_0());
					}
					lv_selector_4_0=ruleContentSelector
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPropertyRule());
						}
						set(
							$current,
							"selector",
							lv_selector_4_0,
							"de.tgremple.siteanalyser.configuration.ConfigurationLanguage.ContentSelector");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
