using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_DuePinsDetail : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    protected void bind()
    {
        dt = objsql.GetTable("select distinct p.regno,r.fname from duepins p,usersnew r where p.regno=r.regno");
        if (dt.Rows.Count > 0)
        {
            gvpins.DataSource = dt;
            gvpins.DataBind();
        }
    }

    protected void gvpins_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            Label total = (Label)e.Item.FindControl("lbltotal");
            Label lblused = (Label)e.Item.FindControl("lblused");
            Label lblnew = (Label)e.Item.FindControl("lblnew");
            LinkButton LinkButton = (LinkButton)e.Item.FindControl("LinkButton1");
            Label reg = (Label)e.Item.FindControl("lblreg");
            total.Text = Common.Get(objsql.GetSingleValue("select count(*) from duepins where regno='" + reg.Text + "'"));
            lblused.Text = Common.Get(objsql.GetSingleValue("select count(*) from duepins where regno='" + reg.Text + "' and status='y' "));
            lblnew.Text = Common.Get(objsql.GetSingleValue("select count(*) from duepins where regno='" + reg.Text + "' and status='n'"));
            if(Convert.ToUInt32(lblused.Text)>0)
            {
                LinkButton.Visible = true;
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string id = (sender as LinkButton).CommandArgument;
        Response.Redirect("Due-PinHistory.aspx?id=" + id);
    }
}