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
        load();
    }
    
    private void aw()
    {
        Labelfn.Text = TextBoxfn.Text;
        Labelmn.Text = TextBoxmn.Text;
        Labelln.Text = TextBoxln.Text;
        Labela.Text = TextBoxa.Text;
        Labelc.Text = TextBoxc.Text;
        Labele.Text = TextBoxe.Text;
        Labelae.Text = TextBoxae.Text;
                    TextBoxfn.Visible = false;
                    TextBoxmn.Visible = false;
                    TextBoxln.Visible = false;
                    TextBoxa.Visible = false;
                    TextBoxae.Visible = false;
                    TextBoxe.Visible = false;
                    TextBoxc.Visible = false;
                    Labelfn.Visible = true;
                    Labelmn.Visible = true;
                    Labelln.Visible = true;
                    Labela.Visible = true;
                    Labelc.Visible = true;
                    Labele.Visible = true;
                    Labelae.Visible = true;
    }

    private void load()
    {

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where IDno = '" + Session["IDno"].ToString() + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    Labelfn.Text = dRead["FirstName"].ToString();
                    Labelmn.Text = dRead["MiddleName"].ToString();
                    Labelln.Text = dRead["LastName"].ToString();
                    Labela.Text = dRead["Address"].ToString();
                    Labelc.Text = dRead["ContactNo"].ToString();
                    Labele.Text = dRead["Email"].ToString();
                    Labelae.Text = dRead["AlterEmail"].ToString();
                    conn.Close();
                    dRead.Close();
                }
            }
        }
        catch (Exception)
        {

        }
    }


    private void uptodb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server = {0}; user= {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand xmd = new MySqlCommand("Select * from user", conn);
        MySqlDataReader dRead;

        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                dRead = xmd.ExecuteReader();
                if (dRead.Read())
                {
                    dRead.Close();
                    xmd.CommandText = "Update user Set FirstName='" + TextBoxfn.Text + "', MiddleName='" + TextBoxmn.Text + "', LastName='" + TextBoxln.Text + "', Address='" + TextBoxa.Text + "', ContactNo='" + TextBoxc.Text + "', Email='" + TextBoxe.Text + "', AlterEmail='" + TextBoxae.Text + "' WHERE IDno= '" + Session["IDno"].ToString() + "'";
                    string script = "<script>alert('Account Has Been Saved');</script>";
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Account Setting", script);
                    aw();
                    xmd.ExecuteNonQuery();
                    conn.Close();
                    //Server.Transfer("~/UserProfile.aspx");
                }
            }
        }
        catch (MySqlException)
        {

        }
    }

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        uptodb();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        TextBoxfn.Text = Labelfn.Text;
        TextBoxmn.Text = Labelmn.Text;
        TextBoxln.Text = Labelln.Text;
        TextBoxa.Text = Labela.Text;
        TextBoxc.Text = Labelc.Text;
        TextBoxe.Text = Labele.Text;
        TextBoxae.Text = Labelae.Text;
        TextBoxfn.Visible = true;
        TextBoxmn.Visible = true;
        TextBoxln.Visible = true;
        TextBoxa.Visible = true;
        TextBoxc.Visible = true;
        TextBoxe.Visible = true;
        TextBoxae.Visible = true;
        Labelfn.Visible = false;
        Labelmn.Visible = false;
        Labelln.Visible = false;
        Labela.Visible = false;
        Labelc.Visible = false;
        Labele.Visible = false;
        Labelae.Visible = false;
    }
}





