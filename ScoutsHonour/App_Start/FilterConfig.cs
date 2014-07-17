using System.Web;
using System.Web.Mvc;
using ScoutsHonour.Attributes;

namespace ScoutsHonour
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new System.Web.Mvc.AuthorizeAttribute());
            //filters.Add(new RequiresGroupIdInSessionAttribute());
        }
    }
}
