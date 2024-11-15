@EndUserText.label: 'Bakiye Hesap Bakım Tablosu Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'BakiyeHesapBakMTAll'
  }
}
define root view entity ZI_BakiyeHesapBakMTabl_S
  as select from I_Language
    left outer join I_CstmBizConfignLastChgd on I_CstmBizConfignLastChgd.ViewEntityName = 'ZI_BAKIYEHESAPBAKMTABL'
  composition [0..*] of ZI_BakiyeHesapBakMTabl as _BakiyeHesapBakMTabl
{
  @UI.facet: [ {
    id: 'ZI_BakiyeHesapBakMTabl', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'Bakiye Hesap Bakım Tablosu', 
    position: 1 , 
    targetElement: '_BakiyeHesapBakMTabl'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _BakiyeHesapBakMTabl,
  @UI.hidden: true
  I_CstmBizConfignLastChgd.LastChangedDateTime as LastChangedAtMax
  
}
where I_Language.Language = $session.system_language
