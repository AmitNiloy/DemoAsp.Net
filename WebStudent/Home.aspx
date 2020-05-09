<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebStudent.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        body{
            background-image:url("n.jpg");
        }

        *{
            margin:0px;
            padding:0px;

        }

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: yellow;
    color:black
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="register.aspx">Registration</a></li>
  <li><a href="course.aspx">Course</a></li>
  <li><a href="gridview.aspx">Data Gridview </a></li>
  <li><a href="searchData.aspx">Search Data</a></li>
   <li><a href="selectRowPopUP.aspx">Table Info </a></li>   
    <li><a href="Semester.aspx">Semester </a></li>  
  
</ul>
    </div>
    </form>
</body>
</html>
