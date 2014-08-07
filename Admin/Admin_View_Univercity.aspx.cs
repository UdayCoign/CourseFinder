using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Admin_Admin_View_Univercity : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        con.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
        con.Open();
        string query = "select UniversityName,Address,Country from TB_University";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(ds, "TB_University");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
