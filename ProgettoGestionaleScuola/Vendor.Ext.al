/* 5) Estendere la tabella Vendor con i seguenti campi:
- Prof. Fiscal Code	Code 20
- Prof. Full Name	Text 100 */
tableextension 50100 "Vendor Extension" extends Vendor
{
    fields
    {
        field(50100; "Prof. Fiscal Code"; Code[20])
        {
            Caption = 'Prof. Fiscal Code';
        }
        field(50101; "Prof. Full Name"; Text[100])
        {
            Caption = 'Prof. Full Name';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}