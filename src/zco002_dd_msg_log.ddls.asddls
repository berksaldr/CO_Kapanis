@AbapCatalog.sqlViewName: 'ZCO_MSG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Mesaj Log Tablosu'
@Metadata.ignorePropagatedAnnotations: true
define view ZCO002_DD_MSG_LOG
  as select from zco002_t_msg_log
{
  key log_uuid         as LogUuid,
  key costcenter       as Costcenter,
  key orderid          as Orderid,
  key fiscalyearperiod as Fiscalyearperiod,
  key companycode      as Companycode,
      message          as Message,
      created_at       as CreatedAt
}
