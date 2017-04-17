using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class MakePayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["totalamount"] != null)
        {
            GrandTotalLbl.Text = Session["totalamount"].ToString();
        } 
    }

    protected void SubmitPaymentBtn_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["z1807780ConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connString))
        {
            SqlCommand cmd = new SqlCommand("sp_payment_details", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter Name = new SqlParameter("@Name", UserNamePaymentTxt.Text);
            SqlParameter Address = new SqlParameter("@Address", AddressPaymentTxt.Text);
            SqlParameter CardNumber = new SqlParameter("@CardNumber", CardNumberTxt.Text);

            cmd.Parameters.Add(Name);
            cmd.Parameters.Add(Address);
            cmd.Parameters.Add(CardNumber);

            conn.Open();

            cmd.ExecuteNonQuery();

            Response.Redirect("~/Thankyou.aspx");

            conn.Close();
               
        }
    }
}