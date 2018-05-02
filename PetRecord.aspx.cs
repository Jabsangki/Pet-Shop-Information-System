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
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from pet", conn);
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                int tal = slumpGenerator.Next(100000, 999999);
                lbltry.Text = tal.ToString();
                cmd.CommandText = "Insert into pet (IDno,TransID,OwnerName,PetName,PetBreed,PetGender,PetCondition,PetDoB,PetDoD) values ('" + lblyyy.Text + "','" + lbltry.Text + "','" + lblname.Text + "','" + txtpn.Text + "','" + txtpb.Text + "','" + txtpg.Text + "','" + txtps.Text + "','" + txtdob.Text + "','" + txtdod.Text + "')";
                string script = "<script>alert('Record Has Been Saved');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Pet Record", script);
                cmd.ExecuteNonQuery();
                conn.Close();

            }

        }
        catch (MySqlException)
        {
            lbltry.Visible = true;
            lbltry.Text = "ERROR";
        }
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where Username = '" + txtID.Text + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    Button1.Text = "Verified";
                    lblname.Text = dRead["Username"].ToString();
                    lblyyy.Text = dRead["IDno"].ToString();
                    Button1.Enabled = false;
                    txtpn.Visible = true;
                    txtpg.Visible = true;
                    txtpb.Visible = true;
                    txtps.Visible = true;
                    txtdob.Visible = true;
                    txtdod.Visible = true;
                    Label8.Visible = false;
                    Label2.Visible = true;
                    Label3.Visible = true;
                    Label4.Visible = true;
                    Label5.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    btnAdd.Visible = true;
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
                }
            }
        }
        catch (Exception)
        {
           // Label8.Visible = true;
        }

    }
    protected void txtpb_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtps_TextChanged(object sender, EventArgs e)
    {

    }
}



