pageextension 50201 "BSBC Customer Card" extends "Customer Card"
{
    actions
    {
        addlast(navigation)
        {
            action("BSBC FavoriteVBookCard")
            {
                Caption = 'Book Card';
                ApplicationArea = All;
                Image = Card;
                Enabled = Rec."BSB Favorite Book No." <> '';
                ToolTip = 'Executes the Book Card action.';

                trigger OnAction()
                begin
                    Rec.ShowFavoriteBook();
                end;
            }
        }
        addlast(Promoted)
        {
            actionref("BSBC FavoriteVBookCard_Promoted"; "BSBC FavoriteVBookCard") { }
        }
    }
}