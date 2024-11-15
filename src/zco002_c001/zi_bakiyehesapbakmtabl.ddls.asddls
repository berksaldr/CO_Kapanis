@EndUserText.label: 'Bakiye Hesap Bakım Tablosu'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZI_BakiyeHesapBakMTabl
  as select from ZCO002_T_BKY_ACC
  association to parent ZI_BakiyeHesapBakMTabl_S as _BakiyeHesapBakMTAll on $projection.SingletonID = _BakiyeHesapBakMTAll.SingletonID
{
  key SAKNR_LOW as SaknrLow,
  key SAKNR_HIGH as SaknrHigh,
  @Consumption.hidden: true
  1 as SingletonID,
  _BakiyeHesapBakMTAll
  
}
