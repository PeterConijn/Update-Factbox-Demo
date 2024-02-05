namespace Rabbit.FaxtboxUpdate;

using Microsoft.Sales.Customer;

page 50100 "Customer Name"
{
    ApplicationArea = All;
    Caption = 'Customer Name';
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            group(CustomerData)
            {
                Caption = 'Customer Data';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
                }
            }
        }
    }

    internal procedure UpdatePage(LineNo: Integer)
    var
        UpdateLbl: Label 'Page updated from line no. %1', Comment = '%1 = Sales Order Line No.';
    begin
        Message(UpdateLbl, LineNo);
    end;
}
