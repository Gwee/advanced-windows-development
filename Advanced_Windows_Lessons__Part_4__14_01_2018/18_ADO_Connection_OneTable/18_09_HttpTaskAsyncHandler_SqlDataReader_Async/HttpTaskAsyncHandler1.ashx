<%@ WebHandler Language="C#" Class="HttpTaskAsyncHandler1" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public class HttpTaskAsyncHandler1 : HttpTaskAsyncHandler
{
    private SqlConnection myConnect;
    private SqlCommand mySQLCommand;

    public override async Task ProcessRequestAsync(HttpContext context)
    {
        string Id = "";
        if (context.Request.QueryString["Id"] != null)
            Id = context.Request.QueryString["Id"];
        string command = "SelectAll";
        if (context.Request.QueryString["cmd"] != null)
            command = context.Request.QueryString["cmd"];

        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" + "Initial Catalog=myDataBase_Employees_for_Flex;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);
        await myConnect.OpenAsync();

        switch (command)
        {
            case "SelectAll":
                mySQLCommand = new SqlCommand("SELECT id, firstName, lastName FROM Employees", myConnect);
                break;
            case "SelectOne":
                mySQLCommand = new SqlCommand("SELECT id, firstName, lastName, title, department, city, picture  FROM  Employees  WHERE id = '" + Id + "' ", myConnect);
                break;
        }

        SqlDataReader reader = await mySQLCommand.ExecuteReaderAsync();
        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();

        string resultStr = "";

        if (command == "SelectAll")
        {
            resultStr = "[";
            while (await reader.ReadAsync())
            {
                Person_Short tempPerson_Short = new Person_Short();

                tempPerson_Short.Id = reader.GetInt32(0).ToString();
                tempPerson_Short.Name = reader.GetString(1);
                tempPerson_Short.Family = reader.GetString(2);

                resultStr += myJavaScriptSerializer.Serialize(tempPerson_Short) + ",";
            }
            resultStr = resultStr.Substring(0, resultStr.Length - 1);
            resultStr += "]";
        }
        else
        {
            if (await reader.ReadAsync())
            {
                Person_Full tempPerson_Full = new Person_Full();
                tempPerson_Full.Id = reader.GetInt32(0).ToString();
                tempPerson_Full.Name = reader.GetString(1);
                tempPerson_Full.Family = reader.GetString(2);
                tempPerson_Full.Title = reader.GetString(3);
                tempPerson_Full.Department = reader.GetString(4);
                tempPerson_Full.City = reader.GetString(5);
                tempPerson_Full.Picture = reader.GetString(6);
                resultStr = myJavaScriptSerializer.Serialize(tempPerson_Full);
            }
        }
        myConnect.Close();
        context.Response.Write(resultStr);
    }

    public override bool IsReusable
    {
        get
        {
            return false;
        }
    }
}