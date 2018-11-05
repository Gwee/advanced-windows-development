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
            "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        myCommand = new SqlCommand("SELECT Family, Name FROM Table_Address_Tel", myConnect);

        myDataTable = new DataTable();
        myConnect.Open();
        myDataReader = myCommand.ExecuteReader();
        myDataTable.Load(myDataReader);

        myDataReader.Close();
        myConnect.Close();
        GridView1.DataSource = myDataTable;
        GridView1.DataBind();	
    }
}
