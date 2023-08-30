using mysrdemo as service from '../../srv/student.service';
/*
annotate service.StudentSRV with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                //$Type : 'UI.DataField',
                Label : 'E-mail',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'First Name',
                Value : first_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last Name',
                Value : last_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date (sign up)',
                Value : date_sign_up,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
*/

annotate  service.StudentSRV with @(
    UI: {
    //SelectionFields : [],     
    
    LineItem: [
        {
           Label:'E-mail',
           Value:email,     
        },
        {
           Label:'Name',
           Value:first_name,
        },
        {
           Label:'Last Name',
           Value:last_name,     
        },
        {
           Label:'Date',
           Value:date_sign_up,     
        }
    ],
   HeaderInfo: {
      TypeName: 'email', TypeNamePlural: 'Emails',
      Title: { Value: email },
      Description: { Value: first_name }
    },
    }
);