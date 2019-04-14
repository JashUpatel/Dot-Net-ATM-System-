using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
//using System.Data.SqlClient;



public partial class _Default : System.Web.UI.Page
{
    //Response.Write(TextBox1.Text);
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root;database=atm");

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void submit_Click(object sender ,EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from account where card ='" + card.Text + "' and pin ='" + pin.Text + "' ";
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


            Response.Redirect("transc.aspx");
        }
        con.Close();
        //Label1.Text = card.Text;
        Label1.Text = "Invalid User Or Password";
    }
}