<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Pages_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        height: 26px;
        width: 360px;
    }
        .auto-style8 {
            height: 26px;
        }
    .auto-style11 {
        width: 360px;
    }
    .auto-style12 {
        height: 64px;
        width: 360px;
    }
        .auto-style4 {
            height: 64px;
        }
        .auto-style14 {
            height: 26px;
            width: 243px;
        }
        .auto-style15 {
            height: 23px;
            width: 243px;
        }
        .auto-style20 {
            width: 243px;
        }
        .auto-style21 {
            width: 766px;
        }
        .auto-style23 {
            height: 26px;
            font-weight: bold;
            background-color: #C0C0C0;
        }
        .auto-style22 {
            margin-left: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style14">First Name:<br />
            <br />
            <asp:Label ID="FnLable" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="auto-style10">Last Name:
                <br />
            <br />
            <asp:Label ID="LnLable" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="auto-style8">Pic:
                <br />
            <br />
            <asp:Image ID="UpImage" runat="server" Height="100px" Width="100px" />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style15">ID:
                <br />
            <br />
            <asp:Label ID="ProIdLable" runat="server"></asp:Label>
            <br />
            <br /></td>
        <td class="auto-style11">Birth Date:
                <br />
            <br />
            <asp:Label ID="ProDateLable" runat="server"></asp:Label>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">Phone&nbsp; Number:
                <br />
            <br />
            <asp:Label ID="PhoneLable" runat="server"></asp:Label>
            <br />
            <br /></td>
        <td class="auto-style12">Email:
                <br />
            <br />
            <asp:Label ID="EmailLable" runat="server"></asp:Label>
            <br />
            <br /></td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">City:
                <br />
            <br />
            <asp:Label ID="ProCityLable" runat="server"></asp:Label>
            <br />
            <br />
        </td>
        <td class="auto-style11">Addres:
                <br />
            <br />
            <asp:Label ID="AddLable" runat="server"></asp:Label>
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20">Credit Card:
                <br />
            <br />
            <asp:Label ID="TypeLable" runat="server"></asp:Label>
            <br />
            <br /></td>
        <td class="auto-style11">Credit Card Number:
                <br />
            <br />
            <asp:Label ID="NumberLable" runat="server"></asp:Label>
            <br />
            <br />
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style15">Cvv:<br />
            <br />
            <asp:Label ID="CvvLable" runat="server"></asp:Label>
            <br />
            <br /></td>
        <td class="auto-style11">Expire Date:
                <br />
            <br />
            <asp:Label ID="ExLable" runat="server"></asp:Label>
            <br />
            <br /></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Button ID="UpChangeButton" runat="server" OnClick="CarSubmitButton_Click" Text="Update Changes" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" ForeColor="Black" Height="24px" Width="121px" Font-Bold="True" PostBackUrl="~/Pages/ProfileChange.aspx" />
        </td>
        <td class="auto-style23">
            <asp:Button ID="DeleteAccountButton" runat="server" BackColor="Silver" BorderColor="Silver" CssClass="auto-style22" Font-Bold="True" Height="24px" OnClick="DeleteAccountButton_Click" Text="Delete My Account" Width="137px" />
        </td>
        <td class="auto-style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Label ID="RegLable" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

