<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebStudent.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Registration Form</title>
    <style type="text/css">
        body{
            background-image:url("n.jpg");
        }
        .auto-style1 {
            border: 3px groove #0000FF;
            height: 388px;
            color: #FF0000;
            width: 578px;
            position: relative;
            background-color: #FFFFCC;
            top: 0px;
            left: 0px;
        }
        .auto-style6 {
            text-align: left;
            border-style: double;
            border-width: 3px;
            background-color: #99CCFF;
            width: 469px;
        }
        .auto-style7 {
            border-style: double;
            border-width: 3px;
            height: 39px;
            text-align: left;
            background-color: #99CCFF;
            width: 469px;
        }
        .auto-style8 {
            border-style: outset;
            height: 39px;
            text-align: center;
            width: 232px;
            font-weight: bold;
            background-color: #00CC66;
        }
        .auto-style9 {
            text-align: center;
            width: 232px;
            border-style: outset;
            font-weight: bold;
            background-color: #00CC66;
        }
        .auto-style12 {
            color: #0000FF;
        }
        .auto-style14 {
            color: #FF3300;
        }
        .auto-style15 {
            background-color: #00CC66;
            width: 232px;
        }
    </style>
</head>
<body>  
    <form id="form1" runat="server"  >  
       
        <div style="background-image:url('n.jpg');">  
            <h1 style="text-align: center; background-color: #99FF66">                       test Form </h1>
            <table class="auto-style1" align="center">  
                <tr>  
                    <td class="auto-style8"> Student Name </td>  
                    <td class="auto-style7">  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter Student name" SetFocusOnError="True" CssClass="auto-style14">*Name Can&#39;t Be Empty</asp:RequiredFieldValidator>
                    </td>  
  
               </tr>  
                <tr>  
                    <td class="auto-style9">Student ID</td>  
                     <td class="auto-style6"> <asp:TextBox ID="TextBox2" runat="server"  CssClass="auto-style14"></asp:TextBox><span class="auto-style12">&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid Student ID" ForeColor="#FF3300" MaximumValue="99" MinimumValue="1" SetFocusOnError="True" Type="Integer" CssClass="auto-style14">*Invalid Student ID</asp:RangeValidator>
                         </span></td>  
                </tr>  
                
                <tr>  
                    <td class="auto-style9">Semester</td>  
                    <td class="auto-style6">  
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>  
                </tr>  
               
                <tr>  
                    <td class="auto-style9">Email</td>  
                    <td class="auto-style6">  
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style14"></asp:TextBox>  
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="EmailNotValid" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style14">*Invalid Email</asp:RegularExpressionValidator>
                    </td>  
                </tr>  

                <tr>  
                    <td class="auto-style9">Mobile</td>  
                    <td class="auto-style6">  
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style14"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*Mobile Number required" SetFocusOnError="True" CssClass="auto-style14">*Mobile Number Invalid</asp:RequiredFieldValidator>
                    </td>  
                </tr> 




                <tr>  
                    <td class="auto-style15">  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>  
                </tr>  


            </table>  
        </div>  
        
       
        
    </form>  

    </body>  

</html>
