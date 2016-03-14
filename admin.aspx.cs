//---amal_salh2006@yahoo.com------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
namespace online_library
{
    public partial class admin : System.Web.UI.Page
    {

        private void numuser()
        {
            string str = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("numuser",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@regist", SqlDbType.Int);
            cmd.Parameters["@regist"].Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@login", SqlDbType.Int);
            cmd.Parameters["@login"].Direction = ParameterDirection.Output;
            con.Open();
            cmd.ExecuteNonQuery();
            
            con.Close();
           lb_regist.Text = cmd.Parameters["@regist"].Value.ToString();
       lb_login.Text = cmd.Parameters["@login"].Value.ToString();






        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (!Page.IsPostBack)
                {
               numuser();
                    if (string.IsNullOrEmpty(Session["role"] as string))
                    {
                        Response.Redirect("booooks.aspx");
                       
                    }
                   
                    
            }
        }

    
    
    }
}