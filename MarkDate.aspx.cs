using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class MarkDate : System.Web.UI.Page
{
    List<DateTime> dtholidays = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        dtholidays = GetPublicHolidays();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select from calendar ", conn);
        //where dDate='"+ Calendar1.SelectedDate +"' AND Time='"+ Label7.Text +"' 
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                cmd.CommandText = "Insert into calendar (Date,num) values ('" + Calendar1.SelectedDate.ToString("yyyy , MM , dd") + "','max')";
                string script = "<script>alert('MARKED And Saved');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "MARKED!", script);
                cmd.ExecuteNonQuery();
                conn.Close();
//Server.Transfer("~/MarkDate.aspx");

            }

        }
        catch (MySqlException)
        {
                      // conn.Close();
 Page_Load(sender, e);
        }
    }

    private List<DateTime> GetPublicHolidays()
    {

        List<DateTime> list = new List<DateTime>();

        //populate from database or other sources

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select Date from calendar where num='max'", conn);
        MySqlDataReader dRead;
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {

                dRead = cmd.ExecuteReader();
                while (dRead.Read())
                {
                    string aw = dRead["Date"].ToString();
                    list.Add(Convert.ToDateTime(dRead["Date"].ToString()));
                    //dRead["Date"].ToString();
//dRead.Close();
               //     cmd.ExecuteNonQuery();
                  //conn.Close();
                    
                }
            }
        }
        catch (Exception)
        {
conn.Close();
        }




        //list.Add(new DateTime(02, 14 ,2018));


        return list;

    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now)
        {
            e.Cell.Text = e.Day.Date.Day.ToString();
        }

        else if (dtholidays.Contains(e.Day.Date))
        {

            e.Cell.BackColor = System.Drawing.Color.Red;

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select from calendar ", conn);
        //where dDate='"+ Calendar1.SelectedDate +"' AND Time='"+ Label7.Text +"' 
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                cmd.CommandText = "DELETE FROM calendar WHERE Date='" + Calendar1.SelectedDate.ToString("yyyy , MM , dd") + "'";
                string script = "<script>alert('DATE UNMARKED');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "UNMARKED!", script);
                cmd.ExecuteNonQuery();
                conn.Close();

//Server.Transfer("~/MarkDate.aspx");

            }

        }
        catch (MySqlException)
        {
            //conn.Close();
 Page_Load(sender, e);
        }
    }
}






















