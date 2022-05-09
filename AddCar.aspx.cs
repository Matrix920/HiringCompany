using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class AddCar : System.Web.UI.Page
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
                foreach(var p in producers)
                {
                    FactoryID.Items.Add(new ListItem
                    {
                        Text = p.FactoryName,
                        Value = p.FactoryID.ToString()
                    });
                }

                var govs = db.Governorates.ToList();
                foreach(var g in govs)
                {
                    GovernorateID.Items.Add(new ListItem
                    {
                        Text = g.GovernorateName,
                        Value = g.GovernorateID.ToString()
                    });
                }
            }

        }

        protected void SaveClick(object sender, EventArgs e)
        {
            Car c = new Car
            {
                CarNumber = Int32.Parse(CarNumber.Text),
                Color = Color.Text,
                FactoryID = Int32.Parse(FactoryID.Text),
                GovernorateID = Int32.Parse(GovernorateID.SelectedValue),
                Model = Model.Text,
                Price = Decimal.Parse(Price.Text),
                Type = Type.Text,
                Year = Int32.Parse(Year.Text)
            };

            db.Cars.Add(c);
            db.SaveChanges();
            Response.Redirect("ManageCars.aspx");
       
        }
    }
}