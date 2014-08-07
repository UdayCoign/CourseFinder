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

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    int status = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {
            con.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
            con.Open();
            string query1 = "insert into TB_users values('" + txtusername.Text + "','" + txtpassword.Text + "','" + txtemail.Text + "')";
            string query = "insert into TB_userdetails values('" + txtusername.Text + "','" + txtdescription.Text + "','" + txtphone.Text + "','"+txtemail.Text+"')";
            cmd.Connection = con;
            cmd.CommandText = query1;
            cmd.CommandType = CommandType.Text;
            i = cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.CommandType = CommandType.Text;
            status =cmd1.ExecuteNonQuery();
            if (i != 0)
            {
                Label2.Text = "Registered Success..............."; 
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Btnback_Click1(object sender, EventArgs e)
    {
       
    }
}
