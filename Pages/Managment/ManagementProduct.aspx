<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManagementProduct.aspx.cs" Inherits="Pages_Managment_ManagementProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 195px;
    }
    .auto-style3 {
        width: 147px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">
                <asp:LinkButton ID="AddCarLink" runat="server" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" Height="24px" Width="62px" OnClick="AddCarLink_Click" PostBackUrl="~/Pages/Managment/AddCar.aspx">Add Car</asp:LinkButton>
            </td>
        <td>
                <asp:LinkButton ID="AddApartmentLink" runat="server" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" Height="24px" Width="121px" PostBackUrl="~/Pages/AddManager.aspx">Add Magager</asp:LinkButton>
            </td>
    </tr>
</table>
</asp:Content>

