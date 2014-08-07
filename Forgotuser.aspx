<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotuser.aspx.cs" Inherits="Forgotuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 328px;
            height: 29px;
        }
        .style2
        {
            width: 100px;
            height: 29px;
        }
    </style>
</head>
<body style="background-image: url(Images/palm-template.jpg)">
    <form id="form1" runat="server">
    <div>
        &nbsp;<table style="width: 948px; height: 491px">
            <tr>
                <td colspan="2">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 36pt;
                        color: #ff3399"> COURSE FINDER</span></td>
            </tr>
            <tr>
                <td style="width: 111px; height: 410px">
                    We Provide Our Services.....
                    <img src="Images/Verbal-online.jpg" style="z-index: 100; left: 10px; width: 167px;
                        position: absolute; top: 338px; height: 172px" />
                    .</td>
                <td style="width: 100px; height: 410px">
                    &nbsp;<asp:HiddenField ID="HiddenField1" runat="server" />
                    <table>
                        <tr>
                            <td style="width: 328px">
                            <asp:Label ID="lblusername" Text="Enter ur Email ID" runat="server" Width="168px"></asp:Label> 
                            </td>
                            <td style="width: 100px">
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="Enter Valid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td class="style1">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" /></td>
                            <td class="style2">
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Back 
                    to Login</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Copyright © 2009 Coign Consultants.
                    All rights reserved<br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
