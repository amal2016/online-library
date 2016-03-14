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
    public partial class dept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(Session["role"] as string))
            {
                Response.Redirect("booooks.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int result = 0;
            string str = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(str);
          
            SqlCommand cmd = new SqlCommand("insertdept", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txt_name.Value;
            cmd.Parameters.Add("@desc", SqlDbType.NVarChar).Value = txt_desc.Text;

           
                con.Open();
                result = Convert.ToInt32( cmd.ExecuteScalar());
                con.Close();
                if (result == 2)
                {
                    lb_msg.Text = "Inserted ";
                }
                else
                {
                    lb_msg.Text = "Existed Before";
                }
            }
           
        }
    }

