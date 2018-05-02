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
        if (!IsPostBack)
        {
            //
        }
        else
        {
            if (Convert.ToInt32(Session["PageIndex"]) != 0)
            {
                GridView1.PageIndex = Convert.ToInt32(Session["PageIndex"]);
            }
        }
    }

    protected void index(object sender, EventArgs e)
    {
        Session["PageIndex"] = GridView1.PageIndex;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM `appointment` WHERE Username = '"+ txtusername.Text +"' ORDER BY `appointment`.`DateNow` DESC";
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM appointment ORDER BY `appointment`.`DateNow` DESC";
    }
}