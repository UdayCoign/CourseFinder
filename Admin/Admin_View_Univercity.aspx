<%@ Page Language="C#" MasterPageFile="~/Admin/Adminmaster.master" AutoEventWireup="true" CodeFile="Admin_View_Univercity.aspx.cs" Inherits="Admin_Admin_View_Univercity" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <br />
</p>
<p>
    <img alt="o" longdesc="ui" src="Untitledwe_5.jpg" 
        style="width: 527px; height: 224px" /></p>
<p>
    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
</p>
<p>
</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

