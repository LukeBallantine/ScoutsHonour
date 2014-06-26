using ScoutsHonour.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ScoutsHonour.Controllers
{
    public class HomeController : Controller
    {
        ScoutsHonourDb _db = new ScoutsHonourDb();

        public ActionResult Index()
        {
            var model = _db.Groups.ToList();

            return View(model);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            ViewBag.Location = "New Zealand";

            return View();
        }
    }
}