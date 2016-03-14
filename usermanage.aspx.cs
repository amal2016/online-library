
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
    public partial class usermanage : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                if (string.IsNullOrEmpty(Session["role"] as string))
                {
                    Response.Redirect("booooks.aspx");

                }
                else
                {



                   

                }
                grid.DataBind();

            }
          
           
        }

       

         protected void grid_RowDataBound(object sender, GridViewRowEventArgs e)
         {
             if (e.Row.RowType == DataControlRowType.DataRow)
             {
                 Button btn = (Button)e.Row.FindControl("btn_blk");

               



                 if (e.Row.Cells[5].Text == "Active")
                 {

                     btn.Text = "Block";
                   
                 }

                 else
                 {

                     btn.Text = "Activate";

                 }

             }
         }

         protected void grid_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
         {
              string id =grid.DataKeys[e.NewSelectedIndex].Value.ToString();

        string status = grid.Rows[e.NewSelectedIndex].Cells[5].Text;

        if (status == "Active")

        {

            status="block";

        }

        else

        {

            status = "Active";

        }

        // update record

        SqlCommand cmd = new SqlCommand("update u_user set ustatus='"+status+"' where userno=" + id, con);

                                                                    

        con.Open();

        cmd.ExecuteNonQuery();

        con.Close();



        grid.DataBind();

    }

       
         }


        }

        
    
