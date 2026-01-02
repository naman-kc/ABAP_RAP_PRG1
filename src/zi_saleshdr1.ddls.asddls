@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header CDS view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_SalesHdr1
  as select from zsaleshdr1
  composition [0..*] of ZI_SalesItm1 as _SalesItem
{
  key salesorderuuid      as Salesorderuuid,
      salesorder          as Salesorder,
      salesordertype      as Salesordertype,
      description         as Description,
      salesorganization   as Salesorganization,
      soldtoparty         as Soldtoparty,
      distributionchannel as Distributionchannel,
      documentreason      as Documentreason,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      totalnetamount      as Totalnetamount,
      transactioncurrency as Transactioncurrency,
      @Semantics.user.createdBy: true
      createdbyuser       as Createdbyuser,
      @Semantics.systemDateTime.createdAt: true
      creationat          as Creationat,
      @Semantics.user.lastChangedBy: true
      lastchangedbyuser   as Lastchangedbyuser,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat       as Lastchangedat,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat  as Locallastchangedat,
      _SalesItem
}
