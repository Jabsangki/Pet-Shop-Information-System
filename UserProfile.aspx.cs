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
        if (Session["UserType"] != null)
        {
        load();

        Image1.ImageUrl = Session["UserImg"].ToString();
        LabelF.Text = Session["Fname"].ToString();
        LabelL.Text = Session["Lname"].ToString();
        LabelM.Text = Session["Mname"].ToString();
        idlabel.Text = Session["IDno"].ToString();
        idlabel0.Text = Session["UserType"].ToString();
        SqlDataSource1.SelectCommand = "SELECT * FROM pet WHERE IDno='" + idlabel.Text + "'";
        DataList1.Visible = false;
}
else if (Session["UserType"] == null)
{

Response.Redirect("~/MysqlAcc/MysqlLog.aspx");  
}
        


        if (idlabel0.Text == "Admin")
        {

        }
        else if (idlabel0.Text == "User")
        {

        }
        else
        {
            Server.Transfer("~/MysqlAcc/MysqlLog.aspx");
        }

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
    protected void imgbttn_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/AddImg.aspx");
    }


    public string AddEmotes(string sentString)
    {
        sentString = sentString.Replace(":)", "<img src='Emoticons/regular_smile.gif' alt='Happy!' />");
        sentString = sentString.Replace(":(", "<img src='Emoticons/cry_smile.gif' alt='Sad...' />");
        sentString = sentString.Replace(":o", "<img src='Emoticons/eek.gif' alt='eek...' />");
        sentString = sentString.Replace(":/", "<img src='Emoticons/confused_smile.gif' alt='confused...' />");
        sentString = sentString.Replace(":D", "<img src='Emoticons/teeth_smile.gif' alt='So Happy...' />");
        sentString = sentString.Replace("B)", "<img src='Emoticons/shades_smile.gif' alt='Cool...' />");
        sentString = sentString.Replace(";)", "<img src='Emoticons/wink_smile.gif' alt='Wink...' />");
        return sentString;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //globalSearch.SrData=searchbox.Text;
        //Server.Transfer(" ~/SrchResult.aspx");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "SELECT * FROM notification WHERE IDno='" + idlabel.Text + "' ORDER BY `notification`.`DATE` DESC ";
        lblinfo.Text = "Notifications:";
        GridView1.Visible = false;
        DataList1.Visible = true;
        DataList2.Visible = false;
        delnot.Visible = true;
        btnST.Visible = false;
        txtST.Visible = false;
        Label5.Visible = true;
        Label6.Visible = true;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM pet WHERE IDno='" + idlabel.Text + "'";
        GridView1.Visible = true;
        delnot.Visible = false;
        lblinfo.Text = "My Pets:";
        DataList1.Visible = false;
        DataList2.Visible = false;
        btnST.Visible = true;
        txtST.Visible = true;
        Label5.Visible = false;
        Label6.Visible = false;
    }
    protected void btnST_Click(object sender, EventArgs e)
    {
        Label7.Text = Session["UserType"].ToString();
        if(Label7.Text == "Admin")
        {

            SqlDataSource1.SelectCommand = "SELECT * FROM pet WHERE PetName='" + txtST.Text + "' OR IDno='"+ txtST.Text +"' OR OwnerName='"+ txtST.Text +"'";

        }
        else
        {
        SqlDataSource1.SelectCommand = "SELECT * FROM pet WHERE PetName='" + txtST.Text + "'";
        }
    }

    protected void link_click(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        if (e.CommandName == "call")
        {
            DataListItem item = (DataListItem)(((LinkButton)(e.CommandSource)).NamingContainer);
            string text = ((Label)item.FindControl("Labelxx")).Text;

            globalnot.ImportantData = text;
            SqlDataSource3.SelectCommand = "SELECT * FROM notification WHERE NotNo='" + globalnot.ImportantData + "' AND IDno='"+Session["IDno"].ToString() +"' ";
            DataList1.Visible = false;
            DataList2.Visible = true;
            GridView1.Visible = false;
           // Server.Transfer("~/UserProfile1.aspx");

        }


    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void delnot_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server={0};user id={1}; password={2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select from notification ", conn);
        //where dDate='"+ Calendar1.SelectedDate +"' AND Time='"+ Label7.Text +"' 
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                Random slumpGenerator = new Random();
                cmd.CommandText = "DELETE FROM notification WHERE IDno='" + Session["IDno"].ToString() + "'";
                string script = "<script>alert('Notifications Deleted');</script>";
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "DELETED!", script);

                cmd.ExecuteNonQuery();
                conn.Close();
            }

        }
        catch (MySqlException)
        {

        }
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}







