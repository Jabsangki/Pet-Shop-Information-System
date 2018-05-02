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

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2}; database= vetco; pooling= false", "localhost", "root", ""));
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
                    Label1.Text = globalSearch.SrData;
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
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
}
    


