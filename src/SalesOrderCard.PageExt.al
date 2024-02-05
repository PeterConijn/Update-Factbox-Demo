namespace Rabbit.FaxtboxUpdate;

using Microsoft.Sales.Document;

pageextension 50100 "Sales Order Card" extends "Sales Order"
{
    layout
    {
        addlast(factboxes)
        {
            part(CustomerNameFactbox; "Customer Name")
            {
                SubPageLink = "No." = field("Sell-to Customer No.");
            }
        }
    }
    internal procedure UpdateFactbox(var SalesLine: Record "Sales Line")
    begin
        CurrPage.CustomerNameFactbox.Page.UpdatePage(SalesLine."Line No.");
    end;
}
