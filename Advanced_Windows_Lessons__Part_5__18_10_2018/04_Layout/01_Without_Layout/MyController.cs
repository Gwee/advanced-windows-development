using System;
using System.Collections.Generic;
using System.Web.Mvc;

using Layout.Models;

namespace Layout.Controllers
{
    public class MyController : Controller
    {
        Product myProduct = new Product
        {
            ProductID = 1,
            Name = "Kayak",
            Description = "A boat for one person",
            Category = "Watersports",
            Price = 275M
        };

        public ActionResult Index()
        {
            return View(myProduct);
        }
    }
}

