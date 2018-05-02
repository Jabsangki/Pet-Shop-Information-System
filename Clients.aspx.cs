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


    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/MysqlAcc/MysqlReg.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM `user` WHERE Username='"+ txtun.Text +"'";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM `user`";
    }
}