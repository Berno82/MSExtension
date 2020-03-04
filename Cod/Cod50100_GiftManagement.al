codeunit 50100 "Gift Management"
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Quantity', false, false)]
    local procedure MyProcedure()
    begin

    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}