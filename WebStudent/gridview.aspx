<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridview.aspx.cs" Inherits="WebStudent.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" DataKeyNames="StudentID,CourseID" DataSourceID="SqlDataSource1" BorderStyle="None" CellSpacing="2" OnRowCommand="Gridview1_RowCommand" style="border-style: outset; padding: 2px; text-align: center">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="StudentID" HeaderText="Student ID" ReadOnly="True" SortExpression="StudentID">
                <FooterStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="SemesterID" HeaderText="Semester ID" SortExpression="SemesterID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="CourseID" HeaderText="Course ID" ReadOnly="True" SortExpression="CourseID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="CourseName" HeaderText="Course Name" SortExpression="CourseName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ObtainedMarks" HeaderText="Obtained Marks" SortExpression="ObtainedMarks">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Delete Row" Text="Delete" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" DeleteCommand="deleteProc" DeleteCommandType="StoredProcedure" SelectCommand="tableJoin" SelectCommandType="StoredProcedure" UpdateCommand="updateProc" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="StudentID" Type="Int32" />
                <asp:Parameter Name="SemesterID" Type="String" />
                <asp:Parameter Name="CourseID" Type="Int32" />
                <asp:Parameter Name="CourseName" Type="String" />
                <asp:Parameter Name="ObtainedMarks" Type="Double" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="StudentID" Type="Int32" />
                <asp:Parameter Name="SemesterID" Type="String" />
                <asp:Parameter Name="CourseID" Type="Int32" />
                <asp:Parameter Name="CourseName" Type="String" />
                <asp:Parameter Name="ObtainedMarks" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Height="28px" OnClick="Button2_Click" Text="Go Back" Width="75px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#FF9900" BorderColor="#FF9900" BorderStyle="Dashed" BorderWidth="1px" ForeColor="Black" OnClick="Button1_Click" Text="Next Page" Width="96px" />
    </form>
</body>
</html>
