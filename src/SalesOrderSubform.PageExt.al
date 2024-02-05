namespace Rabbit.FaxtboxUpdate;

using Microsoft.Sales.Document;

pageextension 50101 "Sales Order Subform" extends "Sales Order Subform"
{
    actions
    {
        addfirst("O&rder")
        {
            action(UpdateFactboxAction)
            {
                ApplicationArea = All;
                Caption = 'Update Faxtbox';
                ToolTip = 'Update Faxtbox';
                Image = UpdateDescription;

                trigger OnAction()
                begin
                    RunUpdateFactboxEvent();
                end;
            }
        }
    }

    local procedure RunUpdateFactboxEvent()
    begin
        OnRunUpdateFactbox(Rec);
    end;

    [IntegrationEvent(true, false)]
    local procedure OnRunUpdateFactbox(var SalesLine: Record "Sales Line")
    begin
    end;
}
