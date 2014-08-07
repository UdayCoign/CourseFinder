<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Admin/Adminmaster.master"  CodeFile="addcourse.aspx.cs" Inherits="addcourse" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="contentadcourse" runat="server">   
    
        <table>
            <tr>
                <td style="width: 100px; height: 21px;">
                    &nbsp;</td>
                <td style="width: 123px; height: 21px; color: #0000FF;">
                    <b>ADD COURSES</b></td>
                <td style="width: 100px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lbluname" runat="server" Text="University Name " Width="112px"></asp:Label></td>
                <td style="width: 123px">
                    <asp:DropDownList ID="Dbluniversityname" runat="server" OnSelectedIndexChanged="Dbluniversityname_SelectedIndexChanged">
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="Dbluniversityname" ErrorMessage="Select Univercity" 
                        InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblcname" runat="server" Text="Course Name"></asp:Label></td>
                <td style="width: 123px">
                    <asp:TextBox ID="txtcname" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfdcname" runat="server" ErrorMessage="Enter Your Course Name" ControlToValidate="txtcname"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblcduration" runat="server" Text="Course Duration" Width="118px"></asp:Label></td>
                <td style="width: 123px">
                    <asp:TextBox ID="txtcduration" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfdcduration" runat="server" ErrorMessage="Enter Your Course Duration" ControlToValidate="txtcduration" Width="116px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 48px;">
                    <asp:Label ID="lblcfee" runat="server" Text="Course Fee"></asp:Label></td>
                <td style="width: 123px; height: 48px;">
                    <asp:TextBox ID="txtcfee" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 48px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtcfee" ErrorMessage="Enter Fees"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Label ID="lblcdescription" runat="server" Text="Course Description"></asp:Label></td>
                <td style="width: 123px; height: 26px">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="rfdcdescription" runat="server" ErrorMessage="Enter Your Course Description" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 123px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 123px">
                    <asp:Button ID="Btnadd" runat="server" Text="ADD" OnClick="Btnadd_Click" /></td>
                <td style="width: 100px">
                    </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" 
    CausesValidation="False" PostBackUrl="~/Admin/Adminhome.aspx"
           >Home</asp:LinkButton>
    </asp:Content>
    <asp:Content ContentPlaceHolderID="ContentPlaceHolder2" ID="contentimage" runat="server">
        &nbsp;
    </asp:Content>   