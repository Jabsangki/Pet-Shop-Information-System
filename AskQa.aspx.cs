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
                GVthreads.PageIndex = Convert.ToInt32(Session["PageIndex"]);
                GVcomments.PageIndex = Convert.ToInt32(Session["PageIndex"]);
            }
        }
    }

    protected void index(object sender, EventArgs e)
    {
        Session["PageIndex"] = GVthreads.PageIndex;
    }
    protected void index1(object sender, EventArgs e)
    {
        Session["PageIndex"] = GVcomments.PageIndex;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * FROM gthread where Topic LIKE '%" + TextBox1.Text + "%'";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "Select * FROM comments where DisNum = '" + TextBox2.Text + "'";
    }
}