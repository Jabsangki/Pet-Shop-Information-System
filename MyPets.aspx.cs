﻿using System;
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
        lblid.Text = Session["IDno"].ToString();
    }


}


