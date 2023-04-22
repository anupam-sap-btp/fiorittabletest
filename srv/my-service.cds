using { tabletest.db as db } from '../db/schema';

service MyService {
  @odata.draft.enabled
  entity RootEntity as projection on db.RootEntity;

  annotate RootEntity with @(UI: {LineItem: {
    ![@UI.Criticality]: Criticality,
    $value            : [
      {Value: ID},
      {Value: IntegerProperty},
      {Value: NumberProperty},
      {
        $Type : 'UI.DataFieldForAnnotation',
        Target: '@Communication.Contact',
        Label : 'Property With Contact annotation'
      },
      {Value: StringProperty},
      {Value: BooleanProperty},
      {Value: TextArrangementTextFirstProperty}
    ]
  }});

  annotate RootEntity with @(
    Communication.Contact: {
      fn   : dataFieldForAnnotationContact,
      role : role,
      email: [{
        type   : #work,
        address: emailAddress
      }],
      tel  : [{
        type: #fax,
        uri : phoneNumber
      }],
      adr  : [{
        type    : #work,
        code    : PostalCode,
        country : Country,
        locality: CityName
      }]
    },
    UI                   : {HeaderInfo: {Title: {TypeImageUrl: 'sap-icon://add-contact'}}}
  );


  
}
