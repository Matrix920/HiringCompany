using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class AddCarFactory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Login.LOGIN] == null)
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            using(var db=new HireDbEntities())
            {
                var producer = new CarFactory
                {
                    FactoryName = ProducerName.Text
                };
                db.CarFactories.Add(producer);
                db.SaveChanges();
                Response.Redirect("CarFactories.aspx");
            }
        }
    }
}