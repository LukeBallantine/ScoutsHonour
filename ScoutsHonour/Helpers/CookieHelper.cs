using ScoutsHonour.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Helpers
{
    public static class CookieHelper
    {
        //public static int? GetGroupId()
        //{
        //    return GetSessionIntValue(SessionIntKeys.GroupId);
        //}

        //public static void SetGroupId(int? id)
        //{
        //    SetSessionIntValue(SessionIntKeys.GroupId, id);
        //}
        
        //public static int? GetOrganisationId()
        //{
        //    return GetSessionIntValue(SessionIntKeys.OrganisationId);
        //}

        //public static void SetOrganisationId(int? id)
        //{
        //    SetSessionIntValue(SessionIntKeys.OrganisationId, id);
        //}


        //public static int? GetCookieIntValue(SessionIntKeys key)
        //{
        //    var cookie = HttpContext.Current.Request.Cookies[key.ToString()];
        //    cookie.
        //    int? intVal = HttpContext.Current.Request.Cookies[key.ToString()] as int?;
        //    return intVal;
        //}

        //public static void SetCookieIntValue(SessionIntKeys key, int? value)
        //{
        //    //HttpContext.Current.Request.Cookies
        //    if (HttpContext.Request.Cookies.AllKeys.Contains(key.ToString()))
        //    {
        //        HttpCookie cookie = HttpContext.Request.Cookies["Cookie"];
        //        cookie.Expires = DateTime.Now.AddDays(-1);
        //    }
        //    var cookie = new HttpCookie(key.ToString());
        //    cookie.Value = value.ToString();
        //    HttpContext.Current.Response.Cookies.Add(cookie);
        //}

    }
}