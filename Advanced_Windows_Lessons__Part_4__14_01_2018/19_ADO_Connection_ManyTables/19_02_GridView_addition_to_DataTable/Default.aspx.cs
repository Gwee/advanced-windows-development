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
    private SqlDataAdapter myDataAdapter;
    private DataTable myDataTable;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
         "Initial Catalog=myDataBase_ManyTables;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        myDataTable = new DataTable();
        myDataAdapter = new SqlDataAdapter("SELECT ID, Name FROM A", myConnect);
        myDataAdapter.Fill(myDataTable);

        GridView1.DataSource = myDataTable;
        GridView1.DataBind();
        Label1.Text = "Table A";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //// myDataTable.Clear();
        myDataAdapter = new SqlDataAdapter("SELECT ID, Name FROM B", myConnect);
        myDataAdapter.Fill(myDataTable);
        GridView1.DataBind();
        Label1.Text += " and B";
    }
}
