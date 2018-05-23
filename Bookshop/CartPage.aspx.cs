using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bookshop
{
    public partial class CartPage : System.Web.UI.Page
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


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                int detailId = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                Work.AddQuantity(detailId);
                
                BindGrid();
                index = -1;
                //GridView1.EditIndex = -1;


            }
            else if (e.CommandName == "DeductButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                int detailId = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                Work.DeductQuantity(detailId);
                
                BindGrid();
                index = -1;

                //exception
            }
            else if (e.CommandName == "DeleteButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                int transid = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                Work.DeleteCartItem(transid);
                BindGrid();
                index = -1;

            }
          
        }

        protected void ProceedButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Confirmation.aspx?userid=" + userid);
        }
    }
}

//        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
//        {
//            int transid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
//            Work.DeleteCartItem(transid);
//            BindGrid();
//;        }