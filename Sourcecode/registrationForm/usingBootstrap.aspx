<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRegPage.aspx.cs" Inherits="registrationForm.EmployeeRegPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Employee Registration Form</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
   <div style="text-align:center; background-color: white;  max-width: 100%;
                    padding: 5px;
                    border: 25px solid green;
                    margin: 0 auto;">
       <h2 style="width:100%;  text-decoration:solid;marquee-direction:forward"> Welcome!! Please Enter your Details</h2>
    <div style="height: 488px;width:50%; margin: 0 auto; text-align:left;" >
    <table style="width:100%">
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
        <div style="text-align: center; border:1px solid black; padding-bottom:50px;padding-left:0px; padding-top:50px; padding-right:100px; ">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />        
        </div>      
            
                
                     
    
    </div>
   </div>
            </div>
    </form>
</body>
</html>
