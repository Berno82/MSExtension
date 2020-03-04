tableextension 50100 "DXCE CustomerCategoryExtension" extends Customer
{
    fields
    {
        field(50100; "Customer Category Code"; Code[20])
        {
            TableRelation = "Customer Category".Code;
            Caption = 'Customer Category Code';
            DataClassification = CustomerContent;
        }
    }

    var
        myInt: Integer;
}