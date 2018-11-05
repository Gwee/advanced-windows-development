using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using PlusMinus_Fraction.Models;

namespace PlusMinus_Fraction.Controllers
{
    public class MyController : Controller
    {
        //
        // GET: /My/
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public JsonResult PlusMinusAction(Fraction firstFraction, Fraction secondFraction, string action)
        {
            Fraction resultFraction = new Fraction();
            if (action == "Plus")
                resultFraction = firstFraction + secondFraction;
            if (action == "Minus")
                resultFraction = firstFraction - secondFraction;
            return Json(resultFraction);
        }
    }
}
