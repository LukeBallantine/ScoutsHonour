using ScoutsHonour.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Helpers
{
    public static class CookieHelper
    {
        // strongly typed helper methods

        public static int? GetGroupId()
        {
            return GetCookieIntValue(DataKeys.GroupId);
        }

        public static void SetGroupId(int? id)
        {
            SetCookieIntValue(DataKeys.GroupId, id);
        }

        public static int? GetOrganisationId()
        {
            return GetCookieIntValue(DataKeys.OrganisationId);
        }

        public static void SetOrganisationId(int? id)
        {
            SetCookieIntValue(DataKeys.OrganisationId, id);
        }

        #region General Cookie Methods

        public static int? GetCookieIntValue(DataKeys key)
        {
            int intValue = 0;
            if (Int32.TryParse(GetCookieStringValue(key), out intValue))
                return intValue;
            return null;
        }

        public static string GetCookieStringValue(DataKeys key)
        {
            string value = string.Empty;
            var cookie = HttpContext.Current.Request.Cookies[key.ToString()];
            if (cookie != null)
                value = cookie.Value;
            return value;
        }

        public static void SetCookieIntValue(DataKeys key, int? value)
        {
            var myCookie = new HttpCookie(key.ToString())
            {
                Expires = DateTime.Now.AddDays(365),
                Value = value.ToString()
            };
            HttpContext.Current.Response.SetCookie(myCookie);
        }

        public static void SetCookieStringValue(DataKeys key, string value)
        {
            var myCookie = new HttpCookie(key.ToString())
            {
                Expires = DateTime.Now.AddDays(365),
                Value = value
            };
            HttpContext.Current.Response.SetCookie(myCookie);
        }

        #endregion
    }
}