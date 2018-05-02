using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.ComponentModel;//bgworker class
using System.Net;
using System.Net.Mail;
using System.Threading;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;


public partial class ContactUs : System.Web.UI.Page
{
    BackgroundWorker bw;
    protected void Page_Load(object sender, EventArgs e)
    {

        Calendar1.TodaysDate.ToLocalTime();
        load();
        dtholidays = GetPublicHolidays();
        bw = new BackgroundWorker();
        bw.DoWork += new DoWorkEventHandler(bw_DoWork);
        bw.WorkerSupportsCancellation = true;
        bw.WorkerReportsProgress = false;
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
                    Session["UserType"] = dRead["UserType"].ToString();
                    Session["IDno"] = dRead["IDno"].ToString();
                    Session["UserImg"] = dRead["UserImg"].ToString();
                    Session["Fname"] = dRead["FirstName"].ToString();
                    Session["Mname"] = dRead["MiddleName"].ToString();
                    Session["Lname"] = dRead["LastName"].ToString();
                    globalUType.UserTypeData = dRead["UserType"].ToString();
                    globalUserTag.tagidData = dRead["TagId"].ToString();
                    globalSearch.SrData = dRead["Username"].ToString();
                    lblemail.Text = dRead["Email"].ToString();
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
    public void SendMail()
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("thearkvetdavao@gmail.com");
        msg.To.Add( lblemail.Text +","+"thearkvetdavao@gmail.com");
        msg.Body = string.Format("{0}<br/>{1}<br/> {2}<br/>{3}<br/>{4}<br/>{5}<br/>{6}<br/>{7}<br/>{8}<br/>{9}<br/>{10}<br/>{11}<br/>", "Your email was successfully sent. Please review the details below:", " ", "The following Request was sent from TheArkvetDavao", " ", "Subject:" + " " + DropDownList1.Text, "Username:" + " " + globalSearch.SrData, "Email:" + " " + lblemail.Text, "Customer:" + " " + Session["Fname"].ToString() + " " + Session["Mname"].ToString() + " " + Session["Lname"].ToString(), "Details:", TextBox1.Text, " ", "Expect A Response Regarding This Matter Within 24hours");
        msg.IsBodyHtml = true;
        msg.Subject = "TheArkVet SYSTEM";
        SmtpClient smt = new SmtpClient("smtp.gmail.com");
        smt.Port = 587;
        smt.Credentials = new NetworkCredential("thearkvetdavao@gmail.com", "arkvet.davao");
        smt.EnableSsl = true;
        smt.Send(msg);
        string script = "<script>alert('Mail Sent Successfully');</script>";
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "SendMail", script);
    }

    public void bw_DoWork(object sender, DoWorkEventArgs e)
    {
        SendMail();
    }

    protected void btnMail_Click(object sender, EventArgs e)
    {
        //DateTime current_time = DateTime.Now;
        //current_time = current_time.AddSeconds(10);
        //Thread.Sleep(10000);
        //if (current_time == DateTime.Now)
        //{
            bw.RunWorkerAsync();
        //}  
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(DropDownList1.Text=="INQUIRIES")
        {

        }
        else if (DropDownList1.Text != "INQUIRIES")
        {

        }
    }

    List<DateTime> dtholidays = null;

    private List<DateTime> GetPublicHolidays()
    {

        List<DateTime> list = new List<DateTime>();

        //populate from database or other sources

        MySqlConnection conn = new MySqlConnection(String.Format("server= {0}; user = {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select Date from calendar where num='" + Label15.Text + "'", conn);
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
}




