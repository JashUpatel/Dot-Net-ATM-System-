using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class pin : System.Web.UI.Page
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
        if (spin.Text == null || cpin.Text == null)
        {
            Label1.Text = "Pin value cannot be set empty !";
        }
        else
        {
            //Response.Write(spin.Text);
            //double a = Convert.ToDouble(spin.Text);
            //double b = Convert.ToDouble(cpin.Text);
            string a = spin.Text;
            string b = cpin.Text;
            if (a==b)
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE account SET pin = '" + spin.Text + "'where card ='" + Session["card"] + "' ";
                cmd.ExecuteNonQuery();

                con.Close();
               // Label1.Text = spin.Text;
                Label1.Text = "Pin Changed Sucessfully.";
                spin.Text = String.Empty;
                cpin.Text = String.Empty;
                //Response.Redirect("pin.aspx");
            }
            else
            {
                Label1.Text = "Pin value Doesn't  Match !";
            }
        }
    }
}