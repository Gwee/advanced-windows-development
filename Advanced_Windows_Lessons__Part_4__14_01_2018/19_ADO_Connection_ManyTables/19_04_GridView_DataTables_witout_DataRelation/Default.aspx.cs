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
    protected DataTable myDataTable_1, myDataTable_2; 
    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
            "Initial Catalog=myDataBase_ManyTables;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        myDataTable_1 = new DataTable();
        myDataAdapter = new SqlDataAdapter("SELECT * FROM A", myConnect);
        myDataAdapter.Fill(myDataTable_1);
        GridView1.DataSource = myDataTable_1;
        if (Page.IsPostBack == false)
            GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        String tempID = GridView1.Rows[index].Cells[1].Text;
        
        myDataTable_2 = new DataTable();
        myDataAdapter = new SqlDataAdapter("SELECT * FROM B WHERE B.ID_A = " + tempID, myConnect);
        myDataAdapter.Fill(myDataTable_2);
        GridView2.DataSource = myDataTable_2;
        GridView2.DataBind();
    }
}
