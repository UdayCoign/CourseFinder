<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body style="background-image: url(Images/palm-template.jpg)">
    <form id="form1" runat="server">
    <div >
        <table style="left: 334px; position: relative; top: 175px; z-index: 103;">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblusername" runat="server" Text="UserName :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfduname" runat="server" ErrorMessage="Enter Your Username" ControlToValidate="txtusername" Width="144px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Confirm Pwd"></asp:Label>
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtcpwd" runat="server"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfdpassword" runat="server" ErrorMessage="Enter your Password" ControlToValidate="txtpassword" Width="144px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpassword" ControlToValidate="txtcpwd" 
                        ErrorMessage="Password Missmatch"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="rfvadress" runat="server" ErrorMessage=" Enter  Your address" ControlToValidate="txtaddress" Width="139px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblphoneno" runat="server" Text="Phone No"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfvphoneno" runat="server" ErrorMessage="Enter your phone no" ControlToValidate="txtphone" Width="129px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label></td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="rfvdescription" runat="server" ErrorMessage="Enter Your Description" ControlToValidate="txtdescription" Width="140px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                    <br />
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td style="width: 100px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="137px"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter Emailid"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Btnregister" runat="server" Text="Register" OnClick="btnsubmit_Click" />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Black" Style="z-index: 101;
            left: 446px; position: absolute; top: 51px" Text="Registration Form"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Default.aspx"
            Style="z-index: 102; left: 1007px; position: absolute; top: 46px" 
            Width="128px">Back To Login</asp:LinkButton>
        </div>
    </form>
</body>
</html>
