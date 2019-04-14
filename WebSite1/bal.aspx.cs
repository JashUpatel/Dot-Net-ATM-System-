using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class bal : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root;database=atm");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from account where name ='" + Session["name"] + "' ";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            Session["name"] = dr["name"].ToString();
            Session["card"] = dr["card"].ToString();
            Session["account"] = dr["account"].ToString();
            Session["pin"] = dr["pin"].ToString();
            Session["balance"] = dr["balance"].ToString();


          //  Response.Redirect("transc.aspx");
        }
        if(Request.QueryString["t"]=="1")
        {
            Label1.Text = "Amount Withdrawn Successfully.";

          
        }
        if(Request.QueryString["t"]=="0")
        {
            Label1.Text = "Amount Deposited Successfully.";

        }
        con.Close();

    }
}