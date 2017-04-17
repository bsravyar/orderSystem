
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Mobile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProceedToPaymentBtn.Enabled = false;
    }

    int totalamount = 0;
    int price;
    int priceUpdate;

    protected void ViewDetailsBtn_Click(object sender, EventArgs e)
    {

        DataTable dtgetselectedproducts = new DataTable();
        //DataRow dr;

        dtgetselectedproducts.Columns.AddRange(new DataColumn[3] { new DataColumn("Phone"), new DataColumn("Price"), new DataColumn("Quantity") });

        foreach (GridViewRow gview in GridView1.Rows)
        {
            if (gview.RowType == DataControlRowType.DataRow)
            {
                CheckBox checkSelect = (gview.Cells[0].FindControl("SelectCheckBoxId") as CheckBox);
                if (checkSelect.Checked)
                {
                    ProceedToPaymentBtn.Enabled = true;
                    string phone = gview.Cells[2].Text;
                    price = Convert.ToInt16(gview.Cells[3].Text);
                    int quantity = Convert.ToInt16((gview.Cells[4].FindControl("DropDownList1") as DropDownList).Text);
                    int totalproductprice = price * quantity;
                    totalamount = totalamount + totalproductprice;

                    dtgetselectedproducts.Rows.Add(phone, price, quantity);
                    totalamountLbl.Text = "$" + Convert.ToString(totalamount);

                    Session["totalamount"] = totalamountLbl.Text;
                }
            }
        }
        GridView2.DataSource = dtgetselectedproducts;
        GridView2.DataBind();

    }
    //Updating the price of mobile on changing storage capacity
    protected void capacityChange(object sender, EventArgs e)
    {
        foreach (GridViewRow gviewprice in GridView1.Rows)
        {
            int basePrice = Convert.ToInt16(gviewprice.Cells[3].Text);
            int priceUpdate = 0;
            CheckBox checkSelect = (gviewprice.Cells[0].FindControl("SelectCheckBoxId") as CheckBox);
            if (checkSelect.Checked)
            {
                string ddSelect = (gviewprice.Cells[6].FindControl("DropDownList3") as DropDownList).Text;
                if (ddSelect == "32GB")
                {
                    basePrice = Convert.ToInt16(gviewprice.Cells[3].Text);
                    gviewprice.Cells[3].Text = Convert.ToString(basePrice);
                }
                else if (ddSelect == "64GB")
                {
                    priceUpdate = basePrice + 100;
                    gviewprice.Cells[3].Text = Convert.ToString(priceUpdate);
                }
                else
                {
                    priceUpdate = basePrice + 200;
                    gviewprice.Cells[3].Text = Convert.ToString(priceUpdate);
                }
            }
        }
    }

    protected void ProceedToPaymentBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MakePayment.aspx");
    }

}



