﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    SQLHelper objsql = new SQLHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = objsql.GetTable("select * from usersnew where regno='" + txtuser.Text + "' and pass='" + txtpass.Text + "' and  active='1'");
        if (dt.Rows.Count > 0)
        {
            Session["user"] = txtuser.Text;
            Response.Redirect("~/user/dashboard.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid UserName Or Password')", true);
        }
    }
}
