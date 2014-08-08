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

public partial class addcourse : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if (!IsPostBack)
            {
                try
                {
                    SqlDataReader dr;
                    //con.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
                    con.Open();


                    string query = "select UniversityName from TB_University";
                    cmd.Connection = con;
                    cmd.CommandText = query;
                    cmd.CommandType = CommandType.Text;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        Dbluniversityname.Items.Add(dr[0].ToString());
                       
                    }
                    Dbluniversityname.Items.Insert(0, "Select");

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


        
        
        }
    protected void Dbluniversityname_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Btnadd_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {
            SqlParameter pa;
            con.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
            con.Open();
            //string query = "Insert into TB_Course values()";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_insertcourse";
            pa = new SqlParameter("@uname", SqlDbType.VarChar);
            pa.Value = Dbluniversityname.Text;
            cmd.Parameters.Add(pa);

            pa = new SqlParameter("@CourseName", SqlDbType.VarChar);
            pa.Value = txtcname.Text;
            cmd.Parameters.Add(pa);

            pa = new SqlParameter("@duration", SqlDbType.VarChar);
            pa.Value = txtcduration.Text;
            cmd.Parameters.Add(pa);

            pa = new SqlParameter("@fee", SqlDbType.Money);
            pa.Value = Convert.ToDecimal(txtcfee.Text);
            cmd.Parameters.Add(pa);

            pa = new SqlParameter("@description", SqlDbType.VarChar);
            pa.Value = TextBox5.Text;

            cmd.Parameters.Add(pa);
            pa = new SqlParameter("@ucode", SqlDbType.Int);
            pa.Value = 4;

            cmd.Parameters.Add(pa);

            i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                Response.Write("inserted successfully");
            }
            else
            {
                Response.Write("not inserted successfully");
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
     
    }



    protected void Btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddForm.aspx");
    }
}
