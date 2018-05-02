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
        load();

    }


    private void load()
    {

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2}; database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select UserImg from user where FirstName = '" + globalSearch.SrData + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    globalUserImg.UserImgData = dRead["UserImg"].ToString();
                    Label1.Text = '%' + (globalSearch.SrData) + '%';
                    Label1.Visible = false;
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "NO RESULTS FOUND";
                }
            }
            else
            {
                
            }
        }
        catch (Exception)
        {
            
        }


    }

    protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "call")
        {
            DataListItem item = (DataListItem)(((LinkButton)(e.CommandSource)).NamingContainer);
            string text = ((Label)item.FindControl("lblx")).Text;

            globalTag.tagidData = text;

            Server.Transfer("~/ResultProfile.aspx");

        }
        else if(e.CommandName == "call1")
        {
            DataListItem item = (DataListItem)(((ImageButton)(e.CommandSource)).NamingContainer);
            string text = ((Label)item.FindControl("lblx")).Text;

            globalTag.tagidData = text;

            Server.Transfer("~/ResultProfile.aspx");

        }


    }
}



