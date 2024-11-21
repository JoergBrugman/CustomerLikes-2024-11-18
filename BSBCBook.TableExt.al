tableextension 50200 "BSBC Book" extends "BSB Book"
{
    fields
    {
        field(50200; "BSBC No. of Customer Likes"; Integer)
        {
            Caption = 'No. of Customer Likes';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = count(Customer where("BSB Favorite Book No." = field("No.")));
        }
    }
}