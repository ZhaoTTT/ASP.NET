
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Bookshop
{
    public partial class BookManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DdlSort.DataSource = Work.ListSortCriteria();
                DdlSort.DataBind();

                BindGrid();
            }

        }

        private void BindGrid()
        {

            GridView1.DataSource = Work.ListOrderBook();
            GridView1.DataBind();
        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "AddButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                int bookId = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                Work.AddStock(bookId);

                BindGrid();
                index = -1;
                //GridView1.EditIndex = -1;


            }
            else if (e.CommandName == "DeductButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                int bookId = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                Work.DeductStock(bookId);

                BindGrid();
                index = -1;

                //exception
            }
            else if (e.CommandName == "DeleteButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                int bookId = Convert.ToInt32(GridView1.DataKeys[index].Values[0]);
                Work.DeleteBook(bookId);
                BindGrid();
                index = -1;

            }
            else if (e.CommandName == "NewButton")
            {
                
                GridViewRow row = GridView1.HeaderRow;
                int stock = Convert.ToInt32((row.FindControl("tbStock") as TextBox).Text);
                string title = (row.FindControl("tbTitle") as TextBox).Text;
                int categoryID = Int32.Parse((row.FindControl("ddlCatID1") as DropDownList).SelectedValue);
                string author = (row.FindControl("tbAuthor") as TextBox).Text;
                decimal price = Convert.ToDecimal((row.FindControl("tbPrice") as TextBox).Text);
                string isbn = (row.FindControl("tbISBN") as TextBox).Text;
                decimal discount = Convert.ToDecimal((row.FindControl("tbDiscount") as TextBox).Text);
                if (stock >= 0 && title != null && categoryID >= 0 && author != null && price >= 0 && isbn != null && discount >= 0)
                {
                    Work.AddBook(stock, title, categoryID, author, price, isbn, discount);

                    BindGrid();
                }
                GridView1.EditIndex = -1;


            }

        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int bookId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            int stock = Convert.ToInt32((row.FindControl("TBStock") as TextBox).Text);
            string title = (row.FindControl("TBTitle") as TextBox).Text;
            int categoryID = Int32.Parse((row.FindControl("ddlCatID") as DropDownList).SelectedValue);
            string author = (row.FindControl("TBAuthor") as TextBox).Text;
            decimal price = Convert.ToDecimal((row.FindControl("TBPrice") as TextBox).Text);
            string isbn = (row.FindControl("TBISBN") as TextBox).Text;
            decimal discount = Convert.ToDecimal((row.FindControl("TBDiscount") as TextBox).Text);
           
            Work.UpdateBook(bookId, stock, title, categoryID, author, price, isbn, discount);
            GridView1.EditIndex = -1;
            BindGrid();
        }




        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            DropDownList dp = null;
            Book bk = (Book)e.Row.DataItem;
            if ((e.Row.RowType == DataControlRowType.DataRow) &&
         (e.Row.RowState & DataControlRowState.Edit) > 0)
            {
                dp = (DropDownList)e.Row.FindControl("ddlCatID");
            }
            if (e.Row.RowType == DataControlRowType.Header)
            {
                dp = (DropDownList)e.Row.FindControl("ddlCatID1");
            }
            if (dp != null)
            {
                dp.DataSource = Work.ListCategory();
                dp.DataTextField = "Name";
                dp.DataValueField = "CategoryID";
                dp.DataBind();
                if (e.Row.RowType == DataControlRowType.Header)
                {
                    dp.Items.Insert(0, new ListItem(""));
                }
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    dp.SelectedValue = bk.CategoryID.ToString();
                }


            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataSource = Work.SortBy(DdlSort.SelectedIndex);
            GridView1.DataBind();
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                GridView HeaderGrid = (GridView)sender;
                GridViewRow HeaderGridRow = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert);
                TableCell HeaderCell = new TableCell();
                HeaderCell.Text = "";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Title";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Category ID";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Author";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Price";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Discount";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Discounted Price";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "Stock";
                HeaderCell.ColumnSpan = 3;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "ISBN";
                HeaderCell.ColumnSpan = 1;
                HeaderGridRow.Cells.Add(HeaderCell);

                HeaderCell = new TableCell();
                HeaderCell.Text = "";
                HeaderCell.ColumnSpan = 2;
                HeaderGridRow.Cells.Add(HeaderCell);

                GridView1.Controls[0].Controls.AddAt(0, HeaderGridRow);

            }
        }
    }

 
    }
        
    
