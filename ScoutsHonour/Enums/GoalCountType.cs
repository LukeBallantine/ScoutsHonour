using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Enums
{
    public enum GoalCountType
    {
        /// <summary>
        /// Only counts a goal once, no matter how many times it is achieved
        /// </summary>
        Single = 1,

        /// <summary>
        /// Counts a goal as many times as it is achieved
        /// </summary>
        Many = 2
    }
}