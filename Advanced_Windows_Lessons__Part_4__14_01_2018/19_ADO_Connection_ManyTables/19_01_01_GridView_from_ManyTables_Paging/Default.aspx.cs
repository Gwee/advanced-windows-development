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

        string stringSQL = "SELECT A.Name, B.Name, C.Name, D.Name FROM A, B, C, D WHERE B.ID_A = A.Id AND C.ID_B = B.ID AND D.ID_B = B.ID";

        myDataAdapter = new SqlDataAdapter(stringSQL, myConnect);
        myDataTable = new DataTable();

        myDataAdapter.Fill(myDataTable);
        GridView1.DataSource = myDataTable;
        if (Page.IsPostBack == false)
            GridView1.DataBind();		
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
