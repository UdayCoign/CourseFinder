<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="sample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-image: url(Images/palm-template.jpg)">
    <form id="form1" runat="server">
    <div>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;<span style="font-size: 36pt; color: #ff3399"> COURSE FINDER</span><br />
        &nbsp;
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" c Height="210px" Width="318px">
        </asp:Login>
        <img src="Images/image001.gif" style="z-index: 100; left: 336px; width: 596px; position: absolute;
            top: 109px; height: 366px" />
        <asp:Label ID="lblmessage" runat="server"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx" >New User Click Here</asp:HyperLink>
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:HyperLink ID="hypforgorpassword" runat="server" NavigateUrl="~/Forgotuser.aspx" Width="215px">Click Here for Forgot Password</asp:HyperLink></td>
            </tr>
        </table>
    </div>
        <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/Admin/AdminLogin.aspx">Admin Login</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Copyright
        © 2009 Coign Consultants. All rights reserved<br />
    </form>
</body>
</html>
