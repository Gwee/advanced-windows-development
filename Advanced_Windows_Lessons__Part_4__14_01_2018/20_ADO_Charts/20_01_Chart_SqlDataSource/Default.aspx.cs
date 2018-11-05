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
        SqlDataSource1.ConnectionString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
            "Initial Catalog=myDataBase_Graphics_Diagram;Integrated Security=True";
        SqlDataSource1.SelectCommand = "SELECT * FROM table_ID_Height_Name";
        GridView1.DataSourceID = "SqlDataSource1"; 


    }
}
