using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public static object DataAccessLayer { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"Data Source=(LocalDb)\MSSqlLocalDb;Initial Catalog=Suraj;Integrated Security=True;Pooling=False";

        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cn;
        cmdInsert.CommandType = CommandType.StoredProcedure;
        cmdInsert.CommandText = "RegisterUser";

        cmdInsert.Parameters.AddWithValue("@User_id", txt_u_name.Text);
        cmdInsert.Parameters.AddWithValue("@Name", txt_name.Text);
        cmdInsert.Parameters.AddWithValue("@Email", txt_email.Text);
        cmdInsert.Parameters.AddWithValue("@Mobileno", txt_mobno.Text);
        cmdInsert.Parameters.AddWithValue("@Password", txt_pwd.Text);
        cmdInsert.Parameters.AddWithValue("@Address", txt_address.Text);
        cmdInsert.Parameters.AddWithValue("@Area", AreaList.SelectedValue);


        cn.Open();
        cmdInsert.ExecuteNonQuery();
        cn.Close();
    }

    protected void txt_name_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txt_u_name_TextChanged(object sender, EventArgs e)
    {
       
    }
}