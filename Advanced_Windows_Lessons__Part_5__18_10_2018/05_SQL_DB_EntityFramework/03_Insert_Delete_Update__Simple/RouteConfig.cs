using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVC_SQL_DB
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "My", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Update",
                url: "{controller}/{action}",
                defaults: new { controller = "My", action = "Update", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Insert",
                url: "{controller}/{action}",
                defaults: new { controller = "My", action = "Insert", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Delete",
                url: "{controller}/{action}",
                defaults: new { controller = "My", action = "Delete", id = UrlParameter.Optional }
);

        }
    }
}