﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Event
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime EventDate { get; set; }
        public virtual ICollection<Member> Members { get; set; }
        public virtual ICollection<Goal> Goals { get; set; }
    }
}