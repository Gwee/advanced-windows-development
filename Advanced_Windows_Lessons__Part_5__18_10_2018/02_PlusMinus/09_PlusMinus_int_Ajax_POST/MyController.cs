using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Web.Script.Serialization;
using PlusMinus_int.Models;

namespace PlusMinus_int.Controllers
{
    public class MyController : Controller
    {

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public JsonResult PlusMinusAction(int num1, int num2, string action)
        {
            int result = 0;
            if (action == "Plus")
                result = num1 + num2;
            if (action == "Minus")
                result = num1 - num2;
            return Json(result);
        }
    }
}
