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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
"Initial Catalog=myDataBase_OneTable;Integrated Security=True";
            SqlConnection myConnect = new SqlConnection(myConnectString);

            SqlCommand tempCommand = new SqlCommand("SELECT Count(*) FROM Table_Address_Tel", myConnect);
            tempCommand.Connection.Open();
            object tempObject = tempCommand.ExecuteScalar();
            Session["commonCounter"] = (int)tempObject;
            tempCommand.Connection.Close();

            Session["rowIndex"] = 1;
            myFill();
        }
    }

    public void myFill()
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
    "Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        SqlConnection myConnect = new SqlConnection(myConnectString);

        //      SqlConnectionStringBuilder myConnectStringBuilder = new SqlConnectionStringBuilder();
        //      myConnectStringBuilder.DataSource = "GERSHON-PC\\SQLEXPRESS";
        //      myConnectStringBuilder.InitialCatalog = "myDataBase_OneTable";
        //      myConnectStringBuilder.IntegratedSecurity = true;
        //      SqlConnection myConnect = new SqlConnection(myConnectStringBuilder.ToString());

        SqlDataAdapter myDataAdapter = new SqlDataAdapter("SELECT Family, Name, [Home Phone]   FROM  (  SELECT Id, Family, Name, [Home Phone] , Row_Number() OVER (ORDER BY Id) as RowNum FROM Table_Address_Tel  ) as MyDerivedTable  where MyDerivedTable.RowNum =" + (int)Session["rowIndex"], myConnect);
  
//        SqlDataAdapter myDataAdapter = new SqlDataAdapter();
//        myDataAdapter.SelectCommand = new SqlCommand("SELECT Family, Name, [Home Phone]   FROM  (  SELECT Id, Family, Name, [Home Phone] , Row_Number() OVER (ORDER BY Id) as RowNum FROM Table_Address_Tel  ) as MyDerivedTable  where MyDerivedTable.RowNum =" + (int)Session["rowIndex"], myConnect);
     
        //      DataSet myDataSet = new DataSet();
        //      myDataAdapter.Fill(myDataSet, "Family_Name_HomePhone");
        //      TextBoxFamily.Text = myDataSet.Tables[0].Rows[0]["Family"].ToString();
        //      TextBoxName.Text = myDataSet.Tables[0].Rows[0]["Name"].ToString();
        //      TextBoxHomePhone.Text = myDataSet.Tables[0].Rows[0]["Home Phone"].ToString();

        //      DataTable myDataTable = new DataTable();
        //      myDataAdapter.Fill(myDataTable);
        //      TextBoxFamily.Text = myDataTable.Rows[0]["Family"].ToString();
        //      TextBoxName.Text = myDataTable.Rows[0]["Name"].ToString();
        //      TextBoxHomePhone.Text = myDataTable.Rows[0]["Home Phone"].ToString();

        DataTable myDataTable = new DataTable();
        myDataAdapter.Fill(myDataTable);
        DataRow myDataRow = myDataTable.Rows[0];
        TextBoxFamily.Text = myDataRow["Family"].ToString();
        TextBoxName.Text = myDataRow["Name"].ToString();
        TextBoxHomePhone.Text = myDataRow["Home Phone"].ToString();
   }
    
    protected void ButtonFirst_Click(object sender, EventArgs e)
    {
        Session["rowIndex"] = 1;
        myFill();
    }
    protected void ButtonPrevious_Click(object sender, EventArgs e)
    {
        if ((int)Session["rowIndex"] > 1)
        {
            Session["rowIndex"] = (int)Session["rowIndex"] - 1;
            myFill();
        }
    }
    protected void ButtonNext_Click(object sender, EventArgs e)
    {
        if ((int)Session["rowIndex"] < (int)Session["commonCounter"] )
        {
            Session["rowIndex"] = (int)Session["rowIndex"] + 1;
            myFill();
        }
    }
    protected void ButtonLast_Click(object sender, EventArgs e)
    {
        Session["rowIndex"] = (int)Session["commonCounter"] ;
        myFill();
    }
}
