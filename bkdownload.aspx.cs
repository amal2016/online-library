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
using System.IO;
using AjaxControlToolkit;

namespace online_library
{
    public partial class bkdownload : System.Web.UI.Page
    {
        private DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        sda.Fill(dt);
                    }
                }
                return dt;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(Session["id"] as string))
            {
                Response.Redirect("booooks.aspx");
            }
            if (!this.IsPostBack)
            {
                
                    DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM UserRatings where bookid='" + int.Parse(Session["id"].ToString()) + "'");
                    Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                    lblRatingStatus.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
              
                
                }

            if (string.IsNullOrEmpty(Session["umail"] as string))
            {
                Rating1.ReadOnly = true;
               
              
                
              Response.Cookies.Add(new HttpCookie("returnUrl", Request.Url.PathAndQuery));
              lbmsg.Text = "login to rate and to see download link !";
            }

        }
        protected void OnRatingChanged(object sender, RatingEventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("insrtrating"))
                {
                   
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@bookid", SqlDbType.Int).Value = int.Parse(Session["id"].ToString());
                        cmd.Parameters.Add("@userid", SqlDbType.Int).Value = int.Parse(Session["userid"].ToString());
                        cmd.Parameters.Add("@rating", SqlDbType.SmallInt).Value = e.Value;
                        
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }

       

        protected void ListView2_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (string.IsNullOrEmpty(Session["umail"] as string))
            {
                LinkButton lnk = (LinkButton)e.Item.FindControl("hyper") as LinkButton;
                lnk.Visible = false;

            }
        }
        
    }
}