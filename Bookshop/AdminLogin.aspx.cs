using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Mybooks cont = new Mybooks();
        Work c = new Work();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var q = cont.Users.Where(x => (x.UserName == TextBox1.Text)&(x.Admin == 1));
            if (q.Count() != 0)
            {
                if (q.Select(x => x.Password).First().ToString() == c.GetHashed(TextBox2.Text, TextBox1.Text))
                {
                    Label3.Text = "Login successfully!";
                    int userid = q.Select(x => x.UserID).First();
                    Session["username"] = "Admin";
                    //Go to previous page
                    Response.Redirect("BookManagement.aspx");
                }
                else
                {
                    Label3.Text = "Wrong Password!";
                }
            }
            else
            {
                Label3.Text = "Invalid Username";
            }
        }
    }

}