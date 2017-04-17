using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegisterBtn_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["z1807780ConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connString))
        {
            SqlCommand cmd = new SqlCommand("sp_user_register", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter userName = new SqlParameter("@username", UserNameRegisterTxt.Text);
            SqlParameter password = new SqlParameter("@password", PasswordRegisterTxt.Text);
            SqlParameter email = new SqlParameter("@email", EmailRegisterTxt.Text);

            cmd.Parameters.Add(userName);
            cmd.Parameters.Add(password);
            cmd.Parameters.Add(email);

            conn.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();
            if (ReturnCode == -1)
            {
                usererrorLbl.Text = "UserName already exists, please use another name.";
            }

            else
            {
                Response.Redirect("~/Login.aspx");
            }
            conn.Close();
        }

        Response.Redirect("~/Login.aspx");

    }


}