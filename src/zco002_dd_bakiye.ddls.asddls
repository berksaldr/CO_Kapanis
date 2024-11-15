@AbapCatalog.sqlViewName: 'ZCO002_BAKIYE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Bakiye Data Definition'
@Metadata.ignorePropagatedAnnotations: true
define view ZCO002_DD_BAKIYE
  as select from zco002_t_bakiye
{
  key costcenter                  as Costcenter,
  key orderid                     as Orderid,
  key fiscalyearperiod            as Fiscalyearperiod,
  key companycode                 as Companycode,
      confirmationyieldquantity   as Confirmationyieldquantity,
      meinh                       as Meinh,
      amountincompanycodecurrency as Amountincompanycodecurrency,
      companycodecurrency         as Companycodecurrency,
      amountinglobalcurrency      as Amountinglobalcurrency,
      globalcurrency              as Globalcurrency,
      status                      as Status,
      accdocument                 as Accdocument,
      accdocument_eur             as AccdocumentEur,
      reverse_document            as ReverseDocument,
      reverse_document_eur        as ReverseDocumentEur
}
