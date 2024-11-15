@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kapanış Kalan Bakiye Belge Yaratma Data Definition'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCO002_DD_KAL_BAK_BLG_YRT
  as select from zco002_t_bakiye
{
  key costcenter                  as Costcenter,
  key orderid                     as Orderid,
  key fiscalyearperiod            as Fiscalyearperiod,
  key companycode                 as Companycode,
      @Semantics.quantity.unitOfMeasure : 'meinh'
      confirmationyieldquantity   as Confirmationyieldquantity,
      meinh                       as Meinh,
      @Semantics.amount.currencyCode : 'companycodecurrency'
      amountincompanycodecurrency as Amountincompanycodecurrency,
      companycodecurrency         as Companycodecurrency,
      @Semantics.amount.currencyCode : 'globalcurrency'
      amountinglobalcurrency      as Amountinglobalcurrency,
      globalcurrency              as Globalcurrency,
      status                      as Status,
      accdocument                 as Accdocument,
      accdocument_eur             as AccdocumentEur,
      reverse_document            as ReverseDocument,
      reverse_document_eur        as ReverseDocumentEur
}
