/* 8) Creare la pagina di tipo List "Course List", apribile da menu, editabile,
con caption "Lista Corsi" e contenente tutti i campi della tabella "Course". 
10) Nella pagina "Course List" inserire un pulsante nel menu "Navigation", con caption "Mostra Lista Studenti", 
che apra la lista degli studenti collegati al corso.
13) Nella pagina "Course List" inserire un pulsante nel menu "Navigation", con caption "Mostra Lista Moduli", 
che apra la lista dei moduli collegati al corso.
*/

page 50100 "Course List"
{
    Caption = 'Lista Corsi';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Students Number"; Rec."Students Number")
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
        area(Navigation)
        {
            action(ShowStudentList)
            {
                Caption = 'Mostra Lista Studenti';
                ApplicationArea = All;
                Image = ShowList;
                RunObject = page "Student List";
                RunPageLink = "Enrolled Course" = field("No.");

                trigger OnAction()
                begin

                end;
            }
            action(ShowModuleList)
            {
                Caption = 'Mostra Lista Moduli';
                ApplicationArea = All;
                Image = ShowList;
                RunObject = page "Module List";
                RunPageLink = "Course No." = field("No.");
            }
        }
    }
}