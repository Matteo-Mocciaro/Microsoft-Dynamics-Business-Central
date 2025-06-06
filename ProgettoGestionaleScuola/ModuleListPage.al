/* 11) Creare la pagina di tipo List "Module List", apribile da menu, NON editabile, con caption "Lista Moduli" 
e contenente i seguenti campi della tabella Module: Code, Course No., Name, Total Cost */
page 50102 "Module List"
{
    Caption = 'Lista Moduli';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Module;
    Editable = false;
    CardPageId = "Module Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }
                field("Course No."; Rec."Course No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Total Cost"; Rec."Total Cost")
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

                trigger OnAction()
                begin

                end;
            }
        }
    }
}