using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["z1807780ConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connString))
        {
            SqlCommand cmd = new SqlCommand("CheckUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter UserName = new SqlParameter("username", UserNameTxt.Text);
            SqlParameter Password = new SqlParameter("password", PasswordTxt.Text);
            cmd.Parameters.Add(UserName);
            cmd.Parameters.Add(Password);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                loginerrorlbl.Text = "Login successful";
                Response.Redirect("~/Mobile.aspx");
            }

            else
            {
                loginerrorlbl.Text = "Invalid username or password";

            }

           
        }
    }
}