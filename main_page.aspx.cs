//amal_salh2006@yahoo.com
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
    public partial class main_page : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

            


        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = ListView1.SelectedDataKey[0].ToString();
            Response.Redirect("bkdownload.aspx");
        }

       
    }
}
