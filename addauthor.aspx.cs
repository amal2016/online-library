//---amal_salh2006@yahoo.com------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Configuration;

namespace online_library
{
    public partial class addauthor : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                if( string.IsNullOrEmpty( Session["role"] as string))
                {
                    Response.Redirect("booooks.aspx");
                }

                BindCountry();
                
            } 

        }

        private void BindCountry()
        {
            SqlCommand cmd = new SqlCommand("select country_id,name from countries", con);
            con.Open();
            ddcountry.DataSource = cmd.ExecuteReader();
            ddcountry.DataTextField = "name";
            ddcountry.DataValueField="country_id";
            ddcountry.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
               
                string strcmd = "insert into author values(@fname,@lname,@dob,@brief,@country)";
                SqlCommand insrtcmd = new SqlCommand(strcmd, con);
                insrtcmd.Parameters.Add("@fname", SqlDbType.NVarChar).Value = txt_name.Value;
                insrtcmd.Parameters.Add("@lname", SqlDbType.NVarChar).Value = txt_lname.Value;
                insrtcmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = ddcountry.SelectedValue;
                insrtcmd.Parameters.Add("@dob", SqlDbType.Date).Value = datedropdown1.SelectedDate;
                insrtcmd.Parameters.Add("@brief", SqlDbType.NVarChar).Value = txt_brief.Text;
                con.Open();
                
                    insrtcmd.ExecuteNonQuery();
                    con.Close();
                    lb_msg.Text = "Inserted";
               
            
           
        }

        protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    DropDownList ddList = (DropDownList)e.Row.FindControl("ddlcountry");
                    //bind dropdown-list
                    XmlDocument doc = new XmlDocument();
                    doc.Load(Server.MapPath("countries.xml"));

                    foreach (XmlNode node in doc.SelectNodes("//country"))
                    {
                       ddList.Items.Add(new ListItem(node.InnerText, node.Attributes["code"].InnerText));
                    }
                 
                }
            }
        }

    }
}