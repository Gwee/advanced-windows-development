﻿<%@ WebHandler Language="C#" Class="Handler" %>
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
        if (context.Request["A"] != null)
            a = int.Parse(context.Request["A"]);
        if (context.Request["B"] != null)
            b = int.Parse(context.Request["B"]);

        string command = "plus";
        if(context.Request["cmd"] != null)
            command = context.Request["cmd"];

        switch (command)
        {
            case "plus":
                await AsyncPlus(a, b, context);
                return;
            case "minus":
                await AsyncMinus(a, b, context);
                return;
        }
    }

    public override bool IsReusable
    {
        get
        {
            return false;
        }
    }

    private async Task AsyncPlus(int a, int b, HttpContext context)
    {
        int result = await Task<int>.Run(() => Plus(a, b));
        context.Response.Write(result);
    }

    private int Plus(int a, int b)
    {
        return a + b;
    }

    private async Task AsyncMinus(int a, int b, HttpContext context)
    {
        int result = await Task<int>.Run(() => Minus(a, b));
        context.Response.Write(result);
    }

    private int Minus(int a, int b)
    {
        return a - b;
    }
}
