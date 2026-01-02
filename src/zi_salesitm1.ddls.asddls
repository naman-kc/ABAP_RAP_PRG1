@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item CDS view'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SalesItm1
  as select from zsalesitem1
  association to parent ZI_SalesHdr1 as _SalesHdr on $projection.Salesorderuuid = _SalesHdr.Salesorderuuid
{
  key salesitemuuid          as Salesitemuuid,
      salesorderuuid         as Salesorderuuid,
      salesorderitem         as Salesorderitem,
      salesorderitemcategory as Salesorderitemcategory,
      salesorderitemtext     as Salesorderitemtext,
      material               as Material,
      plant                  as Plant,
      @Semantics.quantity.unitOfMeasure: 'Orderquantityunit'
      orderquantity          as Orderquantity,
      orderquantityunit      as Orderquantityunit,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      netamount              as Netamount,
      transactioncurrency    as Transactioncurrency,
      createdbyuser          as Createdbyuser,
      creationat             as Creationat,
      lastchangedbyuser      as Lastchangedbyuser,
      lastchangedat          as Lastchangedat,
      locallastchangedat     as Locallastchangedat,
       _SalesHdr
}
