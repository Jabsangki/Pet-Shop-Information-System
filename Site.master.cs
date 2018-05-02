using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserType"] == null)
        {
            LinkButton1.Text = "Log in";
            NavigationMenu.Visible = true;
            UserNav.Visible = false;
            AdminNav.Visible = false;
        }
        else
        {
            lbltype.Text = Session["UserType"].ToString();
            lbluser.Text = Session["Fname"].ToString();
            if (lbltype.Text == "Admin")
            {
                LinkButton1.Text = "Log out";
                AdminNav.Visible = true;
                UserNav.Visible = false;
                NavigationMenu.Visible = false;
            }
            else if (lbltype.Text == "User")
            {
                LinkButton1.Text = "Log out";
                UserNav.Visible = true;
                NavigationMenu.Visible = false;
                AdminNav.Visible = false;
            }
        }
            
    }

public string imgPath = System.Web.VirtualPathUtility.ToAbsolute("~/WebImages/logoimage.png");
    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void HeadLoginView_ViewChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Log in")
        {

            Server.Transfer("~/MysqlAcc/MysqlLog.aspx");  

        }
        else if (LinkButton1.Text == "Log out")
        {
            Session.Clear();

            Session.Abandon();
            lbltype.Text = "";
            lbluser.Text = "";
            //globalF.FnameData = "";
            //global.ImportantData = "";
            //globalUType.UserTypeData = "";
           // globalID.IdData = "";
            LinkButton1.Text = "Log in";
            NavigationMenu.Visible = true;
            UserNav.Visible = false;
            AdminNav.Visible = false;
            Server.Transfer("~/Home.aspx");

        }    
    }
}


