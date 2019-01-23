using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CarTable.Columns[0].Visible = false; 
        if (Session["manager?"].ToString() == "man")
        {
            CarTable.Columns[0].Visible = true;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String row = CarTable.SelectedRow.Cells[0].Text;
        Session["carId"] = row;
        Response.Redirect("CarProfile.aspx");
    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        Session["Search"] = SearchDropDownList.Text;
        if (SearchDropDownList.Text == "My Offers")
        {
            Response.Redirect("SearchId.aspx");
        }
        if (SearchDropDownList.Text == "Last 24 Hours")
        {
            Session["Date"] = DateTime.Today.ToString("MM/dd/yyyy");
            Response.Redirect("Search24.aspx");
        }
        if (SearchDropDownList.Text == "In My City\r\n")
        {
            Response.Redirect("SearchCity.aspx");
        }
    }
}