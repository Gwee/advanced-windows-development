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

        SqlCommand myCommand = new SqlCommand("SELECT Id, Family,Name, [Mobile Phone], [Home Phone] FROM Table_Address_Tel", myConnect);

        myDataTable = new DataTable();
        myConnect.Open();
        SqlDataReader myDataReader = myCommand.ExecuteReader();
        myDataTable.Load(myDataReader);
        myDataReader.Close();
        myConnect.Close();

        Repeater1.DataSource = myDataTable;
        if (Page.IsPostBack == false)
            Repeater1.DataBind();
    }

    protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
    {
        string strSQL = "UPDATE Table_Address_Tel SET [Home Phone] = '" + ((TextBox)e.Item.FindControl("txtHomePhone")).Text + "', [Mobile Phone] = '" + ((TextBox)e.Item.FindControl("txtMobilePhone")).Text + "' WHERE Id = " + myDataTable.Rows[e.Item.ItemIndex]["Id"];
        SqlCommand myCommand = new SqlCommand(strSQL, myConnect);
        myConnect.Open();
        myCommand.ExecuteNonQuery();
        myConnect.Close();
        Server.Transfer("Default.aspx");
    }
}
