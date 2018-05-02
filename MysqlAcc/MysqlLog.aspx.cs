using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class MysqlAcc_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2}; database= db_a3539d_arkvet; pooling= false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text +"'", conn);
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
                    //global.ImportantData = dRead["UserType"].ToString();
                    //globalID.IdData = dRead["IDno"].ToString();
                    //globalUType.UserTypeData = dRead["UserImg"].ToString();
                    //globalF.FnameData = dRead["FirstName"].ToString();
                    //globalM.MnameData = dRead["MiddleName"].ToString();
                    //globalL.LnameData = dRead["Lastname"].ToString();
                    Response.Redirect("~/Home.aspx");
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
                }
                else
                {
                    lblerror.Visible = true;
                }
            }

        }
        catch (MySqlException)
        {
        }
    }
}
