﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_Detailedstruct : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"]!=null && Request.QueryString["id"] != "")
            {
                bind();
                lblreg.Text = Request.QueryString["id"].ToString();
            }
           
        }
    }
    public void bind()
    {
        dt = objsql.GetTable("select i.Cregno,u.fname,u.mobile,u.joined from inststruc i Inner Join usersnew u on i.pregno='"+ Request.QueryString["id"] + "' and i.Cregno=u.regno ");
        if (dt.Rows.Count > 0)
        {
            gvpins.DataSource = dt;
            gvpins.DataBind();
        }
    }
}