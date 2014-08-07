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


public partial class sample : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"]= Login1.UserName.ToString();
     
        bool cookieExists = (Request.Cookies["authUser"] != null);
        Login1.RememberMeSet = cookieExists;
        if (cookieExists)
        {
            HttpCookie cookie = Request.Cookies.Get("authUser");
            string authUserName = cookie.Values["authUserName"];
            string authPassword = cookie.Values["authToken"];
            TextBox txtUserName = (TextBox)Login1.FindControl("UserName");
            txtUserName.Text = authUserName;
            ((TextBox)Login1.FindControl("Password")).Focus();
        }

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        CheckBox rm = (CheckBox)Login1.FindControl("RememberMe");
        bool _RememberChecked = rm.Checked;
        if (_RememberChecked)
        {
            HttpCookie authUser = new HttpCookie("authUser");
            Response.Cookies.Remove("authUser");
            Response.Cookies.Add(authUser);
            authUser.Values.Add("authUserName", this.Login1.UserName);
            authUser.Values.Add("authToken", this.Login1.Password);
            DateTime dtExpiry = DateTime.Now.AddDays(15);
            Response.Cookies["authUser"].Expires = dtExpiry;
        }
        else Response.Cookies["authUser"].Expires = DateTime.Now.AddDays(-10);

        bool Authenticated = false;
        Authenticated = AuthenticationMethod(Login1.UserName, Login1.Password);
        e.Authenticated = Authenticated;
        if (Authenticated == true)
        {
            Response.Redirect("UserHome.aspx");
        }

    }
    private bool AuthenticationMethod(string UserName, string Password)
    {
        Session["username"]=Login1.UserName.ToString();   
        SqlConnection con = new SqlConnection();
        bool boolReturnValue = false;
        
        con.ConnectionString = ConfigurationManager.AppSettings["conn"].ToString();
        con.Open();
     String strSQL = "Select * From TB_Users where UserName='"+Login1.UserName+"' and Pwd='"+Login1.Password+"'" ;
        SqlCommand command = new SqlCommand(strSQL,con);
        SqlDataReader Dr;
        Dr = command.ExecuteReader();
        while (Dr.Read())
        {
            if ((UserName == Dr["UserName"].ToString()) & (Password == Dr["Pwd"].ToString()))
            {
                boolReturnValue = true;
              
            }
            Dr.Close();
            return boolReturnValue;
            
        }
        return false;
    }
}

