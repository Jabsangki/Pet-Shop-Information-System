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


    private void StartUpLoad()
    {
        //get the file name of the posted image
        string imgName = FileUpload1.FileName;
        //sets the image path
        string imgPath = "WebImages/" + imgName;
        //get the size in bytes that

        int imgSize = FileUpload1.PostedFile.ContentLength;

        //validates the posted file before saving
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {

            //then save it to the Folder
            FileUpload1.SaveAs(Server.MapPath(imgPath));
            //Image1.ImageUrl = "~/" + imgPath;



        }
    }
    private void imgtodb()
    {
        MySqlConnection conn = new MySqlConnection(String.Format("server = {0}; user= {1}; password= {2};database=db_a3539d_arkvet; pooling=false", "mysql5017.site4now.net", "a3539d_arkvet", "unleashed321"));
        MySqlCommand cmd = new MySqlCommand("Select * from user", conn);
        MySqlDataReader dRead;

        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                dRead = cmd.ExecuteReader();
                if (dRead.Read())
                {
                    dRead.Close();
                    cmd.CommandText = "Update user Set UserImg='" + Label2.Text +""+ FileUpload1.FileName + "' where IDno= '"+ Label1.Text+"'";
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Server.Transfer("~/UserProfile.aspx");
                }
            }
        }    
        catch (MySqlException )
        {
            }
        }



    protected void Button1_Click(object sender, EventArgs e)
    {
        StartUpLoad();
        imgtodb();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["IDno"].ToString();
    }


}



