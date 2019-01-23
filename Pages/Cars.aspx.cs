using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Casrs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CarTable.Columns[0].Visible = false;
        CarTable.Columns[7].Visible = false;
        AddCarLink.Visible = false; 
        if (Session["manager?"].ToString() == "man")
        {
            AddCarLink.Visible = true;
            CarTable.Columns[0].Visible = true;
            CarTable.Columns[7].Visible = true;
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
        string search = SearchDropDownList.Text;
        Session["Search"] = search;
        if (search == "My Offers")
        {
            Response.Redirect("SearchId.aspx");
        }
        if (search == "Last 24 Hours")
        {
            Session["Date"] = DateTime.Today.ToString("MM/dd/yyyy");
            Response.Redirect("Search24.aspx");
        }
        if (search == "In My City\r\n")
        {
            Response.Redirect("SearchCity.aspx");
        }
    }
}