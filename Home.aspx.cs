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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            using (var db = new HireDbEntities())
            {
                var cmp = db.Companies.Find(1);
                CompanyName.Text = cmp.CompanyName;
                Address.Text = cmp.Address;
                Phone.Text = cmp.Phone.ToString();

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