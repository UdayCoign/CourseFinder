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

public partial class adduniversity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int i=0;
        try
        {
            con.ConnectionString = ConfigurationManager.AppSettings ["conn"].ToString();
            con.Open();
            string query = "insert into TB_University values('"+txtucode.Text+"','"+txtuname.Text +"','"+txtcountry.Text +"','"+txtlocation.Text+"')";
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
           i= cmd.ExecuteNonQuery();
           if (i!=0)
           {
               Response.Write("inserted successfully");
           }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddForm.aspx");
    }
}
