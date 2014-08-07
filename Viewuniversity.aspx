<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Usermasterpage.master"   CodeFile="Viewuniversity.aspx.cs" Inherits="Viewuniversity" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="content1" runat="server">
<div>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
            PostBackUrl="~/UserHome.aspx" OnClick="LinkButton1_Click"
           >Home</asp:LinkButton><br />
    <br />
    &nbsp; You are logged in as
    <asp:Label ID="lblsession" runat="server"></asp:Label>
    <br />
    <br />
    <table style="height: 69px">
        <tr>
            <td style="width: 100px">
                <img src="Images/man-magnifying-glass-left-large.png" /></td>
        </tr>
    </table>
    <br />
        <asp:GridView ID="GridViewUniversity" runat="server" Height="165px" Width="248px" OnSelectedIndexChanged="GridViewUniversity_SelectedIndexChanged">
        </asp:GridView>
    </div>

</asp:Content>   
