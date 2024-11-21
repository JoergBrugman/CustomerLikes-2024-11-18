enumextension 50200 "BSBC Book Type" extends "BSB Book Type"
{
    value(50200; eBook)
    {
        Caption = 'E-Book';
        Implementation = "BSB Book Type Process" = "BSBC Book Type eBook Impl.";
    }
}