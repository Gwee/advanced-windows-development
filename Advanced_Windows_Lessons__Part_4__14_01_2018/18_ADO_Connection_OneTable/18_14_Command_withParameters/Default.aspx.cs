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
///    private SqlDataAdapter myDataAdapter;
    private DataTable myDataTable;
    private SqlDataReader myDataReader;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
            "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        string stringSQL = "SELECT * FROM Table_Address_Tel WHERE ID = @first OR Family = @second";
        SqlCommand myCommand = new SqlCommand(stringSQL, myConnect);
        myCommand.Parameters.Add("@first", SqlDbType.Int);
        myCommand.Parameters.Add("@second", SqlDbType.Char);

        myCommand.Parameters["@first"].Value = 2;
        myCommand.Parameters["@second"].Value = "Cohen";

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
