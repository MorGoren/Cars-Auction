using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LogButton_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [USER] where Id='" + LogIdBox.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 0)
            {
                LogLable.Text = "You are not registrate";
            }

            else
            {
                checkuser = "SELECT [PASS] FROM [USER] WHERE Id='" + LogIdBox.Text + "'";
                cmd = new SqlCommand(checkuser, conn);
                if (sha256_hash(LogPassBox.Text) != Convert.ToString(cmd.ExecuteScalar()))
                {
                    LogLable.Text = "Wrong Password";
                }
                else
                {
                    Session["log?"] = "log";
                    Session["ID"] = LogIdBox.Text;
                    checkuser = "SELECT COUNT(*) FROM [ADMIN] WHERE Id='" + LogIdBox.Text + "'";
                    cmd = new SqlCommand(checkuser, conn);
                    int ans = Convert.ToInt32(cmd.ExecuteScalar());
                    if (ans == 1)
                    {
                        Session["manager?"] = "man";
                    }
                    else
                    {
                        Session["manager?"] = "no"; 
                    }
                    checkuser = "SELECT [CITY] FROM [USER] WHERE Id='" + LogIdBox.Text + "'";
                    cmd = new SqlCommand(checkuser, conn);
                    Session["CITY"] = cmd.ExecuteScalar(); 
                    Response.Redirect("Cars.aspx"); 
                }
            }
        }
    }
    public static String sha256_hash(String value)
    {
        using (SHA256 hash = SHA256Managed.Create())
        {
            return String.Concat(hash
            .ComputeHash(Encoding.UTF8.GetBytes(value))
            .Select(item => item.ToString("x2")));
        }
        
    }
}