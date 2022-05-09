using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class AddHireCenter : System.Web.UI.Page
    {
        HireDbEntities db = new HireDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session[Login.LOGIN] == null)
            {
                Response.Redirect("Home.aspx");
            }

            if (!IsPostBack)
            {
                var producers = db.CarFactories.ToList();

                var govs = db.Governorates.ToList();
                foreach (var g in govs)
                {
                    GovernorateID.Items.Add(new ListItem
                    {
                        Text = g.GovernorateName,
                        Value = g.GovernorateID.ToString()
                    });
                }
            }
        }

       

        protected void Save_Click(object sender, EventArgs e)
        {
            var h = new HireCenter
            {
                Description = Description.Text,
                GovernorateID = Int32.Parse(GovernorateID.SelectedValue),
                Region = Region.Text
            };
            db.HireCenters.Add(h);
            db.SaveChanges();
            Response.Redirect("HireCenters.aspx");
        }
    }
}