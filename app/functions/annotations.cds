using FunctionService as service from '../../srv/service';

annotate service.Functions with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : type,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            }
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'General Information',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Functions with @(UI.SelectionFields : [directory_ID, ]);

annotate service.Functions with {
    directory @Common.Label : 'directory_ID'
};

annotate service.Functions with {
    directory @Common.Text : directory.description
};

annotate service.Functions with {
    documentation @UI.MultiLineText : true
};

annotate service.Functions with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataFieldForAction',
            Action: 'FunctionService.onNav',
            Label: 'Navigation'
            
        },
        {
           $Type : 'UI.DataField',
           Value: type,
           Label: 'Type'
        },
        {
           $Type : 'UI.DataField',
           Value: description,
           Label: 'Description'
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'FunctionService.deactivate',
            Label : 'Deactivate',
        },
    ]
);
