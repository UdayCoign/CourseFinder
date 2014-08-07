using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient; 

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = txtusername.Text.ToString();
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtusername.Text == "admin" && txtpasswod.Text == "admin")
        {
            Response.Redirect("~/Admin/Adminhome.aspx");
        }
        else
            lblmessage.Visible = true;
        lblmessage.Text = "You are not a valid user......";

    }
}
