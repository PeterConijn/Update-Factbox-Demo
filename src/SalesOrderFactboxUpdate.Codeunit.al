codeunit 50100 "Sales Order Factbox Update"
{
    Access = Public;

    InherentEntitlements = X;
    InherentPermissions = X;

    SingleInstance = true;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order", OnAfterOnAfterGetRecord, '', false, false)]
    local procedure OnAfterOnAfterGetRecordSalesOrder(var Sender: Page "Sales Order"; var SalesHeader: Record "Sales Header")
    begin
        GlobalSalesOrderPage := Sender;
    end;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order Subform", OnRunUpdateFactbox, '', false, false)]
    local procedure OnRunUpdateFactbox(var SalesLine: Record "Sales Line")
    begin
        GlobalSalesOrderPage.UpdateFactbox(SalesLine);
    end;

    var
        GlobalSalesOrderPage: Page "Sales Order";
}
