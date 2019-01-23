<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProfileChange.aspx.cs" Inherits="Pages_ProfileChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style15 {
            width: 232px;
            height: 23px;
        }
        .auto-style10 {
        height: 57px;
        width: 279px;
    }
        .auto-style8 {
            height: 57px;
        }
    .auto-style13 {
        height: 23px;
        width: 279px;
    }
        .auto-style14 {
            height: 23px;
        }
        .auto-style12 {
            height: 64px;
            width: 279px;
        }
        .auto-style4 {
            height: 64px;
        }
        .auto-style11 {
            width: 279px;
        }
        .auto-style5 {
            width: 232px;
            height: 102px;
        }
        .auto-style9 {
        height: 97px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">First Name:<br />
                <br />
                &nbsp;<asp:TextBox ID="FNameBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FNRequiredFieldValidator" runat="server" ControlToValidate="FNameBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                <asp:TextBox ID="LNameBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="LNRequiredFieldValidator" runat="server" ControlToValidate="LNameBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style8">Pic:
                <br />
                <asp:Image ID="UpImage" runat="server" Height="100px" Visible="False" Width="100px" />
                <br />
                <asp:FileUpload ID="RegPicUp" runat="server" />
                <br />
                <asp:Button ID="UploadButton" runat="server" OnClick="Button1_Click" Text="Upload" CausesValidation="False" />
                <br /></td>
        </tr>
        <tr>
            <td class="auto-style15">ID:
                <br />
                <br />
                <asp:TextBox ID="IdBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="IDRequiredFieldValidator" runat="server" ControlToValidate="IdBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br /></td>
            <td class="auto-style13">Birth Date:
                <br />
                <br />
                <asp:TextBox ID="BdateBox" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;<br /></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style15">Phone Number:
                <br />
                <br />
                <asp:TextBox ID="PhoneBox" runat="server" TextMode="Phone"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="PHRequiredFieldValidator" runat="server" ControlToValidate="PhoneBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br /></td>
            <td class="auto-style12">Email:
                <br />
                <br />
                <asp:TextBox ID="EmailBox" runat="server" TextMode="Email"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="EmailBox" Display="Dynamic" ErrorMessage="Email not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br /></td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">City:
                <br />
                <br />
                <asp:DropDownList ID="CityList" runat="server" DataSourceID="ConnectionToCity" DataTextField="CityName" DataValueField="CityName">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="ConnectionToCity" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cities]"></asp:SqlDataSource>
            </td>
            <td class="auto-style11">Addres:
                <br />
                <br />
                <asp:TextBox ID="AddresBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="ADRequiredFieldValidator" runat="server" ControlToValidate="AddresBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Credit Card:
                <br />
                <asp:DropDownList ID="RegCreditTypeList" runat="server" DataSourceID="ConnectionToCredit" DataTextField="TYPE" DataValueField="TYPE">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="ConnectionToCredit" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CREDIT_CARD]"></asp:SqlDataSource>
                <br /></td>
            <td class="auto-style13">Credit Card Number:
                <br />
                <br />
                <asp:TextBox ID="CreditNumBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="CCNRequiredFieldValidator" runat="server" ControlToValidate="CreditNumBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br /></td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Cvv:<br />
                <br />
                <asp:TextBox ID="CreditCvvBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="CVRequiredFieldValidator" runat="server" ControlToValidate="CreditCvvBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br /></td>
            <td class="auto-style11">Expire Date:
                <br />
                <br />
                <asp:TextBox ID="CreditExBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="EXRequiredFieldValidator1" runat="server" ControlToValidate="CreditExBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style9">
                <asp:Button ID="RegSubmitButton" runat="server" OnClick="CarSubmitButton_Click" Text="Submit" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" ForeColor="Black" Height="24px" Width="121px" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [USER]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style14">
                <asp:Label ID="RegLable" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

