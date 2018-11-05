<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        int a = 0, b = 0, result = 0;
        if (context.Request.QueryString["A"] != null)
            a = int.Parse(context.Request.QueryString["A"]);
        if (context.Request.QueryString["B"] != null)
            b = int.Parse(context.Request.QueryString["B"]);

        if (context.Request.QueryString["cmd"] != null )
        {
            if (context.Request.QueryString["cmd"] == "plus")
                result = a + b;
            else
                result = a - b;
        }
        context.Response.Write(result);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}