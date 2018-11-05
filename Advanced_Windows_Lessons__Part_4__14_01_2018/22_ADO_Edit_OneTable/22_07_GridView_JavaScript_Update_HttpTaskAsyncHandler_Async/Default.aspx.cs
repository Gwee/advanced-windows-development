using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    private SqlConnection myConnect;
    private SqlCommand myCommand;
    private DataTable myDataTable;
    private SqlDataReader myDataReader;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
    "Initial Catalog=myDataBase_OneTable;Integrated Security=True;Asynchronous Processing=true";
        myConnect = new SqlConnection(myConnectString);

        AddOnPreRenderCompleteAsync(
            new BeginEventHandler(BeginAsyncOperation_Select),
            new EndEventHandler(EndAsyncOperation_Select)
        );
    }
    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
       GridView1.DataBind();
    }

    IAsyncResult BeginAsyncOperation_Select(object sender, EventArgs e,
        AsyncCallback cb, object state)
    {
        myConnect.Open();
        myCommand = new SqlCommand("SELECT Id, Family, Name FROM Table_Address_Tel", myConnect);
        return myCommand.BeginExecuteReader(cb, state);
    }

    void EndAsyncOperation_Select(IAsyncResult ar)
    {
        myDataReader = myCommand.EndExecuteReader(ar);
        myDataTable = new DataTable();
        myDataTable.Load(myDataReader);

        myDataReader.Close();
        myConnect.Close();
        GridView1.AutoGenerateColumns = false;
        GridView1.DataSource = myDataTable;
    }

}
