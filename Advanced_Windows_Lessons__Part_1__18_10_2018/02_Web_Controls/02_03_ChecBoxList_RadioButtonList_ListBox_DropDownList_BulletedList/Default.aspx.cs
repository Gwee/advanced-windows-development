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
        if (!IsPostBack)
        {
            for (int i = 1; i <= 10; i++)
            {
                CheckBoxList1.Items.Add(i.ToString());
        ////        CheckBoxList1.Items[i-1].Text = i.ToString();
                RadioButtonList1.Items.Add(i.ToString());
                ListBox1.Items.Add(i.ToString());
                DropDownList1.Items.Add(i.ToString());
                BulletedList1.Items.Add(i.ToString());
            }
        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int result = 0;

        foreach (ListItem myListItem in CheckBoxList1.Items)
        {
            if (myListItem.Selected)
            {
                if (result == 0)
                    Label1.Text = "";
                else
                    Label1.Text += " + ";
                Label1.Text += myListItem.Text;
                result += Int32.Parse(myListItem.Text);
            }
        }
        Label1.Text += " = " + result.ToString();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = RadioButtonList1.SelectedItem.Text + "  is selected";
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = ListBox1.SelectedItem.Text + "  is selected";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Text = DropDownList1.SelectedItem.Text + "  is selected";
    }
    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
        Label2.Text = BulletedList1.Items[e.Index].Text + "  is selected";
    }
}
