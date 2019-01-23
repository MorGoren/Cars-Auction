<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DownFile.aspx.cs" Inherits="Pages_DownFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="166px" ImageUrl="~/image/findPDF.jpg" Width="208px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PDFLable" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

