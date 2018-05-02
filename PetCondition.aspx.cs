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
        else if(TextBox1.Text!="")
        {
            SqlDataSource1.SelectCommand = "Select * from pet where TransID='" + TextBox1.Text + "' OR IDno='" + TextBox2.Text + "'";
            if (Convert.ToInt32(Session["PageIndex"]) != 0)
            {
                GridView1.PageIndex = Convert.ToInt32(Session["PageIndex"]);
            }
        }
        else if(TextBox2.Text!="")
        {
            SqlDataSource1.SelectCommand = "Select * from pet where TransID='" + TextBox1.Text + "' OR IDno='" + TextBox2.Text + "'";
            if (Convert.ToInt32(Session["PageIndex"]) != 0)
            {
                GridView1.PageIndex = Convert.ToInt32(Session["PageIndex"]);
            }
        }
        else
        {
            SqlDataSource1.SelectCommand = "Select * from pet";
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


    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/PetRecord.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM pet WHERE OwnerName='"+ TextBox1.Text +"'";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM pet WHERE IDno='" + TextBox2.Text + "'";
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        SqlDataSource1.SelectCommand = "SELECT * FROM pet";
    }
}



