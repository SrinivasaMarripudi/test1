<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRegPage.aspx.cs" Inherits="registrationForm.EmployeeRegPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Registration Form</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div>
            <h2> Welcome!! Please Enter your Details</h2>
        </div>
    <div class="jumbotron">
      <table>
        <tr>
            <td>
                <asp:Label ID="lblFname" runat="server" Text ="FirstName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="lblMname" runat="server" Text="MiddleName"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="tbMiddleName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLname" runat="server" Text="LastName"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr> 
            <td>
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:RadioButtonList>
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="StreetAddress"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList>                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCountry" runat="server"></asp:DropDownList>                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblZipCode" runat="server" Text="ZipCode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbZipCode" runat="server"></asp:TextBox>                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPhone" runat="server" Text="PhoneNumber"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbPhoneNo" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table> 
        <div >
             <asp:Button ID="btnSubmit" runat="server" CssClass="btn-success" Text="Submit" OnClick="btnSubmit_Click" />        
        </div>  
     </div>                       
 </div>
</form>
</body>
</html>
