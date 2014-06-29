﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ScoutsHonour.Models
{
    public class Goal
    {
        public int Id { get; set; }
        public int Level { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int? ChildRequirementCount { get; set; }
        public ICollection<Goal> Goals { get; set; }
        public ICollection<User> Users { get; set; }
        public ICollection<Event> Events { get; set; }
    }
}