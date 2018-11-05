<%@ WebHandler Language="C#" Class="HttpTaskAsyncHandler_Update_GET" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

public class HttpTaskAsyncHandler_Update_GET : HttpTaskAsyncHandler
{
    private SqlConnection myConnect;
    private SqlCommand mySQLCommand;
    
    public override async Task ProcessRequestAsync(HttpContext context)
    {
        string Id = "", Family = "", Name = "";
        if (context.Request.QueryString["ID"] != null)
            Id = context.Request.QueryString["ID"];
        if (context.Request.QueryString["FAMILY"] != null)
            Family = context.Request.QueryString["FAMILY"];
        if (context.Request.QueryString["NAME"] != null)
            Name = context.Request.QueryString["NAME"];

        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
    "Initial Catalog=myDataBase_OneTable;Integrated Security=True;Asynchronous Processing=true";
        myConnect = new SqlConnection(myConnectString);
        await myConnect.OpenAsync();

        string strSQL = "UPDATE Table_Address_Tel SET Family = '" + Family + "' , Name = '" + Name + "' WHERE Id = '" + Id + "'";
        
        SqlCommand myCommand = new SqlCommand(strSQL, myConnect);

        int rowsAffected = await myCommand.ExecuteNonQueryAsync();   // rowsAffected = 1 OK,  rowsAffected = 0 FALSE
        myConnect.Close();
        context.Response.Write(rowsAffected);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}