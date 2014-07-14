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
    public class RequiresGroupIdInSessionAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            if (!SessionHelper.GetSessionIntValue(SessionIntKeys.GroupId).HasValue)
            {
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new
                {
                    controller = "Groups"
                }));
            }
        }
    }
}