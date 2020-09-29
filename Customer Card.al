pageextension 50100 "Customer Card JS" extends "Customer Card"
{
    layout
    {

        addafter(Name)
        {
            field(Color1; Color1)
            {
                ApplicationArea = All;
                Caption = 'Color1';
            }
            usercontrol(Color1Picker; ColorPicker)
            {
                ApplicationArea = All;
                trigger ControlReady()
                begin
                    CurrPage.Color1Picker.Init();
                end;
            }
            field(Color2; Color2)
            {
                ApplicationArea = All;
                Caption = 'Color2';
            }

            usercontrol(Color2Picker; ColorPicker)
            {
                ApplicationArea = All;
                trigger ControlReady()
                begin
                    CurrPage.Color2Picker.Init();
                end;
            }
            field(Multiline1; Multiline1)
            {
                ApplicationArea = All;
                Caption = 'Multiline1';
                MultiLine = true;
            }
            field(Multiline2; Multiline2)
            {
                ApplicationArea = All;
                Caption = 'Multiline1';
                MultiLine = true;
            }
            usercontrol(AutoResize; AutoSizeTextArea)
            {
                ApplicationArea = All;

            }
            field(RichText1; RichText1)
            {
                ApplicationArea = All;
                Caption = 'RichText1';
                MultiLine = true;
            }
            usercontrol(RT1; CkEditor)
            {
                ApplicationArea = All;
                trigger ControlReady()
                begin
                    CurrPage.RT1.Init();
                end;

                trigger OnAfterInit()
                begin
                    rt1Ready := true;
                    CurrPage.RT1.SetData();
                    CurrPage.RT1.SetReadOnly(not CurrPage.Editable);
                end;
            }

        }

    }
    trigger OnAfterGetRecord()
    begin
        CurrPage.Color1Picker.Init();
        CurrPage.Color2Picker.Init();
        CurrPage.AutoResize.Init();
        if rt1Ready then begin
            rt1Ready := false;
            CurrPage.RT1.Init();
        end;
    end;

    var
        rt1Ready: boolean;



}