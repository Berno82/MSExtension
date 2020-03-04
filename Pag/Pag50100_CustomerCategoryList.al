page 50100 "Customer Category List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Customer Category";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Code)
                {
                    Caption = 'No.';
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = All;
                }
                field(FreeGift; FreeGiftsAvailable)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}