using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {        if(DropDownList1.Text=="All")
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM products WHERE ProductPurpose='Animals'";
        }
        else
        {
        SqlDataSource1.SelectCommand = "SELECT * FROM products WHERE ProductPurpose='Animals' AND Descr='"+ DropDownList1.Text +"' ";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
