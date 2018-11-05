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
        if (Page.IsPostBack )
            myTableFill();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    private void myTableFill()
    {
        int rows = Int32.Parse(TextBoxRow.Text);
        int columns = Int32.Parse(TextBoxColumn.Text);

        for (int i = 1; i <= rows; i++)
        {
            TableRow newRow = new TableRow();
            Table2.Controls.Add(newRow);
            for (int j = 1; j <= columns; j++)
            {
                TableCell newCell = new TableCell();
                TextBox dynamicTextBox = new TextBox();
                dynamicTextBox.ID = (10 * i + j).ToString();
                //			dynamicTextBox.Style["width"] = 40;

                Button dynamicButton = new Button();
                dynamicButton.ID = (1000 * i + 100 * j).ToString();
                dynamicButton.Text = i.ToString() + ", " + j.ToString();
                dynamicButton.Click += new System.EventHandler(dynamicButton_Click);

                newCell.Controls.Add(dynamicTextBox);
                newCell.Controls.Add(dynamicButton);
                if (CheckBoxBorber.Checked == true)
                {
                    newCell.BorderStyle = BorderStyle.Inset;
                    newCell.BorderWidth = Unit.Pixel(1);
                }
                newRow.Controls.Add(newCell);
            }
        }
    }
    private void dynamicButton_Click(object sender, System.EventArgs e)
    {
        int tempInt = Int32.Parse(((Button)sender).ID.ToString());
        int i = tempInt / 1000 - 1;
        int j = tempInt / 100 % 10 - 1;

        Control tempControl = Table2.Rows[i].Cells[j].FindControl((10 * (i + 1) + (j + 1)).ToString());
        TextBox tempTextBox = new TextBox();
        tempTextBox = (TextBox)tempControl;
        Label6.Text = "Hello, " + tempTextBox.Text + " from " + ((Button)sender).Text;
    }
 }
