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
    protected Button[] arrButtons;

    protected void Page_Load(object sender, System.EventArgs e)
    {
        arrButtons = new Button[16];
        short i;
        for (i = 0; i < 16; i++)
        {
            arrButtons[i] = new Button();
            arrButtons[i].ID = i.ToString();
            arrButtons[i].Click += new System.EventHandler(AllButtons_Click);
        }
        for (i = 0; i < 4; i++)
        {
            TableRow newRow = new TableRow();
            Table1.Controls.Add(newRow);
            for (int j = 0; j < 4; j++)
            {
                TableCell newCell = new TableCell();
                newCell.Controls.Add(arrButtons[i * 4 + j]);
                newRow.Controls.Add(newCell);
            }
        }

        if (IsPostBack == false)
        {
            for (i = 0; i < 16; i++)
            {
                arrButtons[i].Width = 50;
                arrButtons[i].Height = 50;
                arrButtons[i].Font.Size = new FontUnit("X-Large");
                arrButtons[i].Text = i.ToString();
            }
        }
    }

	private void AllButtons_Click(object sender, System.EventArgs e)
	{
        int index = Int32.Parse(((Button)sender).ID);
        string temp = arrButtons[0].Text;
        arrButtons[0].Text = arrButtons[index].Text;
        arrButtons[index].Text = temp;
    }
}