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
    List<DateTime> dtholidays = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        dtholidays = GetPublicHolidays();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label7.Text = DropDownList1.Text + ":" + DropDownList2.Text + " " + DropDownList3.Text;
        Label16.Text = "Your Appointment has been validated. Appointment Date: " + Labeldaterender.Text + " At  "+Label7.Text;
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select from appointment where dDate !='" + Calendar1.SelectedDate.ToString("yyyy , MM , dd") + "' AND Time != '" + Label7.Text + "'", conn);
        //where dDate='"+ Calendar1.SelectedDate +"' AND Time='"+ Label7.Text +"' 
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                int tal = slumpGenerator.Next(100000, 999999);
                Label1.Text = tal.ToString();
                cmd.CommandText = "Insert into appointment (ApntId,dDate,Username,FirstName,LastName,Time,MiddleName,Address,ContactNo,PetName,PetDesc,Email,DateNow) values ('" + Label1.Text + "','" + Calendar1.SelectedDate.ToString("yyyy , MM , dd") + "','" + txtun.Text + "','" + txtfn.Text + "','" + txtln.Text + "','" + Label7.Text + "','" + txtmn.Text + "','" + txtad.Text + "','" + txtcn.Text + "','" + txtpn.Text + "','" + txtpd.Text + "','" + txte.Text + "','"+System.DateTime.Now +"')";
                Db();
                string script = "<script>alert('Appointment Has Been Saved');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Set Appointment", script);
                cmd.ExecuteNonQuery();
                conn.Close();
            }

        }
        catch (MySqlException)
        {
            Label1.Visible = true;
            Label1.Text = "ERROR Has Occured,Please Try Again";
        }

    }

    protected void btnver_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user where Username = '" + txtun.Text + "'", conn);
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
                    txtfn.Text = dRead["FirstName"].ToString();
                    txtmn.Text = dRead["MiddleName"].ToString();
                    txtln.Text = dRead["Lastname"].ToString();
                    txtad.Text = dRead["Address"].ToString();
                    txtcn.Text = dRead["ContactNo"].ToString();
                    txte.Text = dRead["Email"].ToString();
                    txtfn.Enabled = true;
                    txtmn.Enabled = true;
                    txtln.Enabled = true;
                    txtad.Enabled = true;
                    txtcn.Enabled = true;
                    txte.Enabled = true;
                    txtpn.Enabled = true;
                    txtpd.Enabled = true;
                    DropDownList1.Enabled = true;
                    DropDownList2.Enabled = true;
                    DropDownList3.Enabled = true;
                    btnver.Text = "Verified";
                    btnver.Enabled = false;
                    Label17.Visible = false;
                    Button1.Enabled = true;
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    dRead.Close();
                }
            }
        }
        catch (Exception)
        {
          //  Label17.Visible = true;
        }
    }


    private List< DateTime  > GetPublicHolidays()
    {

        List<DateTime > list = new List<DateTime>();

        //populate from database or other sources

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select Date from calendar where num='"+ Label15.Text +"'", conn);
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
                        list.Add( Convert.ToDateTime(dRead["Date"].ToString()));
                    //dRead["Date"].ToString();
                    //cmd.ExecuteNonQuery();
                    //conn.Close();
                    //dRead.Close();
                }
            }
        }
        catch (Exception)
        {

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

            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Red;

        }
    }

         private void Db()
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
                cmd.CommandText = "Insert into notification (IDno,NotNo,FRM,MSG,DATE) values('" + globalTag.tagidData + "','" + Labelxx.Text + "','Admin','"+ Label16.Text +"','" + System.DateTime.Now + "')";
             //   string script = "<script>alert('Notification Sent');</script>";
               // this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Notification Sent", script);
                cmd.ExecuteNonQuery();
                conn.Close();

            }

        }
        catch (MySqlException)
        {

        }


    }
        


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Labeldaterender.Text = Calendar1.SelectedDate.ToString("yyyy , MM , dd");
    }
}





