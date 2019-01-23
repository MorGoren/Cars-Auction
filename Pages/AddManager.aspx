<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddManager.aspx.cs" Inherits="Pages_AddManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="MakeManTable" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="ConnectionToUsers" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="954px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id">
            <ControlStyle Width="20px" />
            </asp:BoundField>
            <asp:BoundField DataField="FNAME" HeaderText="First Name" SortExpression="FNAME" />
            <asp:BoundField DataField="LNAME" HeaderText="Last Name" SortExpression="LNAME" />
            <asp:BoundField DataField="BDATE" HeaderText="Birth Date" SortExpression="BDATE" />
            <asp:BoundField DataField="PHONE" HeaderText="Phone " SortExpression="PHONE" />
            <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
            <asp:BoundField DataField="CITY" HeaderText="City" SortExpression="CITY" />
            <asp:BoundField DataField="PIC" HeaderText="PIC" SortExpression="PIC" />
            <asp:ImageField DataImageUrlField="PIC" HeaderText="Image">
                <ControlStyle Height="50px" Width="50px" />
            </asp:ImageField>
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Make Manager" />
            <asp:CommandField ButtonType="Button" HeaderText="Delete account" ShowDeleteButton="True" ShowHeader="True" />
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
    <asp:SqlDataSource ID="ConnectionToUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [FNAME], [LNAME], [BDATE], [PHONE], [EMAIL], [CITY], [PIC] FROM [USER] WHERE ([Id] NOT LIKE '%' + @Id + '%')">
        <SelectParameters>
            <asp:SessionParameter Name="Id" SessionField="ID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="AddCarButton" runat="server" Font-Bold="True" PostBackUrl="~/Pages/Managment/AddCar.aspx" Text="Add Car" />
    <br />
                <br />
    <asp:Label ID="AddManTableLable" runat="server"></asp:Label>
</asp:Content>

