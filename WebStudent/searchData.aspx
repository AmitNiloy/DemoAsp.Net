<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchData.aspx.cs" Inherits="WebStudent.searchData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Student Data</title>
    <style type="text/css">
         body{
            background-image:url("n.jpg");
        }
        .auto-style1 {
            width: 87%;
            border-left-style: solid;
            border-left-width: 2px;
            border-right: 2px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 2px;
            border-bottom: 2px solid #C0C0C0;
            background-color: #800080;
            height: 174px;
            font-weight: 700;
        }
        .auto-style2 {
            width: 180px;
            text-align: center;
        }
        .auto-style3 {
            width: 180px;
            background-color: #FFCCFF;
            text-align: center;
        }
        .auto-style4 {
            width: 336px;
            background-color: #FFCCFF;
        }
        .auto-style5 {
            width: 336px;
            background-color: #FF99CC;
        }
        .auto-style6 {
            width: 180px;
            background-color: #FF99CC;
            text-align: center;
        }
        .auto-style7 {
            width: 336px;
            background-color: #FF9999;
        }
        .auto-style8 {
            width: 180px;
            background-color: #FF9999;
            text-align: center;
        }
        .auto-style9 {
            width: 336px;
            background-color: #FF9933;
        }
        .auto-style10 {
            width: 180px;
            background-color: #FF9933;
            text-align: center;
        }
        .auto-style11 {
            width: 336px;
            background-color: #CC6600;
        }
        .auto-style12 {
            width: 180px;
            background-color: #CC6600;
            text-align: center;
        }
        .auto-style13 {
            width: 336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 style="text-align: center; background-color: #66CCFF">Search Student Data</h1>
        <br />
        <br />
        <br />
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style3">Student ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="21px" OnClick="Button1_Click" Text="Search" Width="70px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Student Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Mobile</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Semester ID</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="28px" OnClick="Button2_Click" style="position: relative; float: right; top: -1px; left: -62px; width: 103px" Text="Next Page" />
        <asp:Button ID="Button3" runat="server" Height="28px" OnClick="Button3_Click" Text="Go Back" Width="91px" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
