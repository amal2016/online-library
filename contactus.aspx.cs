//---amal_salh2006@yahoo.com------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
namespace online_library
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             MailMessage mm = new MailMessage("mail@gmail.com", "mail@gmail.com");

             mm.Subject = txtSubject.Value;

            mm.Body = "Name: " + txtName.Value + "<br /><br />Email: " + txtEmail.Value + "<br />" + txtBody.Text;

        
            mm.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.EnableSsl = true;

            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();

            NetworkCred.UserName = "mail@gmail.com";

            NetworkCred.Password = "mypassword";

            smtp.UseDefaultCredentials = true;

            smtp.Credentials = NetworkCred;

            smtp.Port = 587;

            smtp.Send(mm);

            lblMessage.Text = "Email Sent SucessFully.";
        }

        
    }

        }
    
