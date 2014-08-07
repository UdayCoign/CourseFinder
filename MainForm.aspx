<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="MainForm.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Course Finder</title>
</head>
<body style="background-image: url(Images/palm-template.jpg)">
    <form id="form1" runat="server">
    <div>
   <center > <h1>Welcome To Course Finder &nbsp;
       <asp:HyperLink ID="Hypadmin" runat="server" Style="z-index: 100; left: 345px; position: absolute;
           top: 379px" NavigateUrl="~/Admin/AdminLogin.aspx">Admin</asp:HyperLink>
       <asp:HyperLink ID="Hypusers" runat="server" Style="z-index: 102; left: 354px; position: absolute;
           top: 236px" NavigateUrl="~/Default.aspx">users</asp:HyperLink>
   </h1></center>
    
    </div>
    </form>
</body>
</html>
