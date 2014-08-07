<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-image: url(Images/palm-template.jpg)">
    <form id="form1" runat="server">
    <div>
    
<table id="TABLE1" style="z-index: 100; left: 0px; position: absolute; top: 0px; width: 951px; height: 539px;" onclick="return TABLE1_onclick()">
    <tr>
        <td style="height: 35px;" colspan="2">
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 36pt; color: #ff3399">COURSE FINDER</span></td>
    </tr>
    <tr>
        <td style="width: 96px; height: 452px;">
            We
            Provide our sevice....<br />
            <br />
            <table style="z-index: 100; left: 11px; position: absolute; top: 313px">
                <tr>
                    <td style="width: 100px">
                        <img src="../Images/Verbal-online.jpg" style="z-index: 100; left: 0px; width: 194px;
                            position: absolute; top: 0px; height: 208px" />
                    </td>
                </tr>
            </table>
        </td>
        <td style="width: 99px; height: 452px;">
            <table>
                <tr>
                    <td style="width: 100px">
                        <asp:label id="lblusername" runat="server" text="Username"></asp:label>
                    </td>
                    <td style="width: 100px">
                        <asp:textbox id="txtusername" runat="server"></asp:textbox>
                    </td>
                    <td style="width: 100px">
                        <asp:requiredfieldvalidator id="requsername" runat="server" controltovalidate="txtusername"
                            errormessage="Enter user name" height="23px" width="107px"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:label id="lblpassword" runat="server" text="Password"></asp:label>
                    </td>
                    <td style="width: 100px">
                        <asp:textbox id="txtpasswod" runat="server" textmode="Password" width="149px"></asp:textbox>
                    </td>
                    <td style="width: 100px">
                        <asp:requiredfieldvalidator id="reqpassword" runat="server" controltovalidate="txtpasswod"
                            errormessage="Enter Password"></asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 33px">
                        <asp:button id="btnsubmit" runat="server" onclick="btnsubmit_Click" text="Submit" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;
                        <asp:label id="lblmessage" runat="server" forecolor="Silver" visible="False" width="88px"></asp:label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" 
                style="font-weight: 700; font-size: large">Go to UserLogin</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style="height: 14px;" colspan="2">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: #c0c0c0">&nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="color: black">Copyright © 2009 Coign Consultants.
                    All rights reserved</span></span></td>
    </tr>
</table>

   
    </div>
    </form>
</body>
</html>


  