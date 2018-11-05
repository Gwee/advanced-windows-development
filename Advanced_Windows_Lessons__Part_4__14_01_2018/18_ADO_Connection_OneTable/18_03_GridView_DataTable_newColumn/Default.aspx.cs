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
             "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        myDataAdapter = new SqlDataAdapter("SELECT ID, Family, Name  FROM Table_Address_Tel", myConnect);
        myDataTable = new DataTable();

        myDataAdapter.Fill(myDataTable);
        GridView1.DataSource = myDataTable;

        if (Page.IsPostBack == false)
            GridView1.DataBind();		
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        myDataTable.Columns.Add("S T A M");
        for (int j = 0; j < myDataTable.Rows.Count; j++)
            myDataTable.Rows[j]["S T A M"] = myDataTable.Rows[j]["Family"].ToString() + myDataTable.Rows[j]["ID"].ToString();
        GridView1.DataBind();
        Button1.Enabled = false;		
    }
}
