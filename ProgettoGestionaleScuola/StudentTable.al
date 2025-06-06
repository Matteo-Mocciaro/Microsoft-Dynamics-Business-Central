/* 4) Creare una tabella "Student" con i seguenti campi:
- Fiscal Code		Code 20
- Full Name		Text 100
- Birth Date 		Date
- Enrolled Course 	Code 20 - Relazione con Corso
Chiave Primaria: Fiscal Code */
table 50101 Student
{
    Caption = 'Student';

    fields
    {
        field(1; "Fiscal Code"; Code[20])
        {
            Caption = 'Fiscal Code';
        }
        field(2; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
        }
        field(3; "Birth Date"; Date)
        {
            Caption = 'Birth Date';
        }
        field(4; "Enrolled Course"; Code[20])
        {
            Caption = 'Enrolled Course';
            TableRelation = Course;
        }
    }

    keys
    {
        key(Key1; "Fiscal Code")
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