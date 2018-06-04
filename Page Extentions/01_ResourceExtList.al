pageextension 123456701 CSD_ResourceListExt extends "Resource List"
// CSD1.00 - 2018-06-04 - MVD
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("CDS_Resource Type";"CDS_Resource Type")
            {
            }
            field("CSD_Maixmum Participants";"CSD_Maixmum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)) = format(Type::Machine);
        FilterGroup(0);    
    end;

    var
    [InDataSet]
        ShowMaxField: Boolean;
        Showtype: Boolean;    
}