namespace tabletest.db;
  entity RootEntity {
    key ID                                  : Integer       @Common.Label: 'ID';
        StringProperty                      : String        @Common.Label: 'String Property';
        IntegerProperty                     : Integer       @Common.Label: 'Integer Property';
        NumberProperty                      : Decimal(4, 2) @Common.Label: 'Number Property';
        BooleanProperty                     : Boolean       @Common.Label: 'Boolean Property';
        DateProperty                        : Date          @Common.Label: 'Date Property';
        TimeProperty                        : Time          @Common.Label: 'Time Property';
        PropertyWithUnit                    : Integer64     @Common.Label: 'Property With Unit'      @Measures.Unit       : 'Unit';
        PropertyWithCurrency                : Integer64     @Common.Label: 'Property With Currency'  @Measures.ISOCurrency: 'Currency';
        Unit                                : String;
        Currency                            : String;
        TextProperty                        : String;
        TextArrangementTextOnlyProperty     : String        @Common      : {
          Text           : 'TextProperty',
          TextArrangement: #TextOnly
        };
        TextArrangementTextLastProperty     : String        @Common      : {
          Text           : 'TextProperty',
          TextArrangement: #TextLast
        };
        TextArrangementTextFirstProperty    : String        @Common      : {
          Text           : 'TextProperty',
          TextArrangement: #TextFirst
        };
        TextArrangementTextSeparateProperty : String        @Common      : {
          Text           : 'TextProperty',
          TextArrangement: #TextSeparate
        };
        PropertyWithValueHelp               : String;        
        Criticality                         : Integer;
        dataFieldForAnnotationContact       : String;
        emailAddress                        : String        @Communication.IsEmailAddress;
        phoneNumber                         : String        @Communication.IsPhoneNumber;
        role                                : String;
        PostalCode                          : String;
        CityName                            : String;
        Country                             : String;
  }

