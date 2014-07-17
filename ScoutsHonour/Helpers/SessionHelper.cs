using ScoutsHonour.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Helpers
{
    public static class SessionHelper
    {

        public static int? GetSessionIntValue(SessionIntKeys key)
        {
            int? intVal = System.Web.HttpContext.Current.Session[key.ToString()] as int?;
            return intVal;
        }

        public static void SetSessionIntValue(SessionIntKeys key, int? value)
        {
            System.Web.HttpContext.Current.Session.Add(key.ToString(), value);
        }

    }
}