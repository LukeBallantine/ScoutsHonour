using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ScoutsHonour.Controllers
{
    public class OrganisationController : Controller
    {
        // GET: Organisation
        public ActionResult Search(string name)
        {
            //Some return examples:
            //return Content("Hello");
            //return RedirectToRoute()
            //return File(Server.MapPath("~/Content/Site.css"), "text/css"));
            //return Json(new { Message = "You entered: " + name, Name = "Luke" }, JsonRequestBehavior.AllowGet);

            return View();
        }
    }
}