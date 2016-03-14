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
    public partial class userlogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Page.Master.FindControl("login").Visible = false;
              
              
            }

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = "";
            string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Validate_User", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@umail", SqlDbType.NVarChar).Value = UserName.Text;
            cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = Password.Text;
            cmd.Parameters.Add("@usename", SqlDbType.NVarChar,20);
            cmd.Parameters["@usename"].Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@case", SqlDbType.Int,5);
            cmd.Parameters["@case"].Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@userid", SqlDbType.Int, 5);
            cmd.Parameters["@userid"].Direction = ParameterDirection.Output;
        
            int result = 0;
            con.Open();
            cmd.ExecuteNonQuery();
            Session["userid"] = cmd.Parameters["@userid"].Value.ToString();
            result = Convert.ToInt32(cmd.Parameters["@case"].Value.ToString());
            username = cmd.Parameters["@usename"].Value.ToString();
            HttpCookie returnCookie = Request.Cookies["returnUrl"];
            switch (result)
            {
                case -1:


                    Session["umail"] = username;
                    if ((returnCookie == null) || string.IsNullOrEmpty(returnCookie.Value))
                    {
                        Response.Redirect("booooks.aspx");
                    }
                    else
                    {
                        HttpCookie deleteCookie = new HttpCookie("returnUrl");
                        deleteCookie.Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Add(deleteCookie);
                        Response.Redirect(returnCookie.Value);
                    }
                    break;
               
                case -3:
                    lbmsg.Text = "Invalid User";
                    break;
                case -4:
                    Session["role"] = "admin";
                    Session["umail"] = username;
                    if ((returnCookie == null) || string.IsNullOrEmpty(returnCookie.Value))
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        HttpCookie deleteCookie = new HttpCookie("returnUrl");
                        deleteCookie.Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Add(deleteCookie);
                        Response.Redirect(returnCookie.Value);
                    }
            
                    break;
                default:
                    lbmsg.Text = "Invalid";
                    break;
                    



            }

        }
    }
}