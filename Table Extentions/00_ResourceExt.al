tableextension 123456700 CSD_ResourceExt extends Resource
// CSD1.00 - 2018-04-04 - MVD
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701;"CDS_Resource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
        }
        field(123456702;"CSD_Maixmum Participants";Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703;"CSD_Quantity Per Day";Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
}