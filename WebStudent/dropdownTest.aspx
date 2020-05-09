<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownTest.aspx.cs" Inherits="WebStudent.dropdownTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Select Student Name"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Data" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="ID"></asp:Label>
    
    </div>
    </form>
</body>
</html>
