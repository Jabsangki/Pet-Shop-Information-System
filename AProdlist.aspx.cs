using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class AddImg : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //
        }
        else
        {
if(wew.ddlist=="All")
{
 SqlDataSource1.SelectCommand = "Select * from products";
        }
else 
{
            SqlDataSource1.SelectCommand = "Select * from products where ProductPurpose='" + wew.ddlist + "'";
            if (Convert.ToInt32(Session["PageIndex"]) != 0)
            {
                GridView1.PageIndex = Convert.ToInt32(Session["PageIndex"]);
            }
}
}
    }

    protected void index(object sender, EventArgs e)
    {
        Session["PageIndex"] = GridView1.PageIndex;
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    private void ddlist()
    {
        if (DropDownList1.Text == "Groom")
        {
            SqlDataSource1.SelectCommand = "Select * from products where ProductPurpose='Groom'";
            wew.ddlist = "Groom";
        }
        else if (DropDownList1.Text == "medical")
        {
            SqlDataSource1.SelectCommand = "Select * from products where ProductPurpose='medical'";
            wew.ddlist = "medical";
        }
        else if (DropDownList1.Text == "Accessories")
        {
            SqlDataSource1.SelectCommand = "Select * from products where ProductPurpose='Accessories'";
            wew.ddlist = "Accessories";
        }
        else if (DropDownList1.Text == "Animals")
        {
            SqlDataSource1.SelectCommand = "Select * from products where ProductPurpose='Animals'";
            wew.ddlist = "Animals";
        }
        else if (DropDownList1.Text == "Others")
        {
            SqlDataSource1.SelectCommand = "Select * from products where ProductPurpose='Others'";
            wew.ddlist = "Others";
        }
        else
        {
            SqlDataSource1.SelectCommand = "Select * from products";
            wew.ddlist="All";
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ddlist();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/AddProducts.aspx");
    }
}









