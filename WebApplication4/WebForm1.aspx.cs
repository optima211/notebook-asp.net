using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection db = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nedmk\source\repos\WebApplication4\WebApplication4\App_Data\Notebook.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == "") || (TextBox2.Text == ""))
            {
                Response.Redirect(String.Format("WebForm1.aspx?"));
            }
            else
            {
                db.Open();
                SqlCommand view = db.CreateCommand();
                view.CommandText = "insert into [Records] values('" + TextBox1.Text + "', '" + TextBox2.Text + "')";
                view.ExecuteNonQuery();
                db.Close();
                Response.Redirect(String.Format("WebForm1.aspx?"));
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                Response.Redirect(String.Format("WebForm1.aspx?"));
            }
            else
            {
                db.Open();
                SqlCommand view = db.CreateCommand();
                view.CommandText = "Delete from [Records] where Id = '" + TextBox3.Text + "' ";
                view.ExecuteNonQuery();
                db.Close();
                Response.Redirect(String.Format("WebForm1.aspx?"));
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
            Button4.Enabled = true;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            if ((TextBox4.Text == "") || (TextBox5.Text == ""))
            {
                Response.Redirect(String.Format("WebForm1.aspx?"));
            }
            else
            {
                db.Open();
                SqlCommand view = db.CreateCommand();
                view.CommandText = "UPDATE Records SET FIO='" + TextBox4.Text + "',phone='" + TextBox5.Text + "' WHERE Id= '" + TextBox3.Text + "'";
                view.ExecuteNonQuery();
                db.Close();
                Response.Redirect(String.Format("WebForm1.aspx?"));
            }
        }
    }
}