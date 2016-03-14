//---amal_salh2006@yahoo.com------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_library
{
    public partial class booooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      

      
        protected void ListView1_PreRender(object sender, EventArgs e)
        {
            ListView1.DataBind();
        }

        protected void DataPager2_PreRender(object sender, EventArgs e)
        {
            ListView1.DataBind();
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id"] = ListView1.SelectedDataKey[0].ToString();
            Response.Redirect("bkdownload.aspx");
        }

        
    }
}