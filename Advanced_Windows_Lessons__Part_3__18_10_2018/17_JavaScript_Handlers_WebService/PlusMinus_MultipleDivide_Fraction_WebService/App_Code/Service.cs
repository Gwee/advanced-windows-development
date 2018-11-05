using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

using System.Web.Script.Services;
using System.Web.Script.Serialization;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class Service : System.Web.Services.WebService
{
    public Service () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
    public void PlusMinus()
    {
        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();

        string strFirst = "{'num':0, 'denom':1}", strSecond = "{'num':0, 'denom':1}";
        if (Context.Request.QueryString["JsonString_0"] != null)
            strFirst = Context.Request.QueryString["JsonString_0"];
        if (Context.Request.QueryString["JsonString_1"] != null)
            strSecond = Context.Request.QueryString["JsonString_1"];

        Fraction A = (Fraction)myJavaScriptSerializer.Deserialize(strFirst, typeof(Fraction));
        Fraction B = (Fraction)myJavaScriptSerializer.Deserialize(strSecond, typeof(Fraction));
        
        Fraction[] arrFraction = new Fraction[2] { A + B, A - B };

        string returnString = myJavaScriptSerializer.Serialize(arrFraction);
        Context.Response.ContentType = "application/json";
        Context.Response.Write(returnString);
    }
    [WebMethod]
    [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
    public void MultipleDivide()
    {
        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();

        string strFirst = "{'num':0, 'denom':1}", strSecond = "{'num':0, 'denom':1}";
        if (Context.Request.QueryString["JsonString_0"] != null)
            strFirst = Context.Request.QueryString["JsonString_0"];
        if (Context.Request.QueryString["JsonString_1"] != null)
            strSecond = Context.Request.QueryString["JsonString_1"];

        Fraction A = (Fraction)myJavaScriptSerializer.Deserialize(strFirst, typeof(Fraction));
        Fraction B = (Fraction)myJavaScriptSerializer.Deserialize(strSecond, typeof(Fraction));
        Fraction[] arrFraction = new Fraction[2] { A * B, A / B };

        string returnString = myJavaScriptSerializer.Serialize(arrFraction);
        Context.Response.ContentType = "application/json";
        Context.Response.Write(returnString);
    }

}
