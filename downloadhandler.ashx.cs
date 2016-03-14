using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;
namespace online_library
{
    /// <summary>
    /// Summary description for downloadhandler
    /// </summary>
    public class downloadhandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {  string file = context.Request.QueryString["file"];
            string str = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmdupdate = new SqlCommand("update book set downloadtimes=downloadtimes+1 where link=@id", con);
            cmdupdate.Parameters.Add("@id", SqlDbType.NVarChar).Value =file;
            con.Open();
            cmdupdate.ExecuteNonQuery();
            con.Close();
            
          

            // set content type and header (PDF )
            context.Response.ContentType = "application/pdf";
            context.Response.AddHeader(
                 "Content-Disposition", "attachment; filename=" + file);
           

          
            context.Response.WriteFile(HttpContext.Current.Server.MapPath(file));
            context.Response.End();
           

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}