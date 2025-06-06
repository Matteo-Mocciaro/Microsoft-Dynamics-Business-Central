/* Estendere la pagina "Vendor Card" aggiungendo un Gruppo "Professor" con i campi: Prof. Fiscal Code, Prof. Full Name
Nella pagina "Vendor Card" inserire un pulsante nel menu "Navigation", con caption "Mostra Lista Moduli", che apra la lista dei moduli collegati al vendor. 
Questo pulsante deve essere abilitato solo se il campo "Prof. Fiscal Code" è stato compilato. */

pageextension 50100 "Vendor Card Extension" extends "Vendor Card"
{
    layout
    {
        addafter(General)
        {
            group(Professor)
            {
                Caption = 'Professore';
                field("Prof. Fiscal Code"; Rec."Prof. Fiscal Code")
                {
                    ApplicationArea = All;
                }
                field("Prof. Full Name"; Rec."Prof. Full Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        addlast(navigation)
        {
            action(ShowModuleList)
            {
                Caption = 'Mostra Lista Moduli';
                ApplicationArea = All;
                Image = ShowList;
                RunObject = page "Module List";
                RunPageLink = "Vendor No." = field("Prof. Fiscal Code");
                Enabled = Rec."Prof. Fiscal Code" <> '';
            }
        }
    }

    var
        myInt: Integer;
}