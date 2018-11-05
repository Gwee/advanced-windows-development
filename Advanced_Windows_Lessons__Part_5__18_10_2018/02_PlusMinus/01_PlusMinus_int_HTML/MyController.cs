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
        public ActionResult Index(myModel myM,  string myButton)
        {
            if (myButton == "+")
                myM.result = myM.num1 + myM.num2;
            if (myButton == "-")
                myM.result = myM.num1 - myM.num2;

            return View(myM);
        }
    }
}
