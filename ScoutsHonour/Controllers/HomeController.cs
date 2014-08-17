using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using ScoutsHonour.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ScoutsHonour.Migrations;

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
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}