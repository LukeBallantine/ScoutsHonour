using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using ScoutsHonour.Helpers;
using ScoutsHonour.Enums;

namespace ScoutsHonour.Attributes
{
    public class RequiresGroupIdCookieAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            if (!CookieHelper.GetGroupId().HasValue)
            {
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new
                {
                    controller = "Groups"
                }));
            }

            //TODO: Security check for GroupId
        }
    }
}