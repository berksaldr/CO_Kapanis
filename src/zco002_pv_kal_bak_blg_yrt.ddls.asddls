@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kapanış Kalan Bakiye Belge Yaratma Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCO002_PV_KAL_BAK_BLG_YRT
  provider contract transactional_query
  as projection on ZCO002_DD_KAL_BAK_BLG_YRT
{
  key Costcenter,
  key Orderid,
  key Fiscalyearperiod,
  key Companycode,
      @Semantics.quantity.unitOfMeasure : 'meinh'
      Confirmationyieldquantity,
      Meinh,
      @Semantics.amount.currencyCode : 'companycodecurrency'
      Amountincompanycodecurrency,
      Companycodecurrency,
      @Semantics.amount.currencyCode : 'globalcurrency'
      Amountinglobalcurrency,
      Globalcurrency,
      Status,
      Accdocument,
      AccdocumentEur,
      ReverseDocument,
      ReverseDocumentEur
}
