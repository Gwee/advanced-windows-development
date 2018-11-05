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
"Initial Catalog=myDataBase_Employees_for_Flex;Integrated Security=True";

        myConnect = new SqlConnection(myConnectString);

        myDataAdapter = new SqlDataAdapter("SELECT firstName, lastName, picture FROM Employees", myConnect);
        myDataTable = new DataTable();

        myDataAdapter.Fill(myDataTable);

        for (int i = 0; i < myDataTable.Rows.Count; i++)
        {
            string temp = myDataTable.Rows[i]["picture"].ToString();
            int index = temp.LastIndexOf(".jpg");
            temp = temp.Substring(0, index + 4);
            myDataTable.Rows[i]["picture"] = temp;
        }

       GridView1.AutoGenerateColumns = false;

        GridView1.DataSource = myDataTable;
        if (Page.IsPostBack == false)
            GridView1.DataBind();

         for (int i = 0; i < myDataTable.Rows.Count; i++)
         {
            GridViewRow myRow = GridView1.Rows[i];
            Button myButton = myRow.Cells[1].Controls[1] as Button;
            if (myButton != null)
                   myButton.Text = myDataTable.Rows[i]["firstName"].ToString(); 
 
            ImageButton myImageButton = myRow.Cells[3].Controls[1] as ImageButton;
            if (myImageButton != null)
                  myImageButton.ImageUrl = myDataTable.Rows[i]["picture"].ToString();
        }

    }
}
