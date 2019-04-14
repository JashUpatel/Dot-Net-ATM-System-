using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class deposit : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root;database=atm");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("Default.aspx");
        }

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (depo.Text==null)
        {
            Label1.Text = "Amount value cannot be set empty !";
        }
        else
        {

            Int32 dep = 1 *Convert.ToInt32(depo.Text.ToString());
            Int32 amount = Convert.ToInt32(Session["balance"].ToString()) + dep;
           // int amount = (int)Session["balance"] + Convert.ToInt32(depo.Text);
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE account SET balance = '" + amount + "'where card ='" + Session["card"] + "' ";
            cmd.ExecuteNonQuery();

            con.Close();
            // Label1.Text = spin.Text;
            Response.Redirect("bal.aspx?t=0");
        }
    }
}