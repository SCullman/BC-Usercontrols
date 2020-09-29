tableextension 50100 CustomerColors extends Customer
{
    fields
    {
        field(50100; Color1; Text[10])
        {
            Caption = 'Color1';
            DataClassification = ToBeClassified;
        }
        field(50101; Color2; Text[10])
        {
            Caption = 'Color2';
            DataClassification = ToBeClassified;
        }
        field(50102; Multiline1; Text[1024])
        {
            Caption = 'Color2';
            DataClassification = ToBeClassified;
        }
        field(50103; Multiline2; Text[1024])
        {
            Caption = 'Color2';
            DataClassification = ToBeClassified;
        }
        field(50104; RichText1; Text[1024])
        {
            Caption = 'RichText1';
            DataClassification = ToBeClassified;
        }
    }
}
