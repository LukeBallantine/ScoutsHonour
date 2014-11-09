using ScoutsHonour.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Helpers
{
    public static class SessionHelper
    {
        public static int? GetGroupId()
        {
            return GetSessionIntValue(DataKeys.GroupId);
        }

        public static void SetGroupId(int? id)
        {
            SetSessionIntValue(DataKeys.GroupId, id);
        }
        
        public static int? GetOrganisationId()
        {
            return GetSessionIntValue(DataKeys.OrganisationId);
        }

        public static void SetOrganisationId(int? id)
        {
            SetSessionIntValue(DataKeys.OrganisationId, id);
        }


        public static int? GetSessionIntValue(DataKeys key)
        {
            int? intVal = System.Web.HttpContext.Current.Session[key.ToString()] as int?;
            return intVal;
        }

        public static void SetSessionIntValue(DataKeys key, int? value)
        {
            System.Web.HttpContext.Current.Session.Add(key.ToString(), value);
        }

    }
}