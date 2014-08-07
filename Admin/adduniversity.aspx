<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Adminmaster.master"   CodeFile="adduniversity.aspx.cs" Inherits="adduniversity" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="contentadduiv" runat="server">  

        <table>
            <tr>
                <td style="width: 100px; height: 40px;">
                    <asp:Label ID="lbladduniversity" runat="server" Text="ADD UNIVERSITY" Width="151px"></asp:Label></td>
                <td style="width: 100px; height: 40px;">
                </td>
                <td style="width: 100px; height: 40px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblucode" runat="server" Text="University Code" Width="122px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtucode" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="Rfdcode" runat="server" ErrorMessage="Enter University Code" ControlToValidate="txtucode" Width="186px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lbluname" runat="server" Text="University Name" Width="119px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="Rfvuname" runat="server" ErrorMessage="Enter Your University Name" ControlToValidate="txtuname" Width="176px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Label ID="lbllocation" runat="server" Text="Location"></asp:Label></td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="rfvlocation" runat="server" ErrorMessage="Enter Your Location" ControlToValidate="txtlocation" Width="137px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="lblcountry" runat="server" Text="Country"></asp:Label></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                    <asp:RequiredFieldValidator ID="rfvcountry" runat="server" ErrorMessage="Enter Your Country name" ControlToValidate="txtcountry" Width="172px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    &nbsp;
                    <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" /></td>
                <td style="width: 100px">
                    </td>
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
        <asp:LinkButton ID="LinkButton1" runat="server" 
    CausesValidation="False" PostBackUrl="~/Admin/Adminhome.aspx"
            >Home</asp:LinkButton>
    
</asp:Content> 