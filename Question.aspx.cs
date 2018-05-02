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
        load1();
        load2();

        lbltopic.Text = GlobalTdetails.Tdetails;
        if (Session["UserType"] != null)
        {
            global.ImportantData = Session["UserType"].ToString();
        }
        else if (Session["UserType"]==null)
        {
            btnans.Visible = false;
        }
        if (Image1.ImageUrl == "")
        {
            Image1.Visible = false;
        }
        else
        {
            Image1.Visible = true;
        }
        if(global.ImportantData=="Admin")
        {
            btnans.Visible = true;
        }
        else
        {
            btnans.Visible = false;
        }
        
    }

    private void load()
    {

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from gthread where DisNum = '" + globalTopic.TopicData + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    GlobalTdetails.Tdetails = dRead["Topic"].ToString();
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
    private void load1()
    {

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from comments where DisNum = '" + globalTopic.TopicData + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    lbl.Text = dRead["UserID"].ToString();
                    TextBox1.Text  = dRead["Answer"].ToString();
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
    private void load2()
    {

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where IDno = '" + lbl.Text + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    Label4.Text = dRead["FirstName"].ToString() + " " + dRead["MiddleName"].ToString() + " " + dRead["LastName"].ToString();
                    Image1.ImageUrl = dRead["UserImg"].ToString();
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

    protected void btnans_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "This Question Has Not Yet Been Answered...")
        {
            TextBox2.Visible = true;
            lblnote.Visible = false;
            btnsubmit.Visible = true;
        }
        else
        {
            TextBox2.Visible = false;
            lblnote.Visible = true;
            btnsubmit.Visible = false;
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand xmd = new MySqlCommand("Select * from comments", conn);
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                int tal = slumpGenerator.Next(100000, 999999);
                Labelx.Text = tal.ToString();
                xmd.CommandText = "Insert into comments (CommentID,DisNum,UserID,Answer) values('"+ Labelx.Text +"','"+ globalTopic.TopicData +"','"+ Session["IDno"].ToString() +"','"+ TextBox2.Text +"')";
              //  string script = "<script>alert('Submitted');</script>";
              //  this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Submitted", script);
                xmd.ExecuteNonQuery();
                conn.Close();

            }

        }
        catch (MySqlException)
        {

        }
    }

}









