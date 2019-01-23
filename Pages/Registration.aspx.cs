using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; 
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Net;
using System.Net.Mail;


public partial class Pages_Registration : System.Web.UI.Page
{
    static string image= "~/image/profile-pictures.png"; 
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CarSubmitButton_Click(object sender, EventArgs e)
    {
        RegLable.Text = "";
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [USER] where Id='" + RegIdBox.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            try
            {
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    RegLable.Text = "User Already Exist";
                }
                else
                {
                    try
                    {
                        string insertQ = "INSERT into [USER] (Id, FNAME, LNAME, BDATE, PHONE, EMAIL, CITY, CREDIT_CARD_TYPE, CREDIT_CARD_NUMBER, CVV, CDATE, AD, PASS, PIC) values  (@1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @12, @13, @14)";
                        cmd = new SqlCommand(insertQ, conn);
                        cmd.Parameters.AddWithValue("@1", RegIdBox.Text);
                        cmd.Parameters.AddWithValue("@2", RegFNameBox.Text);
                        cmd.Parameters.AddWithValue("@3", RegLNameBox.Text);
                        cmd.Parameters.AddWithValue("@4", RegBdateBox.Text);
                        cmd.Parameters.AddWithValue("@5", RegPhoneBox.Text);
                        cmd.Parameters.AddWithValue("@6", RegEmailBox.Text);
                        cmd.Parameters.AddWithValue("@7", RegCityList.Text);
                        cmd.Parameters.AddWithValue("@8", RegCreditTypeList.Text);
                        cmd.Parameters.AddWithValue("@9", RegCreditNumBox.Text);
                        cmd.Parameters.AddWithValue("@10", RegCreditCvvBox.Text);
                        cmd.Parameters.AddWithValue("@11", RegCreditExBox.Text);
                        cmd.Parameters.AddWithValue("@12", RegAddresBox.Text);
                        cmd.Parameters.AddWithValue("@13", sha256_hash(RegPassBox.Text));
                        cmd.Parameters.AddWithValue("@14", image);
                        cmd.ExecuteNonQuery();
                        RegLable.Text = "You were Successfully added!";
                        writeMail();
                        Session["log?"] = "log";
                        Session["ID"] = RegIdBox.Text;
                        insertQ = "SELECT COUNT(*) FROM ADMIN WHERE Id='"+ RegIdBox.Text+"'";
                        cmd = new SqlCommand(insertQ, conn);
                        int num = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                        Session["City"] = RegCityList.Text; 
                        if (num == 1)
                            Session["manager?"] = "man";
                        else
                            Session["manager?"] = "no"; 
                        Response.Redirect("Cars.aspx");
                        conn.Close();
                        Response.Redirect("Cars.aspx"); 
                    }
                    catch (Exception ex)
                    {
                        Response.Write("error" + ex.ToString());
                    }
                }
                conn.Close();
            }
            catch (Exception err)
            {
                RegLable.Text = "Error " + err;
                conn.Close(); 
            }
        }
    }

    public static String sha256_hash(String value)
    {
        using (SHA256 hash = SHA256Managed.Create())
        {
            return String.Concat(hash.ComputeHash(Encoding.UTF8.GetBytes(value)).Select(item => item.ToString("x2")));
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = RegPicUp.FileName;
        RegPicUp.PostedFile.SaveAs(Server.MapPath("~/image/" + str));
        image = "~/image/" + str.ToString();
        UpImage.ImageUrl = image;
        UpImage.Visible = true;
    }

    protected void ResetButton_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    private void writeMail()
    {
        try
        {
            string body = "Thanks for join our family!\n By Mor&Co";
            string email = "lira6lin@gmail.com";
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            MailMessage massage = new MailMessage();
            massage.To.Add(RegEmailBox.Text);
            massage.From = new MailAddress(email);
            massage.Subject = "Regiatrate to Mor&Co.";
            massage.Body = body;
            client.Send(massage);
        }
        catch(Exception ex)
        {
            RegLable.Text = "Couldent Send Email" + ex.Message; 
        }
    }
}