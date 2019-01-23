using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_AddManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MakeManTable.Columns[7].Visible = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            String id = MakeManTable.SelectedRow.Cells[0].Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [ADMIN] where Id='" + id + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp > 0)
            {
                AddManTableLable.Text = "Manager already exists.";
            }
            else
            {
                checkuser = "insert into [ADMIN] values(@1)";
                cmd = new SqlCommand(checkuser, conn);
                cmd.Parameters.AddWithValue("@1", id);
                cmd.ExecuteNonQuery();
            }
        }
        catch (Exception er)
        {
            AddManTableLable.Text = er.ToString();
        }
    }

}