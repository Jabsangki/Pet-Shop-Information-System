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

    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        ToDb();
    }

    private void ToDb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from gthread", conn);
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                int tal = slumpGenerator.Next(100000, 999999);
                Label1.Text = tal.ToString();
                cmd.CommandText = "Insert into gthread (DisNum,Topic,User,Date) values('"+ Label1.Text +"','"+ TextBox1.Text +"','"+ Session["UserType"].ToString() +"','"+ System.DateTime.Now +"')";
                string script = "<script>alert('Submitted');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Submitted", script);
                cmd.ExecuteNonQuery();
                conn.Close();

            }

        }
        catch (MySqlException)
        {

        }


    }
}



