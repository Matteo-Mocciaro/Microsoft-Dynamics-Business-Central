/* 9) Creare la pagina di tipo List "Student List", editabile, con caption "Lista Studenti" e contenente tutti i campi della 
tabella "Student". Inserire anche la proprietà di pagina DelayedInsert = true; */
page 50101 "Student List"
{
    Caption = 'Lista Studenti';
    PageType = List;
    ApplicationArea = All;
    SourceTable = Student;
    Editable = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Fiscal Code"; Rec."Fiscal Code")
                {
                    ApplicationArea = All;

                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field("Birth Date"; Rec."Birth Date")
                {
                    ApplicationArea = All;
                }
                field("Enrolled Course"; Rec."Enrolled Course")
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
