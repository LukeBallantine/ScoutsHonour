using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using ScoutsHonour.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ScoutsHonour.Migrations;
using System.Configuration;
using ScoutsHonour.Helpers;
using System.Net.Mail;
using System.Threading.Tasks;

namespace ScoutsHonour.Controllers
{
    public class HomeController : BaseController<ApplicationUser, IdentityRole, ScoutsHonourDbContext>
    {

        [AllowAnonymous]
        public ActionResult Index(string migrations)
        {
            if (migrations == "true")
            {
                ViewBag.Title = "Migration";
                new ScoutsHonour.Migrations.Configuration().SeedDb(Context);
            }

            var model = Context.Organisations.ToList();
            
            return View(model);
        }

        [AllowAnonymous]
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        [AllowAnonymous]
        public ActionResult Contact()
        {
            //ViewBag.Message = "Your contact page.";
            var contactEmail = new ContactEmailViewModel();

            return View(contactEmail);
        }


        [AllowAnonymous]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> MessageSent(ContactEmailViewModel contactEmail)
        {

            // Send an email!
            var emailHelper = new EmailHelper();
            var message = new MailMessage();
            message.From = new MailAddress(contactEmail.Email);
            message.To.Add(new MailAddress(ConfigurationManager.AppSettings["ScoutsHonour.AdminEmail"]));
            message.Subject = "Scouts Honour Feedback";
            message.Body = contactEmail.Message;

            await emailHelper.SendAsync(message);

            return View();
        }
    }
}