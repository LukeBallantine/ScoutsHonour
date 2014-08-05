using System.Web;
using System.Web.Optimization;

namespace ScoutsHonour
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/scoutshonour").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/jquery-ui-{version}-custom.js",
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*",
                        "~/Scripts/pure/ui.js",
                        "~/Scripts/respond.js",
                        "~/Scripts/main.js"));

            //bundles.Add(new ScriptBundle("~/bundles/pure").Include(
            //          "~/Scripts/pure/ui.js",
            //          "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            //bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //          "~/Scripts/bootstrap.js",
            //          "~/Scripts/respond.js"));


            bundles.Add(new StyleBundle("~/Content/css").Include(
                      //"~/Content/bootstrap.css",
                      "~/Content/pure/pure-min.css",
                      "~/Content/pure/grids-responsive-min.css", 
                      "~/Content/pure/side-menu.css",
                      "~/Content/jquery-ui-custom.css",
                      //"~/Content/font-awesome.4.1.0.min.css",
                      "~/Content/site.css"));
            
            bundles.Add(new StyleBundle("~/Content/old-ie-css").Include(
                //"~/Content/bootstrap.css",
                      "~/Content/pure/pure-min.css",
                      "~/Content/pure/grids-responsive-old-ie-min.css", 
                      "~/Content/pure/side-menu-old-ie.css",
                      "~/Content/site.css"));

            // Set EnableOptimizations to false for debugging. For more information,
            // visit http://go.microsoft.com/fwlink/?LinkId=301862
            //BundleTable.EnableOptimizations = true;
        }
    }
}
