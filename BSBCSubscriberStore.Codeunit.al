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

    [EventSubscriber(ObjectType::Page, Page::"BSB Book List", OnBeforeHandleType, '', false, false)]
    local procedure "BSB Book List_OnBeforeHandleType"(Rec: Record "BSB Book"; var IsHandled: Boolean)
    begin
        if IsHandled then
            exit;

        if Rec.Type = "BSB Book Type"::eBook then begin
            Step1();
            Step2();
            IsHandled := true;
        end;

    end;

    local procedure Step1()
    begin
        Message('Auf Kundenportal bereitstellen');
    end;

    local procedure Step2()
    begin
        Message('Mail an den Kunden für Download');
    end;



}