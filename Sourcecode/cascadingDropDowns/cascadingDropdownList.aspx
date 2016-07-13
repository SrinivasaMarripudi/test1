<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cascadingDropdownList.aspx.cs" Inherits="cascadingDropDowns.cascadingDropdownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        <table style="width: 10%; margin-left: auto;    margin-right: auto;">
            <tr>
                <td style="text-align:left">
                <asp:Label Text="Cuntry" ID="lblCountry" runat="server" Font-Bold="true"></asp:Label>
                </td>
                <td>
                <asp:DropDownList ID="ddlCountry" runat="server" ></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align:left">
                <asp:Label Text="State" ID="lblState" runat="server" Font-Italic="true"></asp:Label>
                </td>
                <td>
                <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align:left">
                <asp:Label Text="City" ID="lblCity" runat="server" Font-Underline="true"></asp:Label>
                </td>
                <td>
                <asp:DropDownList ID="ddlCity" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
