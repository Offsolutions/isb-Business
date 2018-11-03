using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_Due_PinHistory : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                bind(Request.QueryString["id"]);
                lblregno.Text = Request.QueryString["id"];
                lblname.Text = Common.Get(objsql.GetSingleValue("select fname from usersnew where regno='" + Request.QueryString["id"] + "'"));
            }
        }
    }
    protected void bind(string reg)
    {
        dt = objsql.GetTable("select distinct p.regno,p.pin,p.pintype,p.subregno,p.dated,p.datecreate,p.status,p.allotted,r.fname from duepins p,usersnew r where p.subregno=r.regno and p.regno='" + reg + "' and p.status='y'");
        if (dt.Rows.Count > 0)
        {
            gvpins.DataSource = dt;
            gvpins.DataBind();
        }
    }
}