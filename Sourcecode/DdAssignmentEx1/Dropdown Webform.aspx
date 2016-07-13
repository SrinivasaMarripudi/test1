<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdown Webform.aspx.cs" Inherits="DdAssignmentEx1.Dropdown_Webform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 394px">
    <asp:DropDownList ID="ddlDatareader" runat="server" style="position: relative; top: 53px; left: 174px; height: 19px;" AppendDataBoundItems="True" BackColor="#99FF66" DataTextField="Name" Font-Bold="True" Font-Italic="True" Font-Size="Small" ForeColor="#003366" Height="100px" Width="150px"></asp:DropDownList>
    <asp:DropDownList ID="ddlDataset" runat="server" style="position: relative; top: 55px; left: 246px; height: 36px; width: 127px;" AppendDataBoundItems="True" Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="Blue"></asp:DropDownList>
        
        <asp:GridView ID="gvCustomer" runat="server" style="position: relative; top: 210px; left: 129px; height: 69px" Visible="False" ></asp:GridView>   
    <div style="text-align:center";width: 500px; margin: auto;>   
        <asp:Label id="lblStudentName" AssociatedControlId="txtStudentName" Text="Enter Your Name : " runat="server" style="position: relative" />
     <asp:Button id="b1" Text="Submit" runat="server" style="position: relative; top: 55px; left: 45px; height: 23px;" OnClick="b1_Click" />  
        <asp:TextBox ID="txtStudentName" runat="server" style="position: relative; top: 6px; left: -41px"></asp:TextBox> 
    </div>   
     </div>
    </form>
</body>
</html>
