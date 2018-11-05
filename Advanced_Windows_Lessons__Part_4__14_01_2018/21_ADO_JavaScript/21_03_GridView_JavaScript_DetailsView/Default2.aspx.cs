using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    private SqlConnection myConnect;
    private SqlDataAdapter myDataAdapter;
    private DataTable myDataTable;

    protected void Page_Load(object sender, EventArgs e)
    {

            string myID = Request.QueryString["Id"];

             string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
            "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
            myConnect = new SqlConnection(myConnectString);

            myDataAdapter = new SqlDataAdapter("SELECT * FROM Table_Address_Tel WHERE Id = '" + myID + "'", myConnect);
            myDataTable = new DataTable();

            myDataAdapter.Fill(myDataTable);
            DetailsView1.DataSource = myDataTable;
            DetailsView1.DataBind();
    }
}