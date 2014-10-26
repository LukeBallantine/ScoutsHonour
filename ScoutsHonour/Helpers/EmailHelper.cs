using Microsoft.AspNet.Identity;
using SendGrid;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;

namespace ScoutsHonour.Helpers
{
    public class EmailHelper
    {
        public Task SendAsync(MailMessage message)
        {
            // Plug in your email service here to send an email.

            var myMessage = new SendGridMessage();
            myMessage.From = message.From;
            
            foreach (var toEmail in message.To)
                myMessage.AddTo(toEmail.Address);

            myMessage.Subject = message.Subject;
            myMessage.Html = message.Body;
            myMessage.Text = message.Body;

            // Create credentials, specifying your user name and password.
            var credentials = new NetworkCredential(ConfigurationManager.AppSettings["SendGrid_Username"],
                                                    ConfigurationManager.AppSettings["SendGrid_Password"]);

            // Create an Web transport for sending email.
            var transportWeb = new Web(credentials);

            // Send the email.
            return transportWeb.DeliverAsync(myMessage);
        }
    }
}