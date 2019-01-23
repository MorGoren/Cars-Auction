<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchId.aspx.cs" Inherits="Pages_Search" %>

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
                &nbsp;<asp:Button ID="SearchButton" runat="server" BackColor="Silver" BorderColor="Silver" Font-Bold="True" OnClick="SearchButton_Click" Text="Search" />
                <asp:SqlDataSource ID="ConnectionToSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Search]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="CarTable" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="ConnectionToId" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="785px" AllowPaging="True" AllowSorting="True" CssClass="auto-style8">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" ></asp:BoundField>
                        <asp:BoundField DataField="TYPE" HeaderText="Type" SortExpression="TYPE" ></asp:BoundField>
                        <asp:BoundField DataField="YEAR" HeaderText="Year" SortExpression="YEAR" ></asp:BoundField>
                        <asp:BoundField DataField="HAND" HeaderText="Hand" SortExpression="HAND" ></asp:BoundField>
                        <asp:BoundField DataField="PIC" HeaderText="PIC" SortExpression="PIC" ></asp:BoundField>
                        <asp:ImageField DataImageUrlField="PIC" HeaderText="Picture">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="BEGINPRICE" HeaderText="Current Offer" SortExpression="BEGINPRICE" ></asp:BoundField>
                        <asp:CommandField ButtonType="Button" HeaderText="Show Profile" SelectText="Show Profile" ShowHeader="True" ShowSelectButton="True" />
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
                <asp:SqlDataSource ID="ConnectionToId" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [TYPE], [YEAR], [HAND], [PIC], [BEGINPRICE], [FDATE] FROM [CARS] WHERE ([ID] = @ID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="ID" SessionField="ID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br /></td>
        </tr>
    </table>
</asp:Content>

