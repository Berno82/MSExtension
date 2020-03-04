table 50101 "Customer Category"
{
    Caption = 'Customer Category';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; Default; Boolean)
        {
            Caption = 'Default';
            DataClassification = CustomerContent;
        }
        field(4; EnableNewsletter; enum NewsletterType)
        {
            DataClassification = CustomerContent;
        }
        field(5; FreeGiftsAvailable; Boolean)
        {
            Caption = 'Free Gifts Available';
            DataClassification = CustomerContent;
        }
        field(6; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = CustomerContent;
        }
        field(10; TotalcustomersForCategory; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count (Customer where("Customer Category Code" = field(Code)));
        }

    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
        key(K2; Description)
        {
            Clustered = false;
        }
    }

    procedure GetSalesAmount(): Decimal
    var
        CustomerCategoryMgt: Codeunit "Customer Category Mgt";
    begin
        exit(CustomerCategoryMgt.GetsalesAmount(Rec.Code));
    end;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}