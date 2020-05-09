<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarksForm.aspx.cs" Inherits="WebStudent.MarksForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" DataKeyNames="StudentID,CourseID" DataSourceID="SqlDataSource1" BorderStyle="None" CellSpacing="2" OnRowCommand="Gridview1_RowCommand">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="StudentID" HeaderText="Student ID" SortExpression="StudentID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="courseID" HeaderText="course ID" ReadOnly="True" SortExpression="courseID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="courseName" HeaderText="course Name" SortExpression="courseName">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="SemesterID" HeaderText="Semester ID" SortExpression="SemesterID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="MarksPercentage" HeaderText="Percentage Of Marks" ReadOnly="True" SortExpression="MarksPercentage">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="Delete Row" Text="Delete" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" DeleteCommand="deleteProc" DeleteCommandType="StoredProcedure" SelectCommand="markscalculate" SelectCommandType="StoredProcedure" UpdateCommand="updateProc" UpdateCommandType="StoredProcedure">
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
        <br />
    </form>
</body>
</html>
