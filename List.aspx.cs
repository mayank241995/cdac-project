using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnUploadFile_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        

        

        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cn;
        cmdInsert.CommandType = CommandType.Text;
        cmdInsert.CommandText = "insert into books values(@book, @user,@title , @author, @category, @ori , @sell)";
        
        cmdInsert.Parameters.AddWithValue("@book", 2);
        cmdInsert.Parameters.AddWithValue("@user", 1);
        cmdInsert.Parameters.AddWithValue("@title", TextBox1.Text);
        //cmdInsert.Parameters.AddWithValue("@pw", TextBox2.Text);
        cmdInsert.Parameters.AddWithValue("@author", TextBox3.Text);
        cmdInsert.Parameters.AddWithValue("@category", TextBox4.Text);
        cmdInsert.Parameters.AddWithValue("@ori", TextBox5.Text);
        cmdInsert.Parameters.AddWithValue("@sell", TextBox6.Text);
       

        cmdInsert.ExecuteNonQuery();

        cn.Close();
    }
}