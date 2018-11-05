<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

using System.Web.Script.Serialization;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
         if (context.Request.QueryString["JsonString_0"] == null
             ||
             context.Request.QueryString["JsonString_1"] == null
             ||
             context.Request.QueryString["cmd"] == null)
        return;

        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();
        Fraction A = (Fraction)myJavaScriptSerializer.Deserialize(context.Request.QueryString["JsonString_0"], typeof(Fraction));
        Fraction B = (Fraction)myJavaScriptSerializer.Deserialize(context.Request.QueryString["JsonString_1"], typeof(Fraction));

        Fraction[] resultArrFraction = new Fraction[2];
        if (context.Request.QueryString["cmd"] == "PlusMinus")
        {
            resultArrFraction[0] = A + B;
            resultArrFraction[1] = A - B;
        }
        else
        {
            resultArrFraction[0] = A * B;
            resultArrFraction[1] = A / B;
        }

        string resultStr = myJavaScriptSerializer.Serialize(resultArrFraction);
        context.Response.Write(resultStr);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}