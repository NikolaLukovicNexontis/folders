using {
    Directories as directories,
    Allocations as allocations,
    Derivations as derivations,
    ModelTables as modelTables,
    Functions   as functions,
    Users       as users
} from '../db/schema';

@path : 'service/directories'
service Service {
    @odata.draft.enabled
    entity Directories as projection on directories order by
        sequence asc;
}

@path : 'service/functions'
service FunctionService {
    @odata.draft.enabled
    entity Functions   as projection on functions actions {
        @title : 'onNav'
        action onNav();
        @title : 'Activate'
        action activate();
        @title : 'Deactivate'
        action deactivate();
        @title : 'decrementUserCount'
        function decrementUserCount() returns Integer;
    };

    function incrementUserCount() returns Integer;

    @odata.draft.enabled
    entity Users       as projection on users actions {
        @title : 'incrementUserCount'
        action incrementUserCount() returns Integer;
        @title : 'decrementUserCount'
        action decrementUserCount() returns Integer;
    }


    @odata.draft.enabled
    entity Allocations as projection on allocations;

    @odata.draft.enabled
    entity Derivations as projection on derivations;

    @odata.draft.enabled
    entity ModelTables as projection on modelTables;
}
