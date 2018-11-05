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

        [HttpGet]
        public JsonResult PlusMinusAction(string str)
        {
            JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();
            myModel myM = (myModel)myJavaScriptSerializer.Deserialize(str, typeof(myModel));

            int result = 0;
            if (myM.action == "Plus")
                result = myM.num1 + myM.num2;
            if (myM.action == "Minus")
                result = myM.num1 - myM.num2;
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}
