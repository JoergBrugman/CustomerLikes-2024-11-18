codeunit 50201 "BSBC Book Type eBook Impl." implements "BSB Book Type Process"
{
    procedure StartDeployBook()
    begin
        Message('PDF auf Kundenportal bereitstellen');
    end;

    procedure StartDeliverBook()
    begin
        Message('Download-Mail an Kunden senden');
    end;
}