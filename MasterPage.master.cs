using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["log?"]) == "log")
        {
            LogInLink.Visible = false;
            RegistrationLink.Visible = false;
            LogOutLink.Visible = true;
            ProLink.Visible = true;
            if (Convert.ToString(Session["manager?"]) == "man")
            {
                ManagmentLink.Visible = true;
            }
        }
        else
        {
            LogInLink.Visible = true;
            RegistrationLink.Visible = true;
            LogOutLink.Visible = false;
            ProLink.Visible = false;
        }
    }
}
