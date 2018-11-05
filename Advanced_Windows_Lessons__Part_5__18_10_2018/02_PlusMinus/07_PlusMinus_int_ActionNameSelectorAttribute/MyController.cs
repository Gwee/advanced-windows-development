using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
        [HttpParamAction]
        public ActionResult Plus(myModel myM)
        {
            ViewBag.result = myM.num1 + myM.num2;
            return View();
        }

        [HttpPost]
        [HttpParamAction]
        public ActionResult Minus(myModel myM)
        {
            ViewBag.result = myM.num1 - myM.num2;
            return View();
        }
    }
}
