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

public partial class searchpage : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsession.Text = Session["username"].ToString();
        
        if (IsPostBack == false)
        {


            conn.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select UniverSityCode,UniversityName from TB_University", conn);

            sda.Fill(ds);
            ddluniversity.DataSource = ds;
            ddluniversity.DataTextField="UniversityName";
            ddluniversity.DataValueField = "UniverSityCode";
            ddluniversity.DataBind();
            ddluniversity.Items.Insert(0, "Select");
        }


    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        DataSet ds=new DataSet ();
        lblcource.Visible = false;
        Label2.Visible = false;
        ddlcoursename.Visible = false;
        ddluniversity.Visible = false; 
        Label3.Text = Session["userid"] + "Courses offred by" + ddluniversity.SelectedItem +    "details are";
        conn.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
        conn.Open();
        string query = "select * from TB_Course where CourseName='" + ddlcoursename.SelectedItem   + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        da.Fill(ds, "course");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind(); 
        btnsearch.Visible = false;
    }
    protected void ddlcoursename_SelectedIndexChanged(object sender, EventArgs e)
    {
        

    }
    protected void ddluniversity_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcoursename.Items.Clear();
            int i = 0;
            SqlDataReader dr;
            conn.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = "select CourseName from TB_Course where UniverSitycode="+ddluniversity.SelectedValue;
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                while (i < dr.FieldCount)
                {
                    ddlcoursename.Items.Add(dr[i].ToString());
                    i++;
                }
                ddlcoursename.Enabled = true;
            }
            else
                ddlcoursename.Enabled = false;
        
            while (dr.Read())
            {            

                i= 0;
                while (i < dr.FieldCount)
                {
                    ddlcoursename.Items.Add(dr[i].ToString());
                    i++;
                }
               
            }
            dr.Close();
            conn.Close();
        

    }
}
