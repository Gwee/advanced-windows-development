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
    private SqlCommand myCommand;
    private SqlDataReader myDataReader1, myDataReader2;

    protected void Page_Load(object sender, EventArgs e)
    {
        string myConnectString = "Data Source=Kagan-PC\\SQLEXPRESS;" +
            "Initial Catalog=myDataBase_Graphics_Diagram;Integrated Security=True";
        myConnect = new SqlConnection(myConnectString); 
        myConnect.Open();

        myCommand = new SqlCommand("SELECT * FROM table_ID_Height_Name", myConnect);
        myDataReader1 = myCommand.ExecuteReader();

        GridView1.DataSource = myDataReader1;
        GridView1.DataBind();
        myDataReader1.Close();

        myDataReader2 = myCommand.ExecuteReader();
        Chart1.Titles.Add("My First Chart");
        Chart1.Titles[0].Font = new System.Drawing.Font("Arial", 20);
        Chart1.BackColor = System.Drawing.Color.Red;
        Chart1.ChartAreas[0].BackColor = System.Drawing.Color.Yellow;
 //       Chart1.ChartAreas[0].Area3DStyle.Enable3D = true;

//        Chart1.Series.Clear();
//       Chart1.DataBindTable(myDataReader);
//        Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Column;

 //       Chart1.Series.Clear();
        Chart1.Series[0].Points.DataBindXY(myDataReader2, "Name", myDataReader2, "Height");
        Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Column;


 
        myDataReader2.Close();
        myConnect.Close();
    }
}
