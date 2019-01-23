<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 293px;
        height: 63px;
    }
    .auto-style3 {
        width: 293px;
        height: 45px;
    }
    .auto-style4 {
        height: 45px;
    }
        .auto-style8 {
            height: 63px;
        }
        .auto-style9 {
            height: 23px;
            width: 224px;
        }
        .auto-style10 {
            height: 46px;
            width: 224px;
        }
        .auto-style11 {
            height: 46px;
        }
        .auto-style12 {
            height: 63px;
            width: 224px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style4">
            <br />
            ID:
            <br />
            <asp:TextBox ID="LogIdBox" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style4">
            <br />
            Password:
            <br />
            <asp:TextBox ID="LogPassBox" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style8">
            <asp:Button ID="LogButton" runat="server" OnClick="LogButton_Click" Text="Log In" />
            <br />
            <br />
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11">
            <asp:Label ID="LogLable" runat="server"></asp:Label>
            <br />
        </td>
        <td class="auto-style11"></td>
    </tr>
</table>
</asp:Content>

