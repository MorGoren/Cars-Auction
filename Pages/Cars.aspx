<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Pages_Casrs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            margin-right: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <br />
                Search by:
                <asp:DropDownList ID="SearchDropDownList" runat="server" DataSourceID="ConnectionToSearch" DataTextField="SEARCH" DataValueField="SEARCH">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ConnectionToSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Search]"></asp:SqlDataSource>
                <asp:Button ID="SearchButton" runat="server" BackColor="Silver" BorderColor="Silver" Font-Bold="True" OnClick="SearchButton_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>    <asp:GridView ID="CarTable" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1000px" AllowPaging="True" AllowSorting="True" CssClass="auto-style8">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" >
        <ControlStyle Font-Underline="False" />
        <FooterStyle Font-Underline="False" />
        </asp:BoundField>
        <asp:BoundField DataField="TYPE" HeaderText="Company" SortExpression="TYPE" >
        <ControlStyle Font-Underline="False" />
        </asp:BoundField>
        <asp:BoundField DataField="YEAR" HeaderText="Year" SortExpression="YEAR" >
        <ControlStyle Font-Underline="False" />
        </asp:BoundField>
        <asp:BoundField DataField="HAND" HeaderText="Hand" SortExpression="HAND" >
        <ControlStyle Font-Underline="False" />
        </asp:BoundField>
        <asp:BoundField DataField="BEGINPRICE" HeaderText="Current Offer" SortExpression="BEGINPRICE" >
        <ControlStyle Font-Underline="False" />
        </asp:BoundField>
        <asp:BoundField DataField="FDATE" HeaderText="Final Date" SortExpression="FDATE" >
        <ControlStyle Font-Underline="False" />
        </asp:BoundField>
        <asp:ImageField DataImageUrlField="PIC" HeaderText="Image">
            <ControlStyle Height="100px" Width="100px" Font-Underline="False" />
        </asp:ImageField>
        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete">
        <ControlStyle Font-Underline="False" />
        </asp:ButtonField>
        <asp:CommandField HeaderText="Show Profile" SelectText="Show Profile" ShowHeader="True" ShowSelectButton="True" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CARS] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CARS] ([ID], [PIC], [TYPE], [YEAR], [HAND], [BEGINPRICE], [FDATE]) VALUES (@ID, @PIC, @TYPE, @YEAR, @HAND, @BEGINPRICE, @FDATE)" SelectCommand="SELECT [ID], [PIC], [TYPE], [YEAR], [HAND], [BEGINPRICE], [FDATE] FROM [CARS]" UpdateCommand="UPDATE [CARS] SET [PIC] = @PIC, [TYPE] = @TYPE, [YEAR] = @YEAR, [HAND] = @HAND, [BEGINPRICE] = @BEGINPRICE, [FDATE] = @FDATE WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="String" />
        <asp:Parameter Name="PIC" Type="String" />
        <asp:Parameter Name="TYPE" Type="String" />
        <asp:Parameter Name="YEAR" Type="String" />
        <asp:Parameter Name="HAND" Type="String" />
        <asp:Parameter Name="BEGINPRICE" Type="String" />
        <asp:Parameter Name="FDATE" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PIC" Type="String" />
        <asp:Parameter Name="TYPE" Type="String" />
        <asp:Parameter Name="YEAR" Type="String" />
        <asp:Parameter Name="HAND" Type="String" />
        <asp:Parameter Name="BEGINPRICE" Type="String" />
        <asp:Parameter Name="FDATE" Type="String" />
        <asp:Parameter Name="ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<asp:HyperLink ID="AddCarLink" runat="server" Font-Underline="False" NavigateUrl="~/Pages/Managment/AddCar.aspx">Add New Car</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

