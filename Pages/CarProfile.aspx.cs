using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;


public partial class Pages_CarProfile : System.Web.UI.Page
{
    static int COffer;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "SELECT TYPE FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(checkuser, conn);
        ProCarTypeLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT COLOR FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarColorLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT YEAR FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarYearLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT HAND FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarHandLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT CITY FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarCityLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT DETAILS FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarDetailsLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT FDATE FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarFdateLable.Text = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT PIC FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        ProCarImage.ImageUrl = Convert.ToString(cmd.ExecuteScalar());
        checkuser = "SELECT BEGINPRICE FROM [CARS] WHERE ID='" + Session["carId"].ToString() + "'";
        cmd = new SqlCommand(checkuser, conn);
        COffer = Convert.ToInt32(cmd.ExecuteScalar());
        ProCarCofferLable.Text = Convert.ToString(COffer);
        CarProNOfferlable.Visible = false;
        ProCarNofferBox.Visible = false;
        ProCarSubmitButton.Visible = false;
    }

    protected void OfferButton_Click(object sender, EventArgs e)
    {
        CarProNOfferlable.Visible = true;
        ProCarNofferBox.Visible = true;
        ProCarSubmitButton.Visible = true;
    }

    protected void ProCarSubmitButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToInt32(ProCarNofferBox.Text) > COffer)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "UPDATE CARS SET [BEGINPRICE] =" + ProCarNofferBox.Text + " WHERE [ID] = '" + Session["carId"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                cmd.ExecuteNonQuery();
                checkuser = "UPDATE CARS SET [PERID] =" + Session["ID"].ToString() + " WHERE [ID] = '" + Session["carId"].ToString() + "'";
                cmd = new SqlCommand(checkuser, conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("CarProfile.aspx");
                CarProNOfferlable.Visible = false;
                ProCarNofferBox.Visible = false;
                ProCarSubmitButton.Visible = false;
            }
            else
            {
                OfferLable.Text = "New offer must be more than the current one.";
            }
        }
        catch (Exception er)
        {
            OfferLable.Text = er.ToString();
        }
    }

    protected void DownButton_Click(object sender, EventArgs e)
    { 
        Session["PDF"]= " Type: " + ProCarTypeLable.Text + ".\n Year: " + ProCarYearLable.Text + ".\n Color: " + ProCarColorLable.Text + ".\n Hand: " + ProCarHandLable.Text + ".\n City: " + ProCarCityLable.Text + ".\n Detail: " + ProCarDetailsLable.Text + ".\n ";
        Session["PDF2"]=" Final Date: " + ProCarFdateLable.Text + ".\n Current Offer: " + ProCarCofferLable.Text + " K. \n";
        Session["PDFIM"] = ProCarImage.ImageUrl;
        Response.Redirect("DownFile.aspx"); 
    }
}