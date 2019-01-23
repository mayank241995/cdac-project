using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = GetDs();

             
    }

    private DataSet GetDs()
    {
        return null;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"Data Source=(LocalDb)\MSSqlLocalDb;Initial Catalog=Ravindra;Integrated Security=True";

        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cn;
        cmdInsert.CommandType = CommandType.StoredProcedure;
        cmdInsert.CommandText = "InsertEmployee";

        cmdInsert.Parameters.AddWithValue("@EmpNo", txtEmpNo.Text);
        cmdInsert.Parameters.AddWithValue("@Name", txtName.Text);
        cmdInsert.Parameters.AddWithValue("@Basic", txtBasic.Text);
        cmdInsert.Parameters.AddWithValue("@DeptNo", txtDeptNo.Text);

        cn.Open();
        cmdInsert.ExecuteNonQuery();
        cn.Close();

    }
}