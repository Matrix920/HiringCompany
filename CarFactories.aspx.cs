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
    public partial class CarFactories : System.Web.UI.Page
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

                var producers = db.CarFactories.ToList();
                foreach (var c in producers)
                {
                    sb.Append("<tr>");

                    sb.Append("<td>").Append(c.FactoryName);
                    sb.Append("</td>");

                    sb.Append("</tr>");
                }

                Label1.Text = sb.ToString();
            }
        }
    }
}