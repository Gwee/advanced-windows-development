using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int rows = Int32.Parse(TextBoxRow.Text);
        int columns = Int32.Parse(TextBoxColumn.Text);
        Table2.Width = columns * 60;
        for (int i = 0; i < rows; i++)
        {
            TableRow newRow = new TableRow();
            Table2.Controls.Add(newRow);
            for (int j = 0; j < columns; j++)
            {
                TableCell newCell = new TableCell();
                newCell.Text = "(" + i.ToString() + ", " + j.ToString() + ")";
                if (CheckBoxBorber.Checked == true)
                {
                    newCell.BorderStyle = BorderStyle.Inset;
                    newCell.BorderWidth = Unit.Pixel(1);
                }
                newRow.Controls.Add(newCell);
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        HtmlTable table3 = new HtmlTable();
        table3.Attributes.Add("runat", "server");
        table3.ID = "t3";
        if (CheckBoxBorber.Checked == true)
            table3.Border = 2;
        int rows = Int32.Parse(TextBoxRow.Text);
        int columns = Int32.Parse(TextBoxColumn.Text);

        table3.Width = (columns * 60).ToString();
        for (int i = 0; i < rows; i++)
        {
            HtmlTableRow newRow = new HtmlTableRow();
            newRow.Attributes.Add("runat", "server");
            table3.Rows.Add(newRow);
            for (int j = 0; j < columns; j++)
            {
                HtmlTableCell newCell = new HtmlTableCell();
                newCell.Attributes.Add("runat", "server");
                newCell.InnerHtml = "(" + i.ToString() + ", " + j.ToString() + ")";
                newRow.Cells.Add(newCell);
            }
        }
        Page.Controls.Add(table3);
    }
}
