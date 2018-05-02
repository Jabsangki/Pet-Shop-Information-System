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
        globalTag.tagidData = "";
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.Text=="Appointment Has Been Set")
        {
            Labelx.Text = "Your Appointment has been validated.";
        }
        else if (DropDownList1.Text=="Cancel Appointment")
        {
            Labelx.Text="Your Appointment could not be validated/Request Cancelled. You will recieve a message for available dates via email.";
        }

        else if (DropDownList1.Text == "Re-Book Appointment")
        {
            Labelx.Text = "The doctor is out.Your Appointment will be Re-Book. Sorry for the inconvenience . Expect to be contacted within 24 hours by our personnel for re-scheduling";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ReadFrDb();
        if (globalTag.tagidData == "")
        {
            Label3.Visible = true;
        }
        else
        {
            UserToDb();
            globalTag.tagidData = "";
            TextBox1.Text = "";
        }
    }


    private void UserToDb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from notification", conn);
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                int tal = slumpGenerator.Next(100000, 999999);
                Labelxx.Text = tal.ToString();
                cmd.CommandText = "Insert into notification (IDno,NotNo,FRM,MSG,DATE) values('"+ globalTag.tagidData +"','"+ Labelxx.Text +"','Admin','"+ Labelx.Text  +"','" + System.DateTime.Now + "')";
                string script = "<script>alert('Notification Sent');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Notification Sent", script);
                cmd.ExecuteNonQuery();
                conn.Close();
                ReadFrDb();

            }

        }
        catch (MySqlException)
        {

        }


    }
    private void ReadFrDb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where Username = '" + TextBox1.Text + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    globalTag.tagidData = dRead["IDno"].ToString();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
                }
            }
        }
        catch (MySqlException)
        {
            
        }
    }
}



