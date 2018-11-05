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
        if (Page.IsPostBack == false)
        {
            string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
            "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
            myConnect = new SqlConnection(myConnectString);

            myDataAdapter = new SqlDataAdapter("SELECT * FROM Table_Address_Tel", myConnect);
            myDataTable = new DataTable();

            myDataAdapter.Fill(myDataTable);

            GridView1.AutoGenerateColumns = false;

            GridView1.DataSource = myDataTable;
            GridView1.DataBind();
        }
    }
}
