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
    public partial class Search : System.Web.UI.Page
    {
        HireDbEntities db = new HireDbEntities();

        public String TypeSearch=COLOR;
        public const String MODEL="Model";
        public const String COLOR = "Color";
        public const String TYPE = "Type";
        public const String GOVERNORATE = "Governorate";
        public const  String PRODUCER = "Produer";
        public const  String YEAR = "Year";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Login.LOGIN] != null)
            {
                Response.Redirect("ManageCars.aspx");
            }

            if (!IsPostBack)
            {
                
                var producers = db.CarFactories.ToList();
                foreach (var p in producers)
                {
                    FactoryID.Items.Add(new ListItem
                    {
                        Text = p.FactoryName,
                        Value = p.FactoryID.ToString()
                    });
                }

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

        protected void SearchType_SelectedIndexChanged(object sender, EventArgs e)
        {
            String type = SearchType.SelectedValue.ToString();
            setAllInvisible();

            switch (type)
            {
                case MODEL:
                    {
                        Model.Visible = true;
                        TypeSearch = MODEL;
                        break;
                    }
                case TYPE:
                    {
                        Type.Visible = true;
                        TypeSearch = TYPE;
                        break;
                    }
                case COLOR:
                    {
                        Color.Visible = true;
                        TypeSearch = COLOR;
                        break;
                    }
                case YEAR:
                    {
                        Year.Visible = true;
                        TypeSearch = YEAR;
                        break;
                    }
                case GOVERNORATE:
                    {
                        GovernorateID.Visible = true;
                        TypeSearch = GOVERNORATE;
                        break;
                    }
                default:
                    {
                        FactoryID.Visible = true;
                        TypeSearch = PRODUCER;
                        break;
                    }
            }
        }

        private void setAllInvisible()
        {
            Type.Visible = false;
            Color.Visible = false;
            GovernorateID.Visible = false;
            FactoryID.Visible = false;
            Year.Visible = false;
            Model.Visible = false;
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            var cars = new List<Car>();

            switch (TypeSearch)
            {
                case MODEL:
                    {
                        cars = db.Cars.Where(x => x.Model.Equals(Model.Text)).ToList();
                        break;
                    }
                case TYPE:
                    {
                        cars = db.Cars.Where(x => x.Type.Equals(Type.Text)).ToList();
                        break;
                    }
                case COLOR:
                    {
                        cars = db.Cars.Where(x => x.Color.Equals(Color.Text)).ToList();
                        break;
                    }
                case YEAR:
                    {
                        var year = Int32.Parse(Year.Text);
                        cars = db.Cars.Where(x => x.Year==year).ToList();
                        break;
                    }
                case GOVERNORATE:
                    {
                     
                        break;
                    }
                default:
                    {
                        break;
                    }
            }

            showCars(cars);
            
        }

        private void showCars(List<Car> cars)
        {
            var sb = new StringBuilder();

            foreach (var car in cars)
            {
                sb.Append("<tr>");

                sb.Append("<td>").Append(car.CarFactory.FactoryName);
                sb.Append("</td>");

                sb.Append("<td>").Append(car.Model);
                sb.Append("</td>");

                sb.Append("<td>").Append(car.Type);
                sb.Append("</td>");

                sb.Append("<td>").Append(car.Price);
                sb.Append("</td>");

                sb.Append("<td>");
                sb.Append("<a  class='btn btn-info'  href='CarInformation.aspx?id=")
                    .Append(car.CarID).Append("'> Car Information </a>");
                sb.Append("</td>");

                sb.Append("</tr>");
            }

            Label1.Text = sb.ToString();
        }

        protected void FactoryID_SelectedIndexChanged(object sender, EventArgs e)
        {
            var factoryID = Int32.Parse(FactoryID.SelectedValue);
            var cars = db.Cars.Where(x => x.FactoryID ==factoryID).ToList();
            showCars(cars);
        }

        protected void GovernorateID_SelectedIndexChanged(object sender, EventArgs e)
        {
            var governorateID = Int32.Parse(GovernorateID.SelectedValue);

            var cars = db.Cars.Where(x => x.GovernorateID == governorateID).ToList();
            showCars(cars);
        }
    }
}