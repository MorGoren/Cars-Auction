using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 


public partial class Pages_Respons : System.Web.UI.Page
{
    static int num;
    protected void Page_Load(object sender, EventArgs e)
    {
        ResponsTable.Columns[3].Visible = false;
        Responsbox.Visible = false;
        AddButton.Visible = false;
        if (Session["log?"].ToString() == "log")
        {
            if (Session["manager?"].ToString() == "man")
            {
                ResponsTable.Columns[3].Visible = true;
            }
        }
        else
        {
            AddReButton.Visible = false; 
        }
    }

    protected void AddReButton_Click(object sender, EventArgs e)
    {
        Responsbox.Visible = true;
        AddButton.Visible = true;
    }

    protected void AddButton_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "SELECT COUNT(*) FROM [RESPONS]";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            num = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            num++; 
            try
            {
                string insertQ = "INSERT INTO RESPONS(NUM, DATE, PERID, DETAILS) VALUES (@1, @2, @3, @4)";
                cmd = new SqlCommand(insertQ, conn);
                cmd.Parameters.AddWithValue("@1", Convert.ToString(num));
                cmd.Parameters.AddWithValue("@2", DateTime.Today.ToString());
                cmd.Parameters.AddWithValue("@3", Session["ID"].ToString());
                cmd.Parameters.AddWithValue("@4", Responsbox.Text);
                cmd.ExecuteNonQuery();
                ResponsLabel.Text="Response added Successfully!";
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            conn.Close();
        }
    }


    protected void SearchButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "SELECT COUNT(*) FROM [RESPONS]WHERE PERID='"+ IDSearchResBox.Text+"'";
        SqlCommand cmd = new SqlCommand(checkuser, conn);
        num = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        if (num == 0)
            Session["REID"] = "0"; 
        else
            Session["REID"] = IDSearchResBox.Text;
        Response.Redirect("ResponseID.aspx"); 
    }
}