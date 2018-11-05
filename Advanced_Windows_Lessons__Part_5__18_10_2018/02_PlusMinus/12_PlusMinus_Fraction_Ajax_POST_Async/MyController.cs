using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Threading.Tasks;

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
        public async Task<JsonResult> PlusMinusAction(Fraction firstFraction, Fraction secondFraction, string action)
        {
            Fraction resultFraction;
            resultFraction = await Task.Run(() => PlusMinus(firstFraction, secondFraction, action));
            return Json(resultFraction);
        }

        public Fraction PlusMinus(Fraction firstFraction, Fraction secondFraction, string action)
        {
            Fraction resultFraction = new Fraction();
            if (action == "Plus")
                resultFraction = firstFraction + secondFraction;
            if (action == "Minus")
                resultFraction = firstFraction - secondFraction;
            return resultFraction;
        }
    }
}

