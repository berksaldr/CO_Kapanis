@AbapCatalog.sqlViewName: 'ZCO_FPERIOD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fiscal Period'
@Metadata.ignorePropagatedAnnotations: true
define view ZCO002_DD_FISCALPERIOD as select from I_FiscalYearPeriod
{
    key FiscalYear,
    key FiscalPeriod,
    FiscalYearPeriod
//    _FiscalYear,
//    _FiscalYearVariant,
//    _Text
} where FiscalYearVariant = 'SZ'
