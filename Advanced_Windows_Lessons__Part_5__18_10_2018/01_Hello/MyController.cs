using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Hello.Controllers
{
    public class MyController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

/*        public void Index()
        {
            Response.Write("Hello world 222222222222");
        }
*/
/*      public EmptyResult Index()
        {
            Response.Write("Hello world 3333333333333333");
            return new EmptyResult(); 
        }
*/
/*        public string Index()
        {
            return  "Hello world 4444444444444";
        }
*/
    }
}
