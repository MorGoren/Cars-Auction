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

public partial class Pages_Managment_AddCar : System.Web.UI.Page
{
    static string image= "~/image/backupCar.jpeg";
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void CarPicLoadButton_Click(object sender, EventArgs e)
    {
        if (CarPicUp.HasFile)
        {
            string str = CarPicUp.FileName;
            CarPicUp.PostedFile.SaveAs(Server.MapPath("~/image/" + str));
            image = "~/image/" + str.ToString();
            UpImage.ImageUrl = image;
            UpImage.Visible = true;
        }

    }

    protected void CarSubmitButton_Click(object sender, EventArgs e)
    {
        CarResultLable.Text = "";
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from CARS where ID='" + CarNumberBox.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {
                CarResultLable.Text = "Car Already Exist";
            }
            else
            {
                try
                { 
                    string insertQ = "INSERT INTO CARS(ID, TYPE, COLOR, YEAR, DETAILS, HAND, CITY, PIC, BEGINPRICE, FDATE) VALUES (@1, @2, @3, @4, @5, @6, @7, @8, @9, @10)";
                    cmd = new SqlCommand(insertQ, conn);
                    cmd.Parameters.AddWithValue("@1", CarNumberBox.Text);
                    cmd.Parameters.AddWithValue("@2", CarTypeList.Text);
                    cmd.Parameters.AddWithValue("@3", CarColorBox.Text);
                    cmd.Parameters.AddWithValue("@4", CarYearList.Text);
                    cmd.Parameters.AddWithValue("@5", CarDetailsBox.Text);
                    cmd.Parameters.AddWithValue("@6", CarHandList.Text);
                    cmd.Parameters.AddWithValue("@7", CarCityList.Text);
                    cmd.Parameters.AddWithValue("@8", image);
                    cmd.Parameters.AddWithValue("@9", CarPriceBox.Text);
                    cmd.Parameters.AddWithValue("@10", CarFinalBox.Text);
                    cmd.ExecuteNonQuery();
                    Response.Write("Car added Successfully!");
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
            conn.Close();
        }
    }


    protected void ResetButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddCar.aspx"); 
    }
}