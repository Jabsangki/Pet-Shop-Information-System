using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class MysqlAcc_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        UserToDb();
        
    }
    private void UserToDb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user", conn);
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                int tal = slumpGenerator.Next(100000, 999999);
                Label1.Text = tal.ToString();
                cmd.CommandText = "Insert into user (Username,Password,UserType,FirstName,LastName,MiddleName,Email,AlterEmail,SQq,SQa,TagId,IDno,RegDate,ContactNo,Address) values('" + lbluser.Text + "','" + lblpass.Text + "','User','" + lblf.Text + "','" + lbll.Text + "','" + lblm.Text + "','" + lble.Text + "','" + lblea.Text + "','" + ddsqq.Text + "','" + lblsqa.Text + "','" + Label1.Text + "','" + Label1.Text + "','"+ System.DateTime.Now +"','"+ lblcon.Text +"','" + lblad.Text + "')";

     string script = "<script>alert('Registration Complete');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Success", script);

                cmd.ExecuteNonQuery();
                conn.Close();
                //ReadFrDb();

                
            }
           
        }
        catch (MySqlException)
        {
            lblerror.Visible = true;
            lblerror.Text = "Username Exist";
        }


    }
    private void ReadFrDb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where Username = '" + lbluser.Text + "' and Password = '" + lblpass.Text + "'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    Session["UserType"] = dRead["UserType"].ToString();
                    Session["IDno"] = dRead["IDno"].ToString();
                    Session["UserImg"] = dRead["UserImg"].ToString();
                    Session["Fname"] = dRead["FirstName"].ToString();
                    Session["Mname"] = dRead["MiddleName"].ToString();
                    Session["Lname"] = dRead["LastName"].ToString();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();

                }
            }
        }
        catch (MySqlException)
        {
            
        }

                
//Server.Transfer("~/UserProfile.aspx");  

             
    }
}























