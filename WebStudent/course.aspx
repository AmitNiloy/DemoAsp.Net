<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="WebStudent.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Course</title>
    <style type="text/css">
       body{
           background-image:url("n.jpg")
       }
        .auto-style1 {
            border-style: groove;
            height: 430px;
            background-color: #FFCC99;
            width: 574px;
            color: #CCFFFF;
        }
        .auto-style2 {
            border: 1px outset #0000FF;
            padding: 1px 4px;
            background-color: #66CCFF;
            width: 383px;
        }
        .auto-style3 {
            border-style: solid;
            border-color: #00FF00;
            color: #000000;
            background-color: #CCFFFF;
            text-align: center;
        }
        .auto-style4 {
            color: #FF0000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>  

    <form id="WebForm2" runat="server">  
        <div  style="background-image:url('Images/back.jpg.jpg');" >  
            <h1 style="text-align: center; color: #003399; background-color: #FF9900">  Course Form </h1>
            <table class="auto-style1" align="center">  

                 <tr>  
                    <td class="auto-style3"> Student ID :</td>  
                    <td class="auto-style2">  
                        <asp:DropDownList ID="DropDownStuID" runat="server" DataSourceID="SqlDataSource1" DataTextField="StudentID" DataValueField="StudentID" CssClass="auto-style4" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownStuID" ErrorMessage="Select StudentID" ForeColor="#FF3300" SetFocusOnError="True">*Select StudentID</asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="getStudentID" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </td>  
  
               </tr>  

                <tr>  
                    <td class="auto-style3"> Course ID :</td>  
                    <td class="auto-style2">  
                        <asp:TextBox ID="CourseIDBox" runat="server" CssClass="auto-style4"></asp:TextBox>  
                    <asp:RangeValidator ID="rvclass" 
               runat="server" ControlToValidate="CourseIDBox" 
               ErrorMessage="*Enter  Course ID (1 - 50)" MaximumValue="50" 
               MinimumValue="1" Type="Integer" Display="Dynamic" ForeColor="#FF3300" SetFocusOnError="True"></asp:RangeValidator>
                    </td>  
  
               </tr>  
                <tr>  
                    <td class="auto-style3">Course Credit</td>  
                     <td class="auto-style2"> <asp:TextBox ID="CreditBox" runat="server" CssClass="auto-style4"></asp:TextBox></td>  
                </tr>  
                
               
               
                <tr>  
                    <td class="auto-style3">Course Name</td>  
                    <td class="auto-style2">  
                        <asp:TextBox ID="CourseNameBox" runat="server" CssClass="auto-style4"></asp:TextBox>  
                       <asp:RequiredFieldValidator ID="CourseNameRequiredFieldValidator1" runat="server" ControlToValidate="CourseNameBox" Display="Dynamic"  ForeColor="#FF3300" ErrorMessage="Enter Course name" SetFocusOnError="True">*CourseName Can&#39;t Be Empty</asp:RequiredFieldValidator>
                    </td>  
                </tr>  

                <tr>  
                    <td class="auto-style3">Total Marks</td>  
                    <td class="auto-style2">  
                        <asp:TextBox ID="MarksBox" runat="server" CssClass="auto-style4"></asp:TextBox>  
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="MarksBox" Display="Dynamic" ErrorMessage="Obtained Marks Invalid" ForeColor="#FF3300" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type="Double">*Marks Range (1-100)</asp:RangeValidator>
                    </td>  
                </tr> 
                <tr>  
                    <td class="auto-style3">Obtained Marks</td>  
                    <td class="auto-style2">  
                        <asp:TextBox ID="obtainedBox" runat="server" CssClass="auto-style4"></asp:TextBox>  
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="obtainedBox" Display="Dynamic" ErrorMessage="RangeValidator" ForeColor="#FF3300" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type="Double">* Obtained Marks Range (1-100)</asp:RangeValidator>
                    </td>  
                </tr> 



                <tr>  
                    <td class="auto-style3">  
                         <asp:Button ID="Button2" runat="server"  Text="Submit" Width="136px" OnClick="Button2_Click" />
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html>
