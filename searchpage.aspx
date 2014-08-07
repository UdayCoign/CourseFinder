<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Usermasterpage.master"   CodeFile="searchpage.aspx.cs" Inherits="searchpage" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="content1" runat="server">
    <table >
            <tr>
                <td style="width: 100px">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/UserHome.aspx">Home</asp:HyperLink>
                    <br />
                    <br />
        <br />
                    You are logged
                    in as &nbsp;<br />
        <asp:Label ID="Label1" runat="server" style="z-index: 101; left: 573px; position: absolute; top: 287px" ></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="University Name" Width="124px"></asp:Label></td>
                <td style="width: 100px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblsession" runat="server" Style="z-index: 102; left: 569px; position:static;
                        top: 131px"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="ddluniversity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddluniversity_SelectedIndexChanged" Width="88px">
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;<br />
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Select Univercity" ControlToValidate="ddluniversity" 
                        InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td style="width: 100px">
                    &nbsp;</td>
                <td style="width: 100px">
                    &nbsp;</td>
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
            
            <tr>
                <td style="width: 100px; height: 24px;">
                    <asp:Label ID="lblcource" runat="server" Text="Course Name"></asp:Label></td>
                <td style="width: 100px; height: 24px;">
                    <asp:DropDownList ID="ddlcoursename" runat="server" OnSelectedIndexChanged="ddlcoursename_SelectedIndexChanged" Enabled="False" Width="87px">
                    </asp:DropDownList></td>
                <td style="width: 100px; height: 24px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="Search" />
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            </table>
        <asp:Label ID="Label3" runat="server" Width="183px"></asp:Label>&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
    &nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" Style="z-index: 103; left: 450px; position: absolute;
            top: 342px">
        </asp:GridView>

</asp:Content>   