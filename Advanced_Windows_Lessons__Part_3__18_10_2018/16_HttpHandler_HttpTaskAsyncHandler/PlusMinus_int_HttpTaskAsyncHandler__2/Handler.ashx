<%@ WebHandler Language="C#" Class="Handler" %>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Threading.Tasks;

public class Handler : HttpTaskAsyncHandler
{
    public override async Task ProcessRequestAsync(HttpContext context)
    {
        int a = 0, b = 0;
        if (context.Request.QueryString["A"] != null)
            a = int.Parse(context.Request.QueryString["A"]);
        if (context.Request.QueryString["B"] != null)
            b = int.Parse(context.Request.QueryString["B"]);

        string command = context.Request.QueryString["cmd"];
        int result = -1;
        switch (command)
        {
            case "plus":
                result = await AsyncPlus(a, b);
                break;
            case "minus":
                result = await AsyncMinus(a, b);
                break;
        }
        context.Response.Write(result.ToString());
    }

    public override bool IsReusable
    {
        get
        {
            return false;
        }
    }

    private async Task<int> AsyncPlus(int a, int b)
    {
        int result = await Task<int>.Run(() => Plus(a, b));
        return result;
    }

    private int Plus(int a, int b)
    {
        return a + b;
    }

    private async Task<int> AsyncMinus(int a, int b)
    {
        int result = await Task<int>.Run(() => Minus(a, b));
        return result;
    }

    private int Minus(int a, int b)
    {
        return a - b;
    }
}
