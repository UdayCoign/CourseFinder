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
using System.Data.SqlClient ; 

public partial class Viewcourse : System.Web.UI.Page
{
    
        SqlConnection con = new SqlConnection();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsession.Text = Session["username"].ToString();
    
       try
        {
            DataSet ds = new DataSet();
            con.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
            con.Open();
            string query = "select CourseName from TB_Course";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill (ds,"university");
             Gridcourse.DataSource =ds.Tables[0];
            Gridcourse.DataBind ();
  
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
       }
    protected void Btnback_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnback_Click(object sender, EventArgs e)
    {
Response.Redirect("AddForm.aspx");
    }
}

