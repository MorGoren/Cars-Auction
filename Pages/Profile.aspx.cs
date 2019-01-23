using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        ProIdLable.Text = Session["ID"].ToString(); 
        string checkuser = "SELECT FNAME FROM [USER] WHERE Id='" + Session["ID"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(checkuser, conn);
        FnLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [LNAME] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        LnLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [BDATE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProDateLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [PHONE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        PhoneLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [EMAIL] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        EmailLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CITY] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCityLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CREDIT_CARD_TYPE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        TypeLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CREDIT_CARD_NUMBER] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        NumberLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CVV] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        CvvLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CDATE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        ExLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [Ad] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        AddLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [PIC] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        UpImage.ImageUrl = Convert.ToString(cmd.ExecuteScalar());
    }

    protected void DeleteAccountButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "DELETE FROM [USER] WHERE [Id]='" + Session["ID"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(checkuser, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Session["ID"] = null; 
        Response.Redirect("About.aspx");
    }

    protected void CarSubmitButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProfileChange.aspx");
    }
}