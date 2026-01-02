@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_SalesItm1
  as projection on ZI_SalesItm1 as _SalesItem
{
  key Salesitemuuid,
      Salesorderuuid,
      Salesorderitem,
      Salesorderitemcategory,
      Salesorderitemtext,
      Material,
      Plant,
      @Semantics.quantity.unitOfMeasure: 'Orderquantityunit'
      Orderquantity,
      Orderquantityunit,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      Netamount,
      Transactioncurrency,
      Createdbyuser,
      Creationat,
      Lastchangedbyuser,
      Lastchangedat,
      Locallastchangedat,
      /* Associations */
      _SalesHdr : redirected to parent ZC_SalesHdr1
}
