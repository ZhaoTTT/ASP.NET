using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class Confirmation : System.Web.UI.Page
    {
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            userid = Request.QueryString["userid"];
            if (!IsPostBack)
            {
                BindGrid();
            }

        }

        private void BindGrid()
        {
            GridView1.DataSource = Work.ListCartItem(Convert.ToInt32(userid));
            GridView1.DataBind();
            TotalLabel.Text = "Total \t\t" + (Work.CalculatePrice(Convert.ToInt32(userid))).ToString();
        }
    }
}