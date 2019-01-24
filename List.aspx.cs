using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;

public partial class List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_userid.Text =Session["user_id"].ToString();

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Authors";

            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            AuthorList.DataSource = dr;
            AuthorList.DataTextField = "Name";
            AuthorList.DataValueField = "Author_id";
            AuthorList.DataBind();

            
            cn.Close();
        }
    }


    protected void btnUploadFile_Click(object sender, EventArgs e)
    {
        byte[] bytes;
        using (BinaryReader br = new BinaryReader(fileupload1.PostedFile.InputStream))
        {
            bytes = br.ReadBytes(fileupload1.PostedFile.ContentLength);
        }

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        
        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cn;
        cmdInsert.CommandType = CommandType.Text;
        cmdInsert.CommandText = "insert into books values(@User_id,@Title, @Category,@No_of_pages,@Publication,@Original_price,@Selling_price,@Exchange,@Status_book,@Pic)";

        //cmdInsert.CommandType = CommandType.StoredProcedure;
        //cmdInsert.CommandText = "BookInsert";

        cmdInsert.Parameters.AddWithValue("@User_id", lbl_userid.Text);
        cmdInsert.Parameters.AddWithValue("@Title", txt_title.Text);

        cmdInsert.Parameters.AddWithValue("@Category", txt_category.Text);
        cmdInsert.Parameters.AddWithValue("@No_of_pages", txt_no_of_pages.Text);
        cmdInsert.Parameters.AddWithValue("@Publication", txt_publication.Text);

        cmdInsert.Parameters.AddWithValue("@Original_price", txt_oprice.Text);
        cmdInsert.Parameters.AddWithValue("@Selling_price", txt_sprice.Text);

        cmdInsert.Parameters.AddWithValue("@Exchange", rb_exchange.SelectedValue);
        cmdInsert.Parameters.AddWithValue("@Status_book", rbstatus.SelectedValue);
      
        cmdInsert.Parameters.AddWithValue("@Pic", bytes);


        cn.Open();
        cmdInsert.ExecuteNonQuery();


        SqlCommand cmd_book_auth = new SqlCommand();
        cmd_book_auth.Connection = cn;
        cmd_book_auth.CommandType = CommandType.Text;
        cmd_book_auth.CommandText = "insert into BookAuth values(@Author_id,@Book_id)";

        cmd_book_auth.Parameters.AddWithValue("@Author_id", AuthorList.SelectedValue);
        cmd_book_auth.Parameters.AddWithValue("@Book_id", 5);

        cmd_book_auth.ExecuteNonQuery();


        cn.Close();



    }





    protected void btn_Add_Auth_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"Data Source=(LocalDb)\MSSqlLocalDb;Initial Catalog=Suraj;Integrated Security=True;Pooling=False";

        SqlCommand cmdInsert = new SqlCommand();
        cmdInsert.Connection = cn;
        cmdInsert.CommandType = CommandType.Text;

        cmdInsert.CommandText = "insert into Authors(Name) values (@Name)";

        cmdInsert.Parameters.AddWithValue("@Name", txt_auth.Text);
        cn.Open();
        cmdInsert.ExecuteNonQuery();
        cn.Close();
      
    }





  
}