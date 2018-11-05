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
    private DataTable myDataTable;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
             "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        SqlCommand myCommand = new SqlCommand("SELECT ID, Family, Name FROM Table_Address_Tel", myConnect);

        myDataTable = new DataTable();
        myConnect.Open();
        SqlDataReader myDataReader = myCommand.ExecuteReader();
        myDataTable.Load(myDataReader);

        myDataReader.Close();
        myConnect.Close();
        GridView1.AutoGenerateColumns = false;
        GridView1.DataSource = myDataTable;
        if (Page.IsPostBack == false)
            GridView1.DataBind();		
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strSQL = "DELETE FROM Table_Address_Tel WHERE Id = " + myDataTable.Rows[e.RowIndex]["Id"];
        SqlCommand myCommand = new SqlCommand(strSQL, myConnect);
        myConnect.Open();
        myCommand.ExecuteNonQuery();
        myConnect.Close();

        myDataTable.Rows[e.RowIndex].Delete();
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        myDataTable.Rows[e.RowIndex]["Family"] = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
        myDataTable.Rows[e.RowIndex]["Name"] = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text;

        string strSQL = "UPDATE Table_Address_Tel SET Family = '" +
            myDataTable.Rows[e.RowIndex]["Family"] + "' , Name = '" +
            myDataTable.Rows[e.RowIndex]["Name"] + "' WHERE ID = " + myDataTable.Rows[e.RowIndex]["ID"];

        SqlCommand myCommand = new SqlCommand(strSQL, myConnect);
        myConnect.Open();
        myCommand.ExecuteNonQuery();
        myConnect.Close();

        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
}
