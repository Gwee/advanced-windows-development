using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

	public class myEventArgs : EventArgs
	{
		private string str;
		public myEventArgs(string S)
		{
			str = S;
		}
		public string myString
		{
			get
			{
				return str;
			}
		}
        override public string ToString()
        {
            return str;
        }

	}


