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
    protected DataSet myDataSet;
    protected DataRelation myDataRelation;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
         "Initial Catalog=myDataBase_ManyTables;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        myDataSet = new DataSet();

        DataTable tempDataTable;
        tempDataTable = new DataTable("A");
        myDataAdapter = new SqlDataAdapter("SELECT * FROM A", myConnect);
        myDataAdapter.Fill(tempDataTable);
        myDataSet.Tables.Add(tempDataTable);

        tempDataTable = new DataTable("B");
        myDataAdapter = new SqlDataAdapter("SELECT * FROM B", myConnect);
        myDataAdapter.Fill(tempDataTable);
        myDataSet.Tables.Add(tempDataTable);

        myDataRelation = new DataRelation("A_B",
            myDataSet.Tables["A"].Columns["ID"], myDataSet.Tables["B"].Columns["ID_A"]);
        myDataSet.Relations.Add(myDataRelation);

       GridView1.DataSource = myDataSet.Tables["A"];

 //       GridView1.DataSource = myDataSet;
 //       GridView1.DataMember = "A";
     
        if (Page.IsPostBack == false)
            GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        DataRow[] childRows = myDataSet.Tables["A"].Rows[index].GetChildRows(myDataRelation);

        DataTable tempDataTable = new DataTable();
        tempDataTable.Columns.Add("ID");
        tempDataTable.Columns.Add("ID_A");
        tempDataTable.Columns.Add("Name");

        foreach (DataRow dr in childRows)
        {
            DataRow tempNewRow = tempDataTable.NewRow();
            tempNewRow["ID"] = dr[0];
            tempNewRow["ID_A"] = dr[1];
            tempNewRow["Name"] = dr[2];
            tempDataTable.Rows.Add(tempNewRow);
       }
        GridView2.DataSource = tempDataTable;
        GridView2.DataBind();
    }
}
