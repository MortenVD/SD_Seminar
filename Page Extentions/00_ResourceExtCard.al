pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
// CSD1.00 - 2018-06-04 - MVD
{
    layout
    {
        addlast(General)
        {
            field("CDS_Resource Type";"CDS_Resource Type")
            {
            }
            field("Quantity Per day";"CSD_Quantity Per Day")
            {
            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("CSD_Maixmum Participants";"CSD_Maixmum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false)
    end;

    var
    [InDataSet]
    ShowMaxField: Boolean;
}