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
        public ActionResult Index(myModel myM,  string myButton)
        {
            if (myButton == "+")
                myM.resultFraction = myM.firstFraction + myM.secondFraction; 
            if (myButton == "-")
                myM.resultFraction = myM.firstFraction - myM.secondFraction; 
            return View(myM);
        }
    }
}
