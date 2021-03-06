﻿using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using ScoutsHonour.Enums;
using ScoutsHonour.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ScoutsHonour.Controllers
{
#if (!DEBUG) 
    [RequireHttps]
#endif
    public abstract class BaseController<TApplicationUser, TIdentityRole, TIdentityDbContext> : Controller
        where TApplicationUser : ApplicationUser, new()
        where TIdentityRole : IdentityRole, new()
        where TIdentityDbContext : IdentityDbContext<TApplicationUser>, new()
    {
        public UserManager<TApplicationUser> UserManager { get; set; }
        public RoleManager<TIdentityRole> RoleManager { get; set; }
        public TIdentityDbContext Context { get; set; }
        
        protected BaseController()
        {
            Context = new TIdentityDbContext();
            UserManager = new UserManager<TApplicationUser>(new UserStore<TApplicationUser>(Context));
            UserManager.UserValidator = new UserValidator<TApplicationUser>(UserManager) { AllowOnlyAlphanumericUserNames = false };
            RoleManager = new RoleManager<TIdentityRole>(new RoleStore<TIdentityRole>(Context));
        }

        protected ApplicationUser CurrentUser
        {
            get
            {
                return UserManager.FindById(User.Identity.GetUserId());
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (RoleManager != null) RoleManager.Dispose();
            if (UserManager != null) UserManager.Dispose();
            if (Context != null) Context.Dispose();
            base.Dispose(disposing);
        }

    }
}