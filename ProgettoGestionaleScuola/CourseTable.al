/* 3) Creare una tabella "Course" con i seguenti campi:
- No.			Code 20
- Name			Text 50
- Type 			Enum "Course Type"
- Students Number 	Integer - NON Editabile - Conta il numero degli studenti iscritti al corso
- Total Cost		Decimal - NON Editabile - Somma il costo totali dei moduli del corso
Chiave Primaria: No. */
table 50100 Course
{
    Caption = 'Course';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Type; Enum "Course Type")
        {
            Caption = 'Type';
        }
        field(4; "Students Number"; Integer)
        {
            Caption = 'Student number';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count(Student where("Enrolled Course" = field("No.")));
        }
        field(5; "Total Cost"; Decimal)
        {
            Caption = 'Total Cost';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum(Module."Total Cost" where("Course No." = field("No.")));
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

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