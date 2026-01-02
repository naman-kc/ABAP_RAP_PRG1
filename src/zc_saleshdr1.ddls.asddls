@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_SalesHdr1
  as projection on ZI_SalesHdr1 as _SalesHdr
{

  key Salesorderuuid,
      @Search.defaultSearchElement: true
      Salesorder,
      Salesordertype,
      Description,
      @Search.defaultSearchElement: true
      Salesorganization,
      @Search.defaultSearchElement: true
      Soldtoparty,
      Distributionchannel,
      Documentreason,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      Totalnetamount,
      Transactioncurrency,
      Createdbyuser,
      Creationat,
      Lastchangedbyuser,
      Lastchangedat,
      Locallastchangedat,
      /* Associations */
      _SalesItem : redirected to composition child ZC_SalesItm1
}
