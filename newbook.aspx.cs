//amal_salh2006@yahoo.com
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
namespace online_library
{
    public partial class newbook : System.Web.UI.Page
    {
       static string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fill_author();
                fill_dept();
                if (string.IsNullOrEmpty(Session["role"] as string))
                {
                    Response.Redirect("booooks.aspx");

                }
                else
                {
                  

                }
            }
        }

        private void fill_author()
        {
            string str = "select fname+'  '+lname as name ,suth_no from author";
          
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adapt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapt.Fill(ds);
            dd_author.DataTextField = ds.Tables[0].Columns["name"].ToString();
            dd_author.DataValueField = ds.Tables[0].Columns["suth_no"].ToString();
            dd_author.DataSource = ds.Tables[0];
            dd_author.DataBind();

        }
        private void fill_dept()
        {
            string str = "select dept_id,dept_name from dept";
            string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adapt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapt.Fill(ds);
          dd_dept.DataTextField = ds.Tables[0].Columns["dept_name"].ToString();
            dd_dept.DataValueField = ds.Tables[0].Columns["dept_id"].ToString();
          dd_dept.DataSource = ds.Tables[0];
            dd_dept.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
      
                string extension = Path.GetExtension(FileUpload2.PostedFile.FileName);//image
               // newfilename =DateTime.Now.ToString("MM-DD-YYYY");//rename image

                string imgname =  DateTime.Now.ToString("yyyyMMddHHmmss")+FileUpload2.PostedFile.FileName ;
                FileUpload2.SaveAs(Server.MapPath("bokimgs/"+imgname));
                string FileName = DateTime.Now.ToString("yyyyMMddHHmmss") + FileUpload1.PostedFile.FileName;
                FileUpload1.SaveAs(Server.MapPath("books/" + FileName));
                string insrt = "insert into book(bookname,bookdesc,dept_id,link,author_id,img) values(@name,@desc,@did,@link,@author,@img)";
                SqlCommand cmdinsrt = new SqlCommand(insrt, con);
                cmdinsrt.Parameters.Add("@name", SqlDbType.NVarChar).Value = txt_name.Value;
                cmdinsrt.Parameters.Add("@desc", SqlDbType.NVarChar).Value = txt_decsrp.Text;
                cmdinsrt.Parameters.Add("@did", SqlDbType.Int).Value = dd_dept.SelectedValue;
                cmdinsrt.Parameters.Add("@link", SqlDbType.NVarChar).Value = "books/" + FileName;
                cmdinsrt.Parameters.Add("@author", SqlDbType.Int).Value = dd_author.SelectedValue;
                cmdinsrt.Parameters.Add("@img", SqlDbType.NVarChar).Value = "bokimgs/"+imgname;
                con.Open();
                cmdinsrt.ExecuteNonQuery();
                con.Close();
                lb_msg.Text = "Inserted";
          
        }
    }
}