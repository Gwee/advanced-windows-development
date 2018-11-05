<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Web.Script.Serialization;
using System.Diagnostics; 

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        int a = 0, b = 0, result = 0;
        
        if (context.Request["A"] != null)
            a = int.Parse(context.Request["A"]);
        if (context.Request["B"] != null)
            b = int.Parse(context.Request["B"]);

        if (context.Request["cmd"] != null )
        {
            if (context.Request["cmd"] == "plus")
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