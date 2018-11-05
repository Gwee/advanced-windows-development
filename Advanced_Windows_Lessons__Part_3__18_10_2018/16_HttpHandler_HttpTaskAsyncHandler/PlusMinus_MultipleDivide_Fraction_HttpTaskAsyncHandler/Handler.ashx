<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

using System.Web.Script.Serialization;
using System.Threading.Tasks;

public class Handler : HttpTaskAsyncHandler
{
    public override async Task ProcessRequestAsync(HttpContext context)
    {
        if (context.Request.QueryString["JsonString_0"] == null
    ||
    context.Request.QueryString["JsonString_1"] == null
    ||
    context.Request.QueryString["cmd"] == null)
            return;

        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();
        Fraction A = (Fraction)myJavaScriptSerializer.Deserialize(context.Request.QueryString["JsonString_0"], typeof(Fraction));
        Fraction B = (Fraction)myJavaScriptSerializer.Deserialize(context.Request.QueryString["JsonString_1"], typeof(Fraction));

        if (context.Request.QueryString["cmd"] == "PlusMinus")
            await AsyncPlusMinus(A, B, context);
        else
            await AsyncMultipleDivide(A, B, context);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    private async Task AsyncPlusMinus(Fraction A, Fraction B, HttpContext context)
    {
        Fraction[] resultArrFraction = new Fraction[2];

        resultArrFraction[0] = await Task<Fraction>.Run(() => A + B);
        resultArrFraction[1] = await Task<Fraction>.Run(() => A - B);

        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();
        string resultStr = myJavaScriptSerializer.Serialize(resultArrFraction);
        context.Response.Write(resultStr);
    }
    private async Task AsyncMultipleDivide(Fraction A, Fraction B, HttpContext context)
    {
        Fraction[] resultArrFraction = new Fraction[2];

        resultArrFraction[0] = await Task<Fraction>.Run(() => A * B);
        resultArrFraction[1] = await Task<Fraction>.Run(() => A / B);

        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();
        string resultStr = myJavaScriptSerializer.Serialize(resultArrFraction);
        context.Response.Write(resultStr);

    }
}