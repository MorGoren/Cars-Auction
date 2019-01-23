using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ResponseID : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["REID"].ToString() == "0")
            ResponsLabel.Text = "There are no response from that user"; 
    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {

    }
}