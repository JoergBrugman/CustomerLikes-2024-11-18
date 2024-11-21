codeunit 50200 "BSBC Subscriber Store"
{
    var
        OnBeforeDeleteBookErr: Label 'You are not allowed to delete %1 %2 because it is liked by one or more customer(s)', Comment = 'de-DE=Sie dürfen %1 %2 nicht löschen, da es bei Debitor(en) verwendet wird';

    [EventSubscriber(ObjectType::Table, Database::"BSB Book", OnBeforeOnDelete, '', false, false)]
    local procedure "BSB Book_OnBeforeOnDelete"(var Rec: Record "BSB Book"; var xRec: Record "BSB Book"; var IsHandled: Boolean)
    var
        Customer: Record Customer;
    begin
        if IsHandled then
            exit;
        Customer.SetCurrentKey("BSB Favorite Book No.");
        Customer.SetRange("BSB Favorite Book No.", Rec."No.");
        if not Customer.IsEmpty then
            Error(OnBeforeDeleteBookErr, Rec."No.", Rec.Description);
        IsHandled := true;
    end;

}