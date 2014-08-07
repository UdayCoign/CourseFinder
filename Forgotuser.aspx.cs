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
using System.Net.Mail;
using System.Data.SqlClient; 


public partial class Forgotuser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());


    protected void Page_Load(object sender, EventArgs e)
    {
        

        con.Open(); 
        

    }

   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string queri = "SELECT Pwd FROM TB_Users WHERE Email='" + txtEmail.Text + "'";
        SqlCommand command = new SqlCommand(queri, con);
        command.CommandType = CommandType.Text;
        SqlDataReader dr;
        dr = command.ExecuteReader();
        string str = "";
        if(dr.HasRows)
        {
            dr.Read();
             str=dr[0].ToString();

        }

        string from = "coursefinder.coursefinder@gmail.com";//Replace this with your own correct Gmail Address

        string to = txtEmail.Text; //Replace this with the Email Address to whom you want to send the mail

        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(to);
        mail.From = new MailAddress(from, "From Gmail port", System.Text.Encoding.UTF8);
        mail.Subject = "This is Ur Password";
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = "This is ur password '" + str+ "'";
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;

        SmtpClient client = new SmtpClient();
        //Add the Creddentials- use your own email id and password

        client.Credentials = new System.Net.NetworkCredential(from, "54995499");

        client.Port = 587; // Gmail works on this port
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true; //Gmail works on Server Secured Layer
        try
        {
            client.Send(mail);
        }
        catch (Exception ex)
        {
            Exception ex2 = ex;
            string errorMessage = string.Empty;
            while (ex2 != null)
            {
                errorMessage += ex2.ToString();
                ex2 = ex2.InnerException;
            }
            HttpContext.Current.Response.Write(errorMessage);
        } // end try 
    }

    }
