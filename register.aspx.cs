
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
using System.Xml;
using System.Net;
using System.Net.Mail;
namespace online_library
{
    public partial class register : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["libr_con"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(strcon);
        //function to fill dropdown with countries name
        private void BindCountry()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select country_id,name from countries", con);
            ddcountry.DataSource = cmd.ExecuteReader();
           
            ddcountry.DataTextField = "name";
            ddcountry.DataValueField = "country_id";
            ddcountry.DataBind();
            con.Close();
            
        }
        public void SetVerificationText()
        {
            Random ran = new Random();
            int no = ran.Next();
            Session["Captcha"] = no.ToString();
        }
        protected void CAPTCHAValidate(object source, ServerValidateEventArgs args)
        {
            if (Session["Captcha"] != null)
            {
                if (txtVerify.Text != Session["Captcha"].ToString())
                {
                    SetVerificationText();
                    args.IsValid = false;
                    return;
                }
            }
            else
            {
                SetVerificationText();
                args.IsValid = false;
                return;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetVerificationText();     
                Page.Master.FindControl("register").Visible = false;
              
                BindCountry();

            }
        }

        protected void ddcountry_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);


            int userid = 0;
            Captcha1.ValidateCaptcha(txtVerify.Text.Trim());

            if (Captcha1.UserValidated)
            {

                Label7.ForeColor = System.Drawing.Color.Green;
                 SqlCommand cmd = new SqlCommand("Insert_User", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = txt_mail.Value;
            cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = ddcountry.SelectedValue;
            cmd.Parameters.Add("@dob", SqlDbType.Date).Value = datedropdown1.SelectedDate;
            cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = finalString.ToString();
            cmd.Parameters.Add("@status", SqlDbType.NVarChar).Value = "Active";
            cmd.Parameters.Add("@rl", SqlDbType.NVarChar).Value = "user";
            cmd.Parameters.Add("@fn", SqlDbType.NVarChar).Value = txt_fname.Value;
            cmd.Parameters.Add("@ln", SqlDbType.NVarChar).Value = txt_lname.Value;
            cmd.Parameters.Add("@uname", SqlDbType.NVarChar).Value = txtusername.Value;
            con.Open();
        userid = Convert.ToInt32(cmd.ExecuteScalar());
        if (userid ==-1)
        {
            Label7.Text = "Email Is Aleardy Existed";
        }
        else if (userid == 2)
        {
            Label7.Text = "User Name Existed Try Another One";
        }
        else
        {
            Label7.Text = "successful check your mail for password";

            //send mail with password
            try
            {
                MailMessage o = new MailMessage("From", txt_mail.Value, "Subject", "Your password is " + finalString.ToString());
                NetworkCredential netCred = new NetworkCredential("Email", "Password");
                SmtpClient smtpobj = new SmtpClient("smtp.live.com", 587);
                smtpobj.EnableSsl = true;
                smtpobj.Credentials = netCred;
                smtpobj.Send(o);


            }
            catch
            {
            }
        }


            }

            else
            {

                Label7.ForeColor = System.Drawing.Color.Red;

                Label7.Text = "Incorrect Verification code";

            }
           

          
           
        }

            
            }

       

        
        }
    
