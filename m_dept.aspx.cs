using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_library
{
    public partial class m_dept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (string.IsNullOrEmpty(Session["role"] as string))
                {
                    Response.Redirect("booooks.aspx");
                }

              

            } 

        }
    }
}