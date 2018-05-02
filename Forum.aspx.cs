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

    protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "call")
        {
            DataListItem item = (DataListItem)(((LinkButton)(e.CommandSource)).NamingContainer);
            string text = ((Label)item.FindControl("Labelx")).Text;

            globalTopic.TopicData = text;

            Server.Transfer("~/Question.aspx");

        }


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM gthread WHERE Topic LIKE '%" + TextBox1.Text + "%'";
    }

    protected void askbtn_Click(object sender, EventArgs e)
    {
        if (Session["IDno"]== null)
        {
            Server.Transfer("~/MysqlAcc/MysqlLog.aspx");
        }
        else
        {
            Server.Transfer("~/Ask.aspx");
        }
        
    }
}