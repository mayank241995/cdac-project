using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = GetDs();
            Session["ds"] = ds;
            DropDownList1.DataSource = ds.Tables["Deps"];
            DropDownList1.DataBind();

        }
    }

    private DataSet GetDs()
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"Data Source=(LocalDb)\MsSqlLocalDb;Initial Catalog=Ravindra;Integrated Security=True;Pooling=False";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Departments";

        cn.Open();

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        DataSet ds = new DataSet();
        da.Fill(ds, "Deps");

        cmd.ExecuteNonQuery();


       
        cn.Close();

        return ds;
    }
}