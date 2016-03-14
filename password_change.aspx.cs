
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

namespace online_library
{
    public partial class password_change : System.Web.UI.Page
    {
      
       protected void Page_Load(object sender, EventArgs e)
       {

          if(string.IsNullOrEmpty(Session["umail"] as string))
          {
              Response.Redirect("userlogin.aspx");

          }
        

       }//check if user login 
               

       

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            
                string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
                SqlConnection con = new SqlConnection(strcon);
                string cmdstr = "update u_user set upassword=@newpass where username=@username";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                cmd.Parameters.Add("@newpass", SqlDbType.NVarChar).Value = TextBox1.Value;
                cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = Session["umail"].ToString();
                con.Open();
                cmd.ExecuteNonQuery();
               lb_msg.Text = "Password Changed";
                con.Close();
           
        }

       
    }
}