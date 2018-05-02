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

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where IDno = '" + globalTag.tagidData + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    Image1.ImageUrl = dRead["UserImg"].ToString();
                    Label1.Text = dRead["FirstName"].ToString();
                    Label2.Text = dRead["MiddleName"].ToString();
                    Label3.Text = dRead["LastName"].ToString();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
                }
            }
        }
        catch (Exception)
        { 
        
        }

   }
}
