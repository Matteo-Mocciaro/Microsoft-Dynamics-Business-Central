/* 12) Creare la pagina di tipo Card "Module Card" contenente tutti i campi della tabella Module, devono essere divisi in 
due gruppi: 
- Gruppo General: Code, Course No., Vendor No. Vendor Name
- Gruppo Data: Name, Hour Number, Hourly Cost, Total Cost
Collegare la pagina "Module Card" alla "Module List". */
page 50103 "Module Card"
{
    Caption = 'Module Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Module;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Course No."; Rec."Course No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                }
            }
            group(Data)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Hour Number"; Rec."Hour Number")
                {
                    ApplicationArea = All;
                }
                field("Hourly Cost"; Rec."Hourly Cost")
                {
                    ApplicationArea = All;
                }
                field("Total Cost"; Rec."Total Cost")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}