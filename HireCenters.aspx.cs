using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class HireCenters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Login.LOGIN] == null)
            {
                Response.Redirect("Home.aspx");
            }

            using (var db = new HireDbEntities())
            {
                var sb = new StringBuilder();

                var centers = db.HireCenters.ToList();
                foreach (var c in centers)
                {
                    sb.Append("<tr>");

                    sb.Append("<td>").Append(c.Governorate.GovernorateName);
                    sb.Append("</td>");

                    sb.Append("<td>").Append(c.Description);
                    sb.Append("</td>");

                    sb.Append("<td>").Append(c.Region);
                    sb.Append("</td>");

                    sb.Append("</tr>");
                }

                Label1.Text = sb.ToString();
            }
        }
    }
}