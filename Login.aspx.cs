using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"Data Source=(LocalDb)\MSSqlLocalDb;Initial Catalog=Suraj;Integrated Security=True";

        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cn;
        cmdInsert.CommandType = CommandType.StoredProcedure;
        cmdInsert.CommandText = "LoginSelect";

        cmdInsert.Parameters.AddWithValue("@user_id", txt_uid.Text);
        cmdInsert.Parameters.AddWithValue("@password", txt_pwd.Text);

        cn.Open();
        int res = (int)cmdInsert.ExecuteScalar();
        cn.Close();

        if (res == 1)
        {

            Response.Redirect("CS.aspx");
        }
        else
        {
            Response.Redirect("Register.aspx");

        }
        



    }
}