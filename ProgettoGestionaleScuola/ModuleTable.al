/* 7) Creare una tabella "Module" con i seguenti campi:
- Code			Code 20
- Course No.		Code 20	- Relazione con Corso
- Vendor No.		Code 20 - Relazione con Fornitore (Vendor) solo con i record che hanno "Prof. Fiscal Code" diverso da vuoto (AIUTO: utilizzare il where nel table relation con il seguente filtro: filter(<> ''))
- Vendor Name		Text 100 - NON Editabile - Campo che mostra il "Prof. Full Name" connesso al Vendor No.
- Name			    Text 100 
- Hour Number		Integer
- Hourly Cost		Enum "Hourly Cost Range"
- Total Cost		Decimal
Chiave Primaria: Code, Course No., Vendor No. */
table 50102 Module
{
    Caption = 'Module';

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "Course No."; Code[20])
        {
            Caption = 'Course No.';
            TableRelation = Course;
        }
        field(3; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor where("Prof. Fiscal Code" = filter(<> ''));
        }
        field(4; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor."Prof. Full Name" where("No." = field("Vendor No.")));
        }
        field(5; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(6; "Hour Number"; Integer)
        {
            Caption = 'Hour Number';
        }
        field(7; "Hourly Cost"; Enum "Hourly Cost Range")
        {
            Caption = 'Hourly Cost';
        }
        field(8; "Total Cost"; Decimal)
        {
            Caption = 'Total Cost';
        }
    }

    keys
    {
        key(Key1; Code, "Course No.", "Vendor No.")
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