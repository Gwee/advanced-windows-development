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
    private SqlTransaction myTransaction;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
"Initial Catalog=myDataBase_OneTable;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString);

        if (Page.IsPostBack == false)
        {
            SqlCommand tempCommand = new SqlCommand("SELECT Count(*) FROM Table_Address_Tel", myConnect);
            tempCommand.Connection.Open();
            object tempObject = tempCommand.ExecuteScalar();
            Session["commonCounter"] = (int)tempObject;
            tempCommand.Connection.Close();

            Session["rowIndex"] = 1;
            myFill();
            UpdateTextBoxes();
        }
     }

    public void myFill()
    {
        SqlCommand myCommand = new SqlCommand("SELECT Id, Family, Name  FROM  (  SELECT Id, Family, Name, Row_Number() OVER (ORDER BY Id) as RowNum FROM Table_Address_Tel  ) as MyDerivedTable  where MyDerivedTable.RowNum =" + (int)Session["rowIndex"], myConnect);

        myDataTable = new DataTable();
        myConnect.Open();
        SqlDataReader myDataReader = myCommand.ExecuteReader();
        myDataTable.Load(myDataReader);

        myDataReader.Close();
        myConnect.Close();
    }
    void UpdateTextBoxes()
    {
        TextBoxID.Text = myDataTable.Rows[0]["ID"].ToString();
        TextBoxFamily.Text = myDataTable.Rows[0]["Family"].ToString();
        TextBoxName.Text = myDataTable.Rows[0]["Name"].ToString();
    }

    protected void ButtonFirst_Click(object sender, EventArgs e)
    {
        Session["rowIndex"] = 1;
        myFill();
        UpdateTextBoxes();
    }
    protected void ButtonPrevious_Click(object sender, EventArgs e)
    {
        if ((int)Session["rowIndex"] > 1)
        {
            Session["rowIndex"] = (int)Session["rowIndex"] - 1;
            myFill();
            UpdateTextBoxes();
        }
    }
    protected void ButtonNext_Click(object sender, EventArgs e)
    {
        if ((int)Session["rowIndex"] < (int)Session["commonCounter"])
        {
            Session["rowIndex"] = (int)Session["rowIndex"] + 1;
            myFill();
            UpdateTextBoxes();
        }
    }
    protected void ButtonLast_Click(object sender, EventArgs e)
    {
        Session["rowIndex"] = (int)Session["commonCounter"];
        myFill();
        UpdateTextBoxes();
    }
    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        string strSQL = "UPDATE Table_Address_Tel SET Family = '" + TextBoxFamily.Text + "' , Name = '" + TextBoxName.Text + "' WHERE Id = '" + TextBoxID.Text + "'";
        SqlCommand myCommand = new SqlCommand(strSQL, myConnect);
        myConnect.Open();

        myTransaction = myConnect.BeginTransaction();
        try
        {
            myCommand.Transaction = myTransaction;
            myCommand.ExecuteNonQuery();
            myTransaction.Commit();
        }
        catch (Exception)
        {
            myTransaction.Rollback();
        }
        finally
        {
            myConnect.Close();
        }
    }

    protected void ButtonNew_Click(object sender, EventArgs e)
    {
        Session["rowIndex"] = (int)Session["commonCounter"] + 1;

        string strSQL = "INSERT INTO Table_Address_Tel(Family,Name) VALUES('" + TextBoxFamily.Text + "', '" + TextBoxName.Text + "')";
        SqlCommand myCommand = new SqlCommand(strSQL, myConnect);
        myConnect.Open();
        myTransaction = myConnect.BeginTransaction();
        try
        {
            myCommand.Transaction = myTransaction;
            myCommand.ExecuteNonQuery();
            myTransaction.Commit();
        }
        catch (Exception)
        {
            myTransaction.Rollback();
        }
        finally
        {
            myConnect.Close();
        }
        Server.Transfer("Default.aspx");
    }
    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        if ((int)Session["rowIndex"] >= 0)
        {
            string strSQL = "DELETE FROM Table_Address_Tel WHERE Id = " + myDataTable.Rows[(int)Session["rowIndex"]]["Id"];
            SqlCommand myCommand = new SqlCommand(strSQL, myConnect);
            myConnect.Open();
            myTransaction = myConnect.BeginTransaction();
            try
            {
                myCommand.Transaction = myTransaction;
                myCommand.ExecuteNonQuery();
                myTransaction.Commit();
            }
            catch (Exception)
            {
                myTransaction.Rollback();
            }
            finally
            {
                myConnect.Close();
            }
            if ((int)Session["rowIndex"] != 0)
            {
                Session["rowIndex"] = (int)Session["rowIndex"] - 1;
                UpdateTextBoxes();
            }
            else
                Server.Transfer("Default.aspx");
        }
    }
}
