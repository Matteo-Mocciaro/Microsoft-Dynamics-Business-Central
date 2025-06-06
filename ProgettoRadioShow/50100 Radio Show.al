table 50100 "Radio Show"
{
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Type"; Code[10])
        {
            Caption = 'Type';
            TableRelation = "Radio Show Type";
        }
        field(4; Frequency; Enum "Radio Show Frequency")
        {
            Caption = 'Frequency';
        }
        field(5; "Run Time"; Duration)
        {
            Caption = 'Run Time';
        }
        field(6; "Music Min. Time"; Duration)
        {
            Caption = 'Music Min. Time';
        }
        field(7; "Ads Min. Time"; Duration)
        {
            Caption = 'Ads Min. Time';
        }
        field(10; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
        }
        field(11; "Advertising Revenue"; Decimal)
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
