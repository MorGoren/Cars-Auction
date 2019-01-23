<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="Pages_Managment_AddCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 319px;
        }
        .auto-style5 {
            height: 64px;
            width: 319px;
        }
        .auto-style2 {
            height: 64px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style8 {
            width: 225px;
            height: 5px;
        }
        .auto-style9 {
            height: 5px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Number:
                <br />
                <br />
                <asp:TextBox ID="CarNumberBox" runat="server" Height="18px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="NumberRequiredFieldValidator1" runat="server" ControlToValidate="CarNumberBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
            <td colspan="2">
                City:
                <br />
                <br />
                <asp:DropDownList ID="CarCityList" runat="server" DataSourceID="ConnectionToCity" DataTextField="CityName" DataValueField="CityName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ConnectionToCity" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cities]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Type:<br />
                <br />
                <asp:DropDownList ID="CarTypeList" runat="server" DataSourceID="ConnectionToType" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ConnectionToType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
            <td colspan="2">Pic:
                <br />
                <asp:Image ID="UpImage" runat="server" Height="100px" Visible="False" Width="100px" />
                <br />
                <br />
                <asp:FileUpload ID="CarPicUp" runat="server" />
                <br />
                <asp:Button ID="CarPicLoadButton" runat="server" OnClick="CarPicLoadButton_Click" Text="Upload" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Color:
                <br />
                <br />
                <asp:TextBox ID="CarColorBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ColorRequiredFieldValidator1" runat="server" ControlToValidate="CarColorBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2" colspan="2">Final Date:
                <br />
                <br />
                <asp:TextBox ID="CarFinalBox" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Year:
                <br />
                <br />
                <asp:DropDownList ID="CarYearList" runat="server" DataSourceID="ConnectionToYear" DataTextField="year" DataValueField="year">
                </asp:DropDownList>
                <asp:SqlDataSource ID="ConnectionToYear" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Year]"></asp:SqlDataSource>
            </td>
            <td colspan="2">Price (in K):
                <br />
                <br />
                <asp:TextBox ID="CarPriceBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PriceRequiredFieldValidator1" runat="server" ControlToValidate="CarPriceBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <br />
                <br /></td>
        </tr>
        <tr>
            <td class="auto-style4">Hand: 
                <br />
                <br />
                <asp:DropDownList ID="CarHandList" runat="server" DataSourceID="ConnectionToHand" DataTextField="Id" DataValueField="Id">
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="ConnectionToHand" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hand]"></asp:SqlDataSource>
            </td>
            <td colspan="2">Details:
                <br />
                <br />
                <asp:TextBox ID="CarDetailsBox" runat="server" Height="49px" TextMode="MultiLine" Width="176px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
                <asp:Button ID="CarSubmitButton" runat="server" OnClick="CarSubmitButton_Click" Text="Submit" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" ForeColor="Black" Height="24px" Width="121px" Font-Bold="True" />
            </td>
            <td class="auto-style8">
                <br />
                <asp:Button ID="ResetButton" runat="server" BackColor="Silver" BorderColor="Silver" CausesValidation="False" Font-Bold="True" Height="24px" OnClick="ResetButton_Click" Text="Reset" Width="121px" />
                <br />
            </td>
            <td class="auto-style9">
                <br />
                <asp:LinkButton ID="AddApartmentLink" runat="server" BackColor="Silver" BorderColor="Silver" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" Height="24px" Width="121px" PostBackUrl="~/Pages/AddManager.aspx">Add Manager</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:Label ID="CarResultLable" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

