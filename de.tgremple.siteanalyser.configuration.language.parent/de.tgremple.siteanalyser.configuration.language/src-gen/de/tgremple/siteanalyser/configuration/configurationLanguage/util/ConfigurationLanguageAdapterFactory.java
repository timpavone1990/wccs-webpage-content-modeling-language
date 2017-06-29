/**
 * generated by Xtext 2.12.0
 */
package de.tgremple.siteanalyser.configuration.configurationLanguage.util;

import de.tgremple.siteanalyser.configuration.configurationLanguage.*;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;

import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * The <b>Adapter Factory</b> for the model.
 * It provides an adapter <code>createXXX</code> method for each class of the model.
 * <!-- end-user-doc -->
 * @see de.tgremple.siteanalyser.configuration.configurationLanguage.ConfigurationLanguagePackage
 * @generated
 */
public class ConfigurationLanguageAdapterFactory extends AdapterFactoryImpl
{
  /**
   * The cached model package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected static ConfigurationLanguagePackage modelPackage;

  /**
   * Creates an instance of the adapter factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ConfigurationLanguageAdapterFactory()
  {
    if (modelPackage == null)
    {
      modelPackage = ConfigurationLanguagePackage.eINSTANCE;
    }
  }

  /**
   * Returns whether this factory is applicable for the type of the object.
   * <!-- begin-user-doc -->
   * This implementation returns <code>true</code> if the object is either the model's package or is an instance object of the model.
   * <!-- end-user-doc -->
   * @return whether this factory is applicable for the type of the object.
   * @generated
   */
  @Override
  public boolean isFactoryForType(Object object)
  {
    if (object == modelPackage)
    {
      return true;
    }
    if (object instanceof EObject)
    {
      return ((EObject)object).eClass().getEPackage() == modelPackage;
    }
    return false;
  }

  /**
   * The switch that delegates to the <code>createXXX</code> methods.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected ConfigurationLanguageSwitch<Adapter> modelSwitch =
    new ConfigurationLanguageSwitch<Adapter>()
    {
      @Override
      public Adapter caseSiteStructure(SiteStructure object)
      {
        return createSiteStructureAdapter();
      }
      @Override
      public Adapter caseType(Type object)
      {
        return createTypeAdapter();
      }
      @Override
      public Adapter caseContentType(ContentType object)
      {
        return createContentTypeAdapter();
      }
      @Override
      public Adapter caseReferenceType(ReferenceType object)
      {
        return createReferenceTypeAdapter();
      }
      @Override
      public Adapter casePageType(PageType object)
      {
        return createPageTypeAdapter();
      }
      @Override
      public Adapter caseContentSelector(ContentSelector object)
      {
        return createContentSelectorAdapter();
      }
      @Override
      public Adapter casePageSelector(PageSelector object)
      {
        return createPageSelectorAdapter();
      }
      @Override
      public Adapter caseCssSelector(CssSelector object)
      {
        return createCssSelectorAdapter();
      }
      @Override
      public Adapter caseUrlPatternSelector(UrlPatternSelector object)
      {
        return createUrlPatternSelectorAdapter();
      }
      @Override
      public Adapter caseProperty(Property object)
      {
        return createPropertyAdapter();
      }
      @Override
      public Adapter defaultCase(EObject object)
      {
        return createEObjectAdapter();
      }
    };

  /**
   * Creates an adapter for the <code>target</code>.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param target the object to adapt.
   * @return the adapter for the <code>target</code>.
   * @generated
   */
  @Override
  public Adapter createAdapter(Notifier target)
  {
    return modelSwitch.doSwitch((EObject)target);
  }


  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.SiteStructure <em>Site Structure</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.SiteStructure
   * @generated
   */
  public Adapter createSiteStructureAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.Type <em>Type</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.Type
   * @generated
   */
  public Adapter createTypeAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.ContentType <em>Content Type</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.ContentType
   * @generated
   */
  public Adapter createContentTypeAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.ReferenceType <em>Reference Type</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.ReferenceType
   * @generated
   */
  public Adapter createReferenceTypeAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.PageType <em>Page Type</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.PageType
   * @generated
   */
  public Adapter createPageTypeAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.ContentSelector <em>Content Selector</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.ContentSelector
   * @generated
   */
  public Adapter createContentSelectorAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.PageSelector <em>Page Selector</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.PageSelector
   * @generated
   */
  public Adapter createPageSelectorAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.CssSelector <em>Css Selector</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.CssSelector
   * @generated
   */
  public Adapter createCssSelectorAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.UrlPatternSelector <em>Url Pattern Selector</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.UrlPatternSelector
   * @generated
   */
  public Adapter createUrlPatternSelectorAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for an object of class '{@link de.tgremple.siteanalyser.configuration.configurationLanguage.Property <em>Property</em>}'.
   * <!-- begin-user-doc -->
   * This default implementation returns null so that we can easily ignore cases;
   * it's useful to ignore a case when inheritance will catch all the cases anyway.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @see de.tgremple.siteanalyser.configuration.configurationLanguage.Property
   * @generated
   */
  public Adapter createPropertyAdapter()
  {
    return null;
  }

  /**
   * Creates a new adapter for the default case.
   * <!-- begin-user-doc -->
   * This default implementation returns null.
   * <!-- end-user-doc -->
   * @return the new adapter.
   * @generated
   */
  public Adapter createEObjectAdapter()
  {
    return null;
  }

} //ConfigurationLanguageAdapterFactory
