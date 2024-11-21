pageextension 50200 "BSBC Book Factbox" extends "BSB Book Factbox"
{
    layout
    {
        addlast(Content)
        {
            field("BSBC No. of Customer Likes"; Rec."BSBC No. of Customer Likes")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the No. of Customer Likes field.', Comment = '%';
                //[ ] Update dieses FlowFields noch in Ordnung bringen.
            }
        }
    }
}