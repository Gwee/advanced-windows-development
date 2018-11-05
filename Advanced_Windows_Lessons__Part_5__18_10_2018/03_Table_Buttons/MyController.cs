using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Table_Buttons.Controllers
{
    public class MyController : Controller
    {
        private static Random myRand = new Random();
        //
        // GET: /My/

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult InitAction()
        {
            int[] arr = new int[16];
            for (int i = 0; i < 16; i++)
                arr[i] = myRand.Next(1, 100);
            return Json(arr, JsonRequestBehavior.AllowGet);
        }
    }
}
