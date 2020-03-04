pageextension 50100 "DXC CustomerCategory" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Customer Category"; "Customer Category Code")
            {
                ApplicationArea = All;
                ToolTip = 'Customer category code';
            }
        }
    }

    actions
    {
        addlast("F&unctions")
        {
            action("Assign default Category")
            {
                Image = ChangeCustomer;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Assign Default Category';
                ToolTip = 'Assigns a Default Category to the current customer';
            }
        }
    }

    var
        myInt: Integer;
}