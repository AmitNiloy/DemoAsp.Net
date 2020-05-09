<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Semester.aspx.cs" Inherits="WebStudent.Semester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Semester Form</title>
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
            <h1 style="text-align: center; background-color: #99FF66">                       Semester Form </h1>
            <table class="auto-style1" align="center">  
                <tr>  
                    <td class="auto-style8"> Semester Code </td>  
                    <td class="auto-style7">  
                        <asp:TextBox ID="semesterCode" runat="server" CssClass="auto-style14"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td class="auto-style9">Semester Name</td>  
                     <td class="auto-style6"> <asp:TextBox ID="SemesterName" runat="server"  CssClass="auto-style14"></asp:TextBox><span class="auto-style12">&nbsp;</span></td>  
                </tr>  
                
              
               
                <tr>  
                    <td class="auto-style9">CreateDate</td>  
                    <td class="auto-style6">  
                        <asp:TextBox ID="CreateDate" runat="server" CssClass="auto-style14" TextMode="Date"></asp:TextBox>  
                    </td>  
                </tr>  

                <tr>  
                    <td class="auto-style9">UpdateDate</td>  
                    <td class="auto-style6">  
                        <asp:TextBox ID="UpdateDate" runat="server" CssClass="auto-style14" Height="22px" TextMode="Date"></asp:TextBox>  
                    </td>  
                </tr> 




                <tr>  
                    <td class="auto-style15">  
                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="90px" OnClick="Button1_Click"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>  
                </tr>  


            </table>  
        </div>  
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button2_Click" Text="Go back" Width="86px" />
        </p>
    </form>  
</body>  
</html>

