@EndUserText.label: 'Log Kayıt Action Parametre'
@Metadata.allowExtensions: true
define root abstract entity zco002_dd_log_kayit_param
{
  @Consumption.valueHelpDefinition: [{ entity.name: 'I_CompanyCodeVH',entity.element: 'CompanyCode' }]
  companycode      : bukrs;
  @Consumption.valueHelpDefinition: [{ entity.name: 'ZCO002_DD_FISCALPERIOD',entity.element: 'FiscalYearPeriod' }]
  FiscalYearPeriod : fis_jahrper_conv;

}
