<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Usermasterpage.master"  CodeFile="Viewcourse.aspx.cs" Inherits="Viewcourse" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="content1" runat="server">

 <div>
        &nbsp;&nbsp;&nbsp;
     <br />
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/UserHome.aspx">Home</asp:HyperLink>
     <br />
     <br />
     You are logged in as
     <asp:Label ID="lblsession" runat="server"></asp:Label>
     <br />
     <br />
     <br />
     <table>
         <tr>
             <td style="width: 100px">
                 <img src="Images/diploma2.jpg" /></td>
         </tr>
     </table>
     <br />
        <asp:GridView ID="Gridcourse" runat="server" Height="155px" Width="232px">
        </asp:GridView>
    </div>

</asp:Content>   