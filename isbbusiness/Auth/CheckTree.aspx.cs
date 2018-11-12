using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_CheckTree : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    public int Cr = 0, Cl = 0, l1, l2, l0;
    public DataTable dt21 = new DataTable();
    public DataTable dt213 = new DataTable();
    public DataTable dt211 = new DataTable();
    public DataTable dt212 = new DataTable();
    public DataTable dt23 = new DataTable();
    public DataTable dt2 = new DataTable();
    string active="";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label17.Visible = false;
        Label18.Visible = false;
        Label19.Visible = false;
        Label20.Visible = false;
        Label21.Visible = false;
        Label22.Visible = false;
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                Tree(Request.QueryString["id"].ToString());
            }

        }

        //  int a = pNodeL("1051", "one");
        //pNodeR(RightNode, "");


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Tree(Convert.ToString(LinkButton1.Text));
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Tree(Convert.ToString(LinkButton3.Text));
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Tree(Convert.ToString(LinkButton2.Text));
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Tree(Convert.ToString(LinkButton4.Text));
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Tree(Convert.ToString(LinkButton5.Text));
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Tree(Convert.ToString(LinkButton6.Text));
    }
    protected void lnkparent_Click(object sender, EventArgs e)
    {
        if (lnkparent.Text != "ADMIN")
        {
            string sregno = Common.Get(objsql.GetSingleValue("select sregno from usersnew where regno='" + Label8.Text + "'"));
            Tree(Convert.ToString(sregno));
        }
    }
    protected void Tree(string Sr)
    {
        Image3.ImageUrl = "../User/img/user_black.png";
        Image6.ImageUrl = "../User/img/user_black.png";
        Image9.ImageUrl = "../User/img/user_black.png";
        Image12.ImageUrl = "../User/img/user_black.png";
        Image15.ImageUrl = "../User/img/user_black.png";
        Image18.ImageUrl = "../User/img/user_black.png";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con.Open();
        #region Check Left Active Pair
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select regno from usersnew where sregno=@ID and node='one' and active='1'";
            cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
            cmd.Connection = con;
            if (Convert.ToString(cmd.ExecuteScalar()) != "")
            {
                //{
                //    SqlCommand cmd1 = new SqlCommand();
                //    cmd1.CommandText = "select cnt from cnt_down(@ID)";
                //    string a = Convert.ToString(cmd.ExecuteScalar());
                //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = a;
                //    cmd1.Connection = con;
                //    Label23.Text = "Left IDs : " + Convert.ToInt64(cmd1.ExecuteScalar());
                //}
                //{
                //    SqlCommand cmd1 = new SqlCommand();
                //    cmd1.CommandText = "select active from cnt_down(@ID)";
                //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                //    cmd1.Connection = con;
                //    // Label23.Text =Label23.Text + "<br>Active IDs : " + Convert.ToInt64(cmd1.ExecuteScalar());
                //}
                //{
                //    SqlCommand cmd1 = new SqlCommand();
                //    cmd1.CommandText = "select cnt_new from cnt_down1(@ID,'Left','01/01/1900','01/01/2020')";
                //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(Sr);
                //    cmd1.Connection = con;
                //    Label23.Text = Label23.Text + "<br>New IDs : " + Convert.ToInt64(cmd1.ExecuteScalar());
                //}
            }
            else
            {
                Label23.Text = "Left IDs : 0<br>Active IDs : 0<br>New IDs : 0";
            }
        }
        #endregion
        #region parent
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select regno from usersnew where regno=@ID";
            cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
            cmd.Connection = con;
            Label8.Text = Convert.ToString(cmd.ExecuteScalar());

        }
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select fname from usersnew where regno=@ID";
            cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
            cmd.Connection = con;
            Label8.Text = Label8.Text;
            lnkparent.Text = Convert.ToString(cmd.ExecuteScalar());
            lbld1.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + Sr + "' and node='one'").ToString();
            lbld2.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + Sr + "' and node='two'").ToString();
            {
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                cmd1.Connection = con;
                lblpl.Text = Convert.ToString(cmd1.ExecuteScalar());
            }
            {
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                cmd2.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                cmd2.Connection = con;
                lblpr.Text = Convert.ToString(cmd2.ExecuteScalar());
            }
            parentnode.ImageUrl = "img/green.gif";
        }
        #endregion
        {
            #region LeftNode
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select regno from usersnew where sregno=@ID and node='one' and active='1'";
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                cmd.Connection = con;
                LinkButton1.Text = Convert.ToString(cmd.ExecuteScalar());
                lbld3.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton1.Text + "' and node='one'").ToString();
                lbld4.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton1.Text + "' and node='two'").ToString();
                {
                    SqlCommand cmd5 = new SqlCommand();
                    cmd5.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                    cmd5.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton1.Text;
                    cmd5.Connection = con;
                    lblleftl.Text = Convert.ToString(cmd5.ExecuteScalar());
                }
                {
                    SqlCommand cmd6 = new SqlCommand();
                    cmd6.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                    cmd6.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton1.Text;
                    cmd6.Connection = con;
                    lblleftr.Text = Convert.ToString(cmd6.ExecuteScalar());
                }
                leftnode.ImageUrl = "img/green.gif";
                //else
                //{
                //    leftone.DataSource = dt21;
                //    leftone.DataBind();
                //    leftnode.ImageUrl = "img/red.gif";
                //}
                //if (active == "False")
                //{
                //    leftnode.ImageUrl = "img/red.gif";
                //}

            }
            #endregion
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select fname from usersnew where sregno=@ID and node='one' and active='1'";
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                cmd.Connection = con;
                Label10.Text = Convert.ToString(cmd.ExecuteScalar());
            }
            {
                //SqlCommand cmd = new SqlCommand();
                //cmd.CommandText = "select spon from usersnew where sregno=@ID and node='one'";
                //cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                //cmd.Connection = con;
                //if (Convert.ToString(cmd.ExecuteScalar()) != "")
                //{
                //    Label17.Visible = true;
                //    Label17.Text = "Proposer ID : " + Convert.ToString(cmd.ExecuteScalar());
                //    SqlCommand cmd1 = new SqlCommand();
                //    cmd1.CommandText = "select name from usersnew where id=@ID";
                //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                //    cmd1.Connection = con;
                //    Label17.Text = Label17.Text + "(" + Convert.ToString(cmd1.ExecuteScalar()) + ")";
                //}
                //else
                //{
                //    Image3.ImageUrl = "../User/img/tree1.png";
                //}
            }
        }
        {
            #region RightNode
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select regno from usersnew where sregno=@ID and node='two' and active='1'";
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                cmd.Connection = con;
                LinkButton4.Text = Convert.ToString(cmd.ExecuteScalar());
                lbld9.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton4.Text + "' and node='one'").ToString();
                lbld10.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton4.Text + "' and node='two'").ToString();
                if (LinkButton4.Text != "")
                {
                    active = Common.Get(objsql.GetSingleValue("select active from usersnew where regno='" + LinkButton4.Text + "'"));

                    {
                        SqlCommand cmd3 = new SqlCommand();
                        cmd3.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                        cmd3.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton4.Text;
                        cmd3.Connection = con;
                        lblrightl.Text = Convert.ToString(cmd3.ExecuteScalar());
                    }
                    {
                        SqlCommand cmd4 = new SqlCommand();
                        cmd4.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                        cmd4.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton4.Text;
                        cmd4.Connection = con;
                        lblrightr.Text = Convert.ToString(cmd4.ExecuteScalar());
                    }
                    rightnode.ImageUrl = "img/green.gif";

                }

                else
                {
                    //   lvrightnode.DataSource = dt213;
                    //   lvrightnode.DataBind();
                    rightnode.ImageUrl = "img/red.gif";
                }
                if (active == "False")
                {
                    rightnode.ImageUrl = "img/red.gif";
                }
            }
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select fname from usersnew where sregno=@ID and node='two' and active='1'";
                cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                cmd.Connection = con;
                Label11.Text = Convert.ToString(cmd.ExecuteScalar());
            }
            {
                //SqlCommand cmd = new SqlCommand();
                //cmd.CommandText = "select spon from usersnew where sregno=@ID and node='two'";
                //cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                //cmd.Connection = con;
                //if (Convert.ToString(cmd.ExecuteScalar()) != "")
                //{
                //    Label18.Visible = true;
                //    Label18.Text = "Proposer ID : " + Convert.ToString(cmd.ExecuteScalar());
                //    SqlCommand cmd1 = new SqlCommand();
                //    cmd1.CommandText = "select name from usersnew where id=@ID";
                //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                //    cmd1.Connection = con;
                //    Label18.Text = Label18.Text + "(" + Convert.ToString(cmd1.ExecuteScalar()) + ")";
                //}
                //else
                //{
                //    Image6.ImageUrl = "../User/img/tree1.png";
                //}
            }
            #endregion
        }
        {
            #region LeftNode-Left
            {
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select regno from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='one') and node='one'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;

                    LinkButton2.Text = Convert.ToString(cmd.ExecuteScalar());
                    if (LinkButton2.Text != "")
                    {
                        active = Common.Get(objsql.GetSingleValue("select active from usersnew where regno='" + LinkButton2.Text + "'"));
                        lbld5.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton2.Text + "' and node='one'").ToString();
                        lbld6.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton2.Text + "' and node='two'").ToString();
                        {
                            SqlCommand cmd7 = new SqlCommand();
                            cmd7.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                            cmd7.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton2.Text;
                            cmd7.Connection = con;
                            lbl1.Text = Convert.ToString(cmd7.ExecuteScalar());
                        }
                        {
                            SqlCommand cmd8 = new SqlCommand();
                            cmd8.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                            cmd8.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton2.Text;
                            cmd8.Connection = con;
                            lbl2.Text = Convert.ToString(cmd8.ExecuteScalar());
                        }

                        leftnodeleft.ImageUrl = "img/green.gif";

                    }

                    else
                    {

                        leftnodeleft.ImageUrl = "img/red.gif";
                    }
                    if (active == "False")
                    {
                        leftnodeleft.ImageUrl = "img/red.gif";
                    }
                }
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select fname from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='one') and node='one'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;
                    Label12.Text = Convert.ToString(cmd.ExecuteScalar());
                }
                {
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = "select spon from usersnew where sregno in (select id from usersnew where sregno=@ID and node='one') and node='one'";
                    //cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    //cmd.Connection = con;
                    //if (Convert.ToString(cmd.ExecuteScalar()) != "")
                    //{
                    //    Label19.Visible = true;
                    //    Label19.Text = "Proposer ID : " + Convert.ToString(cmd.ExecuteScalar());
                    //    SqlCommand cmd1 = new SqlCommand();
                    //    cmd1.CommandText = "select name from usersnew where id=@ID";
                    //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                    //    cmd1.Connection = con;
                    //    Label19.Text = Label19.Text + "(" + Convert.ToString(cmd1.ExecuteScalar()) + ")";
                    //}
                    //else
                    //{
                    //    Image9.ImageUrl = "../User/img/tree1.png";
                    //}
                }
            }
            #endregion
            #region LeftNode-Right
            {
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select regno from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='one') and node='two'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;
                    LinkButton3.Text = Convert.ToString(cmd.ExecuteScalar());
                    lbld7.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton3.Text + "' and node='one'").ToString();
                    lbld8.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton3.Text + "' and node='two'").ToString();
                    if (LinkButton3.Text != "")
                    {
                        Label13.Text = Common.Get(objsql.GetSingleValue("select fname from usersnew where regno='" + LinkButton3.Text + "'"));
                    }
                    else
                    {
                        Label13.Text = "";
                    }
                }
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select fname from usersnew where regno in (select sregno from usersnew where sregno=@ID and node='one') and node='two'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;


                    if (LinkButton3.Text != "")
                    {
                        Label13.Text = Common.Get(objsql.GetSingleValue("select fname from usersnew where regno='" + LinkButton3.Text + "'"));
                        active = Common.Get(objsql.GetSingleValue("select active from usersnew where regno='" + LinkButton3.Text + "'"));

                        leftnoderight.ImageUrl = "img/green.gif";

                        {
                            SqlCommand cmd11 = new SqlCommand();
                            cmd11.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                            cmd11.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton3.Text;
                            cmd11.Connection = con;
                            lbl3.Text = Convert.ToString(cmd11.ExecuteScalar());
                        }
                        {
                            SqlCommand cmd12 = new SqlCommand();
                            cmd12.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                            cmd12.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton3.Text;
                            cmd12.Connection = con;
                            lbl4.Text = Convert.ToString(cmd12.ExecuteScalar());
                        }
                        if (active == "False")
                        {
                            leftnodeleft.ImageUrl = "img/red.gif";
                        }
                    }
                    else
                    {
                        Label13.Text = "";
                        leftnoderight.ImageUrl = "img/red.gif";
                        // leftthree.DataSource = dt2;
                        //leftthree.DataBind();
                    }
                }
                {
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = "select spon from usersnew where sregno in (select id from usersnew where sregno=@ID and node='one') and node='two'";
                    //cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    //cmd.Connection = con;
                    //if (Convert.ToString(cmd.ExecuteScalar()) != "")
                    //{
                    //    Label20.Visible = true;
                    //    Label20.Text = "Proposer ID : " + Convert.ToString(cmd.ExecuteScalar());
                    //    SqlCommand cmd1 = new SqlCommand();
                    //    cmd1.CommandText = "select name from usersnew where id=@ID";
                    //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                    //    cmd1.Connection = con;
                    //    Label20.Text = Label20.Text + "(" + Convert.ToString(cmd1.ExecuteScalar()) + ")";
                    //}
                    //else
                    //{
                    //    Image12.ImageUrl = "../User/img/tree1.png";
                    //}
                }
            }
            #endregion
        }
        {
            #region RightNode-Left
            {
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select regno from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='two') and node='one'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;
                    LinkButton5.Text = Convert.ToString(cmd.ExecuteScalar());
                    lbld11.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton5.Text + "' and node='one'").ToString();
                    lbld12.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton5.Text + "' and node='two'").ToString();

                    if (LinkButton5.Text != "")
                    {
                        active = Common.Get(objsql.GetSingleValue("select active from usersnew where regno='" + LinkButton5.Text + "'"));

                        {
                            SqlCommand cmd13 = new SqlCommand();
                            cmd13.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                            cmd13.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton5.Text;
                            cmd13.Connection = con;
                            lbl5.Text = Convert.ToString(cmd13.ExecuteScalar());
                        }
                        {
                            SqlCommand cmd14 = new SqlCommand();
                            cmd14.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                            cmd14.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton5.Text;
                            cmd14.Connection = con;
                            lbl6.Text = Convert.ToString(cmd14.ExecuteScalar());
                        }
                        rightleft.ImageUrl = "img/green.gif";

                    }

                    else
                    {
                        // lvrightleft.DataSource = dt212;
                        // lvrightleft.DataBind();
                        rightleft.ImageUrl = "img/red.gif";
                    }
                    if (active == "False")
                    {
                        leftnodeleft.ImageUrl = "img/red.gif";
                    }
                }
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select fname from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='two') and node='one'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;
                    Label14.Text = Convert.ToString(cmd.ExecuteScalar());
                }
                {
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = "select spon from usersnew where sregno in (select id from usersnew where sregno=@ID and node='two') and node='one'";
                    //cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    //cmd.Connection = con;
                    //if (Convert.ToString(cmd.ExecuteScalar()) != "")
                    //{
                    //    Label21.Visible = true;
                    //    Label21.Text = "Proposer ID : " + Convert.ToString(cmd.ExecuteScalar());
                    //    SqlCommand cmd1 = new SqlCommand();
                    //    cmd1.CommandText = "select name from usersnew where id=@ID";
                    //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                    //    cmd1.Connection = con;
                    //    Label21.Text = Label21.Text + "(" + Convert.ToString(cmd1.ExecuteScalar()) + ")";
                    //}
                    //else
                    //{
                    //    Image15.ImageUrl = "../User/img/tree1.png";
                    //}
                }
            }
            #endregion
            #region RightNode-Right
            {
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select regno from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='two') and node='two'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;

                    LinkButton6.Text = Convert.ToString(cmd.ExecuteScalar());
                    lbld13.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton6.Text + "' and node='one'").ToString();
                    lbld14.Text = objsql.GetSingleValue("select count(*) from usersnew where spillsregno='" + LinkButton6.Text + "' and node='two'").ToString();
                    if (LinkButton6.Text != "")
                    {
                        active = Common.Get(objsql.GetSingleValue("select active from usersnew where regno='" + LinkButton6.Text + "'"));

                        {
                            SqlCommand cmd15 = new SqlCommand();
                            cmd15.CommandText = "select cnt from cnt_down(@ID,'one') option (maxrecursion 0)";
                            cmd15.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton6.Text;
                            cmd15.Connection = con;
                            lbl7.Text = Convert.ToString(cmd15.ExecuteScalar());
                        }
                        {
                            SqlCommand cmd16 = new SqlCommand();
                            cmd16.CommandText = "select cnt from cnt_down(@ID,'two') option (maxrecursion 0)";
                            cmd16.Parameters.Add("@ID", SqlDbType.VarChar).Value = LinkButton6.Text;
                            cmd16.Connection = con;
                            lbl8.Text = Convert.ToString(cmd16.ExecuteScalar());
                        }
                        rightright.ImageUrl = "img/green.gif";

                    }

                    else
                    {
                        // lvrightright.DataSource = dt211;
                        // lvrightright.DataBind();
                        rightright.ImageUrl = "img/red.gif";
                    }
                    if (active == "False")
                    {
                        leftnodeleft.ImageUrl = "img/red.gif";
                    }
                }
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select fname from usersnew where sregno in (select regno from usersnew where sregno=@ID and node='two') and node='two'";
                    cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    cmd.Connection = con;
                    Label15.Text = Convert.ToString(cmd.ExecuteScalar());
                }
                {
                    //SqlCommand cmd = new SqlCommand();
                    //cmd.CommandText = "select spon from usersnew where sregno in (select id from usersnew where sregno=@ID and node='two') and node='two'";
                    //cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = Sr;
                    //cmd.Connection = con;
                    //if (Convert.ToString(cmd.ExecuteScalar()) != "")
                    //{
                    //    Label22.Visible = true;
                    //    Label22.Text = "Proposer ID : " + Convert.ToString(cmd.ExecuteScalar());
                    //    SqlCommand cmd1 = new SqlCommand();
                    //    cmd1.CommandText = "select name from usersnew where id=@ID";
                    //    cmd1.Parameters.Add("@ID", SqlDbType.VarChar).Value = Convert.ToString(cmd.ExecuteScalar());
                    //    cmd1.Connection = con;
                    //    Label22.Text = Label22.Text + "(" + Convert.ToString(cmd1.ExecuteScalar()) + ")";
                    //}
                    //else
                    //{
                    //    Image18.ImageUrl = "../User/img/tree1.png";
                    //}
                }
            }
            #endregion
        }
        Image3.ImageUrl = "../User/img/user_black.png";
        Image6.ImageUrl = "../User/img/user_black.png";
        Image9.ImageUrl = "../User/img/user_black.png";
        Image12.ImageUrl = "../User/img/user_black.png";
        Image15.ImageUrl = "../User/img/user_black.png";
        Image18.ImageUrl = "../User/img/user_black.png";
        con.Dispose();
    }


    /// <summary>
    /// To Count right node
    /// </summary>
    /// <param name="node"></param>
    /// <param name="place"></param>
    private void pNodeR(string node, string place)
    {
        string sql = "select * from usersnew where regno='" + node + "'";

        DataTable dt = new DataTable();
        dt = objsql.GetTable(sql);

        if (dt.Rows.Count == 1)
        {
            Cr = Cr + 1;
        }
        else if (dt.Rows.Count > 0)
        {
            Cr = Cr + 2;
            pNodeR(dt.Select("node='one'")[0].ItemArray[0].ToString(), "one");
            pNodeR(dt.Select("node='two'")[0].ItemArray[0].ToString(), "two");
        }
    }

    /// <summary>
    /// To Count left node
    /// </summary>
    /// <param name="node"></param>
    /// <param name="place"></param>
    //private void pNodeL(string node, string place)
    //{
    //    string sql = "select * from usersnew where regno='" + node + "'";

    //    DataTable dt = new DataTable();
    //    dt = objsql.GetTable(sql);

    //    if (dt.Rows.Count == 1)
    //    {
    //        Cl = Cl + 1;
    //    }
    //    else if (dt.Rows.Count > 1)
    //    {
    //        Cl = Cl + 2;
    //        pNodeL(dt.Select("node='one'")[0].ItemArray[0].ToString(), "one");
    //        pNodeL(dt.Select("node='two'")[0].ItemArray[0].ToString(), "two");
    //    }
    //}


    /* SelectData Method & Connection string */


    //public System.Data.DataTable SelectData(string sql)
    //{
    //    try
    //    {
    //        SqlDataAdapter da = new SqlDataAdapter(sql, con);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        return dt;
    //    }
    //    catch
    //    {
    //        throw;
    //    }
    //}
    private int pNodeL(string node, string place)
    {
        string sql = "select * from usersnew where sregno='" + node + "' and node='" + place + "'";


        DataTable dt = new DataTable();
        dt = objsql.GetTable(sql);

        if (dt.Rows.Count == 1)
        {

            Cl = Cl + 1;
            pNodeLL(dt.Rows[0]["regno"].ToString(), "");

        }
        else if (dt.Rows.Count > 1)
        {

            Cl = Cl + 2;

            pNodeLL(dt.Select("node='one'")[0].ItemArray[0].ToString(), "one");
            pNodeLL(dt.Select("node='two'")[0].ItemArray[0].ToString(), "two");

        }
        if (dt.Rows.Count == 0)
        {

        }
        return Cl;
    }
    // Calculate after 1 count left
    private int pNodeLL(string node, string place)
    {
        string sql = "select * from usersnew where sregno='" + node + "' ";
        DataTable dt = new DataTable();
        dt = objsql.GetTable(sql);

        if (dt.Rows.Count == 1)
        {

            Cl = Cl + 1;

            pNodeLL(dt.Rows[0]["regno"].ToString(), "");
        }
        else if (dt.Rows.Count > 1 || dt.Rows.Count < 0)
        {

            Cl = Cl + 2;
            pNodeLL(dt.Select("node='one'")[0].ItemArray[0].ToString(), "one");

            pNodeLL(dt.Select("node='two'")[0].ItemArray[0].ToString(), "two");
            //  ActiveL(node);


        }
        if (dt.Rows.Count == 0)
        {

        }
        return Cl;

    }

    protected void btnseacrh_Click(object sender, EventArgs e)
    {
        Response.Redirect("Checktree.aspx?id=" + txtreg.Text);
    }
}