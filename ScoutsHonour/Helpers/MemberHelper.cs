using ScoutsHonour.Enums;
using ScoutsHonour.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;

namespace ScoutsHonour.Helpers
{
    public static class MemberHelper
    {
        public static string GetRankIcon(string rank)
        {
            if (rank == null)
                return string.Empty;

            if (rank.ToLower() == "sixer") 
            {
                return "<i class=\"fa fa-star\" title=\"" + rank + "\"></i>";
            }
            else if (rank.ToLower() == "seconder")
            {
                return "<i class=\"fa fa-star-half-o\" title=\"" + rank + "\"></i>";
            }
            else
            {
                return string.Empty;
            }
        }

    }
}