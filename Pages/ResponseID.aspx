<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ResponseID.aspx.cs" Inherits="Pages_ResponseID" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Search by ID:&nbsp;
                <asp:TextBox ID="IDSearchResBox" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="SearchButton" runat="server" BackColor="Silver" BorderColor="Silver" Font-Bold="True" OnClick="SearchButton_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="ResponsTable" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NUM" DataSourceID="ConnectionToRespons" ForeColor="#333333" GridLines="None" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="NUM" HeaderText="Number" ReadOnly="True" SortExpression="NUM" />
                        <asp:BoundField DataField="DATE" HeaderText="Date" SortExpression="DATE" />
                        <asp:BoundField DataField="PERID" HeaderText="Person ID" SortExpression="PERID" />
                        <asp:BoundField DataField="DETAILS" HeaderText="Details" SortExpression="DETAILS" />
                        <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
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
                <asp:SqlDataSource ID="ConnectionToRespons" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RESPONS] WHERE ([PERID] = @PERID)" DeleteCommand="DELETE FROM [RESPONS] WHERE [NUM] = @NUM" InsertCommand="INSERT INTO [RESPONS] ([NUM], [DATE], [PERID], [DETAILS]) VALUES (@NUM, @DATE, @PERID, @DETAILS)" UpdateCommand="UPDATE [RESPONS] SET [DATE] = @DATE, [PERID] = @PERID, [DETAILS] = @DETAILS WHERE [NUM] = @NUM">
                    <DeleteParameters>
                        <asp:Parameter Name="NUM" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NUM" Type="String" />
                        <asp:Parameter Name="DATE" Type="String" />
                        <asp:Parameter Name="PERID" Type="String" />
                        <asp:Parameter Name="DETAILS" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="PERID" SessionField="REID" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="DATE" Type="String" />
                        <asp:Parameter Name="PERID" Type="String" />
                        <asp:Parameter Name="DETAILS" Type="String" />
                        <asp:Parameter Name="NUM" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="ResponsLabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

