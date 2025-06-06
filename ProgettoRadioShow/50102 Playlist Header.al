table 50102 "Playlist Header"
{
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; "Radio Show No."; code[20])
        {
            Caption = 'Radio Show No.';
            TableRelation = "Radio Show"."No.";
        }
        field(11; "Radio Show Type"; Code[10])
        {
            Caption = 'Radio Show Type';
            TableRelation = "Radio Show Type"."Code";
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; "Broadcast Date"; Date)
        {
            Caption = 'Broadcast Date';
        }
        field(40; Duration; Duration)
        {
            Caption = 'Duration';
            Editable = false;
        }
        field(50; "Start Time"; Time)
        {
            Caption = 'Start Time';

            trigger OnValidate()
            begin
                if "Start Time" <> 0T then
                    "End Time" := "Start Time" + Duration;
            end;

        }
        field(60; "End Time"; Time)
        {
            Caption = 'End Time';
            Editable = false;
        }
        field(70; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
        }
        field(80; "Advertising Revenue"; Decimal)
        {
            Caption = 'Advertising Revenue';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}