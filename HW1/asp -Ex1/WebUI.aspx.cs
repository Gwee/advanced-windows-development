using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ex_1;
using Newtonsoft.Json;

namespace asp__Ex1
{
    public partial class WebUI : System.Web.UI.Page
    {
        int[,] matrix = new int[4, 4];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack){
                setBorder();
                customInit();
                ViewState.Add("matrix", matrix);
                preserveData();
            }
            else {
                createMatrix(ViewState["matrix"]);
            }
        }

        private void preserveData()
        {
            ViewState["matrix"] = JsonConvert.SerializeObject(matrix);
        }

        private void createMatrix(Object obj)
        {
            int c = 0;
            var matchCollection = Regex.Matches(obj.ToString(), @"\d+");

            List<int> ExtractedIds = new List<int>();
            foreach (Match match in matchCollection)
            {
                int theid = int.Parse(match.Value);
                ExtractedIds.Add(theid);
            }

            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    matrix[i, j] = ExtractedIds[c];
                    c++;
                }
            }
        }


        private void setBorder()
        {
            try
            {
                butEmpty.BorderStyle = BorderStyle.None;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void customInit()
        {
            try
            {
                int[] values = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };
                var res = Extentions.Shuffle<int>(values);

                foreach (Button button in btnsArea.Controls.OfType<Button>())
                {
                    int tabIndex = Convert.ToInt32(button.TabIndex);
                    if (button.BackColor == Color.White) { button.Text = "`"; continue; }

                    setCell(tabIndex, values[tabIndex]);
                    button.Text = values[tabIndex].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private void setCell(int tabIndex, int val)
        {
            int i = tabIndex / 4;
            int j = tabIndex % 4;

            matrix[i, j] = val;
        }

        private bool isOrdered()
        {
            int prevNum = matrix[0, 0]; int counter = 0;

            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    counter++;
                    if (counter != matrix[i, j]) return false;
                }
            }
            return true;
        }


        private Tuple<int, int> getCell(int val)
        {
            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    if (matrix[i, j] == val)
                    {
                        return new Tuple<int, int>(i, j);
                    }
                }
            }
            return new Tuple<int, int>(-1, -1);
        }

        private bool isNeighbour(Tuple<int, int> clicked, Tuple<int, int> empty)
        {
            int diffx = clicked.Item1 - empty.Item1;
            int diffy = clicked.Item2 - empty.Item2;

            return ((Math.Abs(diffx) == 0) && (Math.Abs(diffy) == 1)) || ((Math.Abs(diffx) == 1) && (Math.Abs(diffy) == 0));
        }

        protected void ckickMe(object sender, EventArgs e)
        {
            var button = (Button)sender;
            var val = Convert.ToInt32(button.Text);
            var matrixCoorVal = getCell(val);
            var matrixCoorEmpty = getCell(0);//the empty button

            if (isNeighbour(matrixCoorVal, matrixCoorEmpty))
            {
                foreach (Button btn in btnsArea.Controls.OfType<Button>())
                {
                    if (btn.BackColor == Color.White)
                    {
                        Button b = new Button();

                        //btn.Visible = true;
                        btn.Text = button.Text;
                        btn.BackColor = button.BackColor;
                        btn.Click += ckickMe;

                        button.BorderStyle = BorderStyle.None;
                        button.Text = "`";
                        button.BackColor = Color.White;
                        button.Click -= ckickMe;

                        matrix[matrixCoorEmpty.Item1, matrixCoorEmpty.Item2] = val;
                        matrix[matrixCoorVal.Item1, matrixCoorVal.Item2] = 0;

                        preserveData();
                        break;
                    }
                }
            }
            if (isOrdered())
            {
                btnsArea.Visible = false;
                dvInfo.Visible = true;

            }
        }

        protected void btnNewGame_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            btnsArea.Visible = true;
            dvInfo.Visible = false;
        }
    }
}