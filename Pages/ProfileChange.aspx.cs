using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ProfileChange : System.Web.UI.Page
{
    static string image; 
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "SELECT FNAME FROM [USER] WHERE Id='" + Session["ID"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(checkuser, conn);
        FNameBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [LNAME] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        LNameBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [BDATE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        BdateBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [PHONE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        PhoneBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [EMAIL] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        EmailBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CITY] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        CityList.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CREDIT_CARD_TYPE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        RegCreditTypeList.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CREDIT_CARD_NUMBER] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        CreditNumBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CVV] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        CreditCvvBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [CDATE] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        CreditExBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [Ad] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        AddresBox.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "select [PIC] from [USER] where Id='" + Session["ID"] + "'";
        cmd = new SqlCommand(checkuser, conn);
        UpImage.ImageUrl = Convert.ToString(cmd.ExecuteScalar());
        image = UpImage.ImageUrl; 
    }

    protected void CarSubmitButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string insertQ = "UPDATE USER SET [FNAME] =" + FNameBox.Text+ " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [LNAME] =" + LNameBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [BDATE] =" + BdateBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [PHONE] =" + PhoneBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [EMAIL] =" + EmailBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [CITY] =" + CityList.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [CREDIT_CARD_TYPE] =" + RegCreditTypeList.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [CREDIT_CARD_NUMBER] =" + CreditNumBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [CVV] =" + CreditCvvBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [CDATE] =" + CreditExBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [AD] =" + AddresBox.Text + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
        insertQ = "UPDATE USER SET [PIC] =" + UpImage.ImageUrl + " WHERE [Id] = '" + Session["ID"].ToString() + "'";
        cmd = new SqlCommand(insertQ, conn);
        cmd.ExecuteNonQuery();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = RegPicUp.FileName;
        RegPicUp.PostedFile.SaveAs(Server.MapPath("~/image/" + str));
        image = "~/image/" + str.ToString();
        UpImage.ImageUrl = image;
        UpImage.Visible = true;
    }
}