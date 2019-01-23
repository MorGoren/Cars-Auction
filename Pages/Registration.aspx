<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Pages_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 218px;
        }
        .auto-style3 {
            width: 218px;
            height: 64px;
        }
        .auto-style4 {
            height: 64px;
        }
        .auto-style5 {
            width: 232px;
            height: 102px;
        }
        .auto-style6 {
            height: 102px;
        }
        .auto-style7 {
            width: 218px;
            height: 57px;
        }
        .auto-style8 {
            height: 57px;
        }
    .auto-style9 {
        height: 97px;
    }
    .auto-style10 {
        height: 57px;
        width: 279px;
    }
    .auto-style11 {
            width: 279px;
        }
    .auto-style12 {
            height: 64px;
            width: 279px;
        }
    .auto-style13 {
        height: 23px;
        width: 279px;
    }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            width: 232px;
            height: 23px;
        }
        .auto-style16 {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">First Name:<br />
                <br />
                <asp:TextBox ID="RegFNameBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="FNRequiredFieldValidator" runat="server" ControlToValidate="RegFNameBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style10">Last Name:
                <br />
                <br />
                <asp:TextBox ID="RegLNameBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="LNRequiredFieldValidator" runat="server" ControlToValidate="RegLNameBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">ID:
                <br />
                <br />
                <asp:TextBox ID="RegIdBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="IDRequiredFieldValidator" runat="server" ControlToValidate="RegIdBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style13">Birth Date:
                <br />
                <br />
                <asp:TextBox ID="RegBdateBox" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;<br />
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style15">Phone Number:
                <br />
                <br />
                <asp:TextBox ID="RegPhoneBox" runat="server" TextMode="Phone"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="PHRequiredFieldValidator" runat="server" ControlToValidate="RegPhoneBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style12">Email:
                <br />
                <br />
                <asp:TextBox ID="RegEmailBox" runat="server" TextMode="Email"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ControlToValidate="RegEmailBox" Display="Dynamic" ErrorMessage="Email not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">City:
                <br />
                <br />
                <asp:DropDownList ID="RegCityList" runat="server" DataSourceID="ConnectionToCity" DataTextField="CityName" DataValueField="CityName">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="ConnectionToCity" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cities]"></asp:SqlDataSource>
            </td>
            <td class="auto-style11">Addres:
                <br />
                <br />
                <asp:TextBox ID="RegAddresBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="ADRequiredFieldValidator" runat="server" ControlToValidate="RegAddresBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                <br />
            </td>
            <td class="auto-style13">Credit Card Number:
                <br />
                <br />
                <asp:TextBox ID="RegCreditNumBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="CCNRequiredFieldValidator" runat="server" ControlToValidate="RegCreditNumBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Cvv:<br />
                <br />
                <asp:TextBox ID="RegCreditCvvBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="CVRequiredFieldValidator" runat="server" ControlToValidate="RegCreditCvvBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="auto-style11">Expire Date:
                <br />
                <br />
                <asp:TextBox ID="RegCreditExBox" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="EXRequiredFieldValidator1" runat="server" ControlToValidate="RegCreditExBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Password:
                <br />
                <br />
                <asp:TextBox ID="RegPassBox" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="PSRequiredFieldValidator" runat="server" ControlToValidate="RegPassBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="PassRegularExpressionValidator" runat="server" ControlToValidate="RegPassBox" Display="Dynamic" ErrorMessage="Email not Valid" ForeColor="Red" ValidationExpression="^(?=.{8,20}$)(?=.*[A-Z].*)(?=.*[a-z].*)(?=.*[0-9].*)[a-zA-Z0-9]+$">*</asp:RegularExpressionValidator>
                <br />
            </td>
            <td class="auto-style12">Confirm Pasword:
                <br />
                <br />
                &nbsp;<asp:TextBox ID="RegPassConBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="CPSRequiredFieldValidator" runat="server" ControlToValidate="RegPassConBox" Display="Dynamic" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="PssConCompareValidator" runat="server" ControlToCompare="RegPassBox" ControlToValidate="RegPassConBox" Display="Dynamic" ErrorMessage="Passwords are not the same" ForeColor="Red">*</asp:CompareValidator>
                <br />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style16">&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RegSecTermRbutton" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I agree that for every tender I win, I will lose 1% for security and if I do not sell the deal, I will pay an additional 2% of the value.</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style9">
                <asp:Button ID="RegSubmitButton" runat="server" OnClick="CarSubmitButton_Click" Text="Submit" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" ForeColor="Black" Height="24px" Width="121px" Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ResetButton" runat="server" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" Font-Bold="True" Height="24px" OnClick="ResetButton_Click1" Text="Reset" Width="121px" CausesValidation="False" />
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

