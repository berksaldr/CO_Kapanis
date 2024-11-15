@EndUserText.label: 'Kapanış Kalan Bakiye Custom Entity'
@ObjectModel.query.implementedBy:'ABAP:ZCO002_CL_BAKIYE_DAGITMA'
@Search.searchable: true
@Metadata.allowExtensions: true
@UI:{
headerInfo:{
                typeNamePlural: 'Kapanış Kalan Bakiye',
                typeName: 'Kapanış Kalan Bakiye',
                title:{ type: #STANDARD, label: 'Kapanış Kalan Bakiye', value: 'CostCenter' }
           }
}
define root custom entity zco002_cev_kalan_bakiye
{

      @UI.facet                   : [{ id: 'prod_id',
                    purpose       : #STANDARD,
                    type          : #IDENTIFICATION_REFERENCE,
                    label         : 'ID',
                    position      : 10}]
      @UI                         : { lineItem      : [{ position: 10, label: 'Masraf Yeri', importance: #HIGH },
                               { type: #FOR_ACTION, dataAction: 'btnRecord' , label: 'Log Kayıt', inline: false }
                               ],
             identification       : [{ position: 10, label: 'ID' }
             ]
      }
      @Search.defaultSearchElement: true
      @Consumption.filter.hidden  : true
  key CostCenter                  : kostl;
      @UI                         : { lineItem      : [{ position: 20, label: 'Sipariş No', importance: #HIGH }],
             identification       : [{ position: 20, label: 'Sipariş No' }]
      }
      @Consumption.filter.hidden  : true
  key OrderId                     : aufnr;

      @UI                         : { lineItem      : [{ position: 30, label: 'Periyod', importance: #HIGH }],
             identification       : [{ position: 30, label: 'Periyod' }], selectionField: [{ position: 10 }]
      }
      @Semantics.fiscal.period: true
      @Consumption.valueHelpDefinition: [{ entity.name: 'ZCO002_DD_FISCALPERIOD',entity.element: 'FiscalYearPeriod' }]
      @Consumption.filter.mandatory: true
      @Consumption.filter.selectionType: #SINGLE

  key FiscalYearPeriod            : fis_jahrper_conv;

      @UI                         : { lineItem      : [{ position: 40, label: 'Şirket Kodu', importance: #HIGH }],
             identification       : [{ position: 40, label: 'Şirket Kodu' }], selectionField: [{ position: 10 }]
      }
      @Consumption.valueHelpDefinition: [{ entity.name: 'I_CompanyCodeVH',entity.element: 'CompanyCode' }]
      @Consumption.filter.mandatory: true
      @Consumption.filter.selectionType: #SINGLE
  key CompanyCode                 : bukrs;

      @UI                         : { lineItem      : [{ position: 50, label: 'Üretim Miktarı', importance: #HIGH }],
             identification       : [{ position: 50, label: 'Üretim Miktarı' }]
      }
      @Semantics.quantity.unitOfMeasure : 'meinh'
      @Consumption.filter.hidden  : true
      ConfirmationYieldQuantity   : menge_d;

      @UI                         : { lineItem      : [{ position: 60, label: 'Birim', importance: #HIGH }],
             identification       : [{ position: 60, label: 'Birim' }]
      }
      @Consumption.filter.hidden  : true
      Meinh                       : meinh;

      @UI                         : { lineItem      : [{ position: 70, label: 'Siparişe Kaydedilecek Tutar TRY', importance: #HIGH }],
             identification       : [{ position: 70, label: 'Siparişe Kaydedilecek Tutar TRY' }]
      }
      @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
      @Consumption.filter.hidden  : true
      AmountInCompanyCodeCurrency : zco002_de_fis_hsl;

      @UI                         : { lineItem      : [{ position: 80, label: 'Şirket Kodu Para Birimi', importance: #HIGH }],
             identification       : [{ position: 80, label: 'Şirket Kodu Para Birimi' }]
      }
      @Consumption.filter.hidden  : true
      @UI.hidden: true
      CompanyCodeCurrency         : displaycurrency;

      @UI                         : { lineItem      : [{ position: 90, label: 'Siparişe Kaydedilecek Tutar EUR', importance: #HIGH }],
             identification       : [{ position: 90, label: 'Siparişe Kaydedilecek Tutar EUR' }]
      }
      @Semantics.amount.currencyCode: 'GlobalCurrency'
      @Consumption.filter.hidden  : true
      AmountInGlobalCurrency      : zco002_de_fis_hsl;

      @UI                         : { lineItem      : [{ position: 100, label: 'Grup Para Birimi', importance: #HIGH }],
             identification       : [{ position: 100, label: 'Grup Para Birimi' }]
      }
      @Consumption.filter.hidden  : true
      @UI.hidden: true
      GlobalCurrency              : displaycurrency;

}
