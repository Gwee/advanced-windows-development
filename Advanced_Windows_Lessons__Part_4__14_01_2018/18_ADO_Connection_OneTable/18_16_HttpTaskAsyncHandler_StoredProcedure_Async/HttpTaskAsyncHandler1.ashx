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
        string Id ="1";
        if (context.Request.QueryString["Id"] != null)
            Id = context.Request.QueryString["Id"];

        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" + "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);
        await myConnect.OpenAsync();

        mySQLCommand = new SqlCommand();
        mySQLCommand.Connection = myConnect;

        mySQLCommand.CommandType = CommandType.StoredProcedure;
        mySQLCommand.CommandText = "myStoredProcedure";

        mySQLCommand.Parameters.Add("@first", SqlDbType.Int);
        mySQLCommand.Parameters.Add("@second", SqlDbType.Char);

        mySQLCommand.Parameters["@first"].Value = int.Parse(Id);
        mySQLCommand.Parameters["@second"].Value = "";  
              
        SqlDataReader reader = await mySQLCommand.ExecuteReaderAsync();
        JavaScriptSerializer myJavaScriptSerializer = new JavaScriptSerializer();

        string resultStr = "";
        if (await reader.ReadAsync())
        {
                Person_Full tempPerson_Full = new Person_Full();
                tempPerson_Full.Id = reader.GetInt32(0).ToString();
                tempPerson_Full.Family = reader.GetString(1);
                tempPerson_Full.Name = reader.GetString(2);
                if(!reader.IsDBNull(3))
                    tempPerson_Full.Address = reader.GetString(3);
                if (!reader.IsDBNull(4))
                    tempPerson_Full.Home_Phone = reader.GetString(4);
       //         tempPerson_Full.Work_Phone = reader.GetString(5);
       //         tempPerson_Full.Mobile_Phone = reader.GetString(6);          
                resultStr = myJavaScriptSerializer.Serialize(tempPerson_Full);
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