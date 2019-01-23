<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CarProfile.aspx.cs" Inherits="Pages_CarProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 333px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <br />
                Type:&nbsp;
                <asp:Label ID="ProCarTypeLable" runat="server"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                Color:&nbsp;
                <asp:Label ID="ProCarColorLable" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <br />
                Year:&nbsp;
                <asp:Label ID="ProCarYearLable" runat="server"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                Hand:&nbsp;
                <asp:Label ID="ProCarHandLable" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <br />
                City:&nbsp;
                <asp:Label ID="ProCarCityLable" runat="server"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                Details:&nbsp;
                <asp:Label ID="ProCarDetailsLable" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                Image:&nbsp;
                <br />
                <br />
                <asp:Image ID="ProCarImage" runat="server" Height="156px" Width="156px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <br />
                Final Date:&nbsp;
                <asp:Label ID="ProCarFdateLable" runat="server"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <br />
                Current Offer:&nbsp;
                <asp:Label ID="ProCarCofferLable" runat="server"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="OfferButton" runat="server" OnClick="OfferButton_Click" Text="Add an Offer" />
                <br />
                <br />
                <asp:Label ID="OfferLable" runat="server"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:Button ID="DownButton" runat="server" OnClick="DownButton_Click" Text="Download" />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="CarProNOfferlable" runat="server" Text="New Offer (in K): "></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="ProCarNofferBox" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="ProCarSubmitButton" runat="server" OnClick="ProCarSubmitButton_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

