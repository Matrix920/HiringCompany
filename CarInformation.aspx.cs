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
    public partial class CarInformation : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Login.LOGIN] != null)
            {
                Response.Redirect("Home.aspx");
            }

            String id = Request.QueryString["id"];
            if (id != null)
            {
                int carID = Int32.Parse(id);

                using(var db= new HireDbEntities())
                {
                    var car = db.Cars.Find(carID);
                    if (car != null)
                    {
                        CarNumber.Text = car.CarNumber.ToString();
                        Governorate.Text = car.Governorate.GovernorateName;
                        Producer.Text = car.CarFactory.FactoryName;
                        Type.Text = car.Type;
                        Model.Text = car.Model;
                        Year.Text = car.Year.ToString();
                        Price.Text = car.Price.ToString();
                        Color.Text = car.Color;

                        var pictures = car.Pictures.ToList();
                        var sb = new StringBuilder();
                        sb.Append("<div class='owl-carousel owl-theme' id='slider2'>");
                        foreach (var p in pictures)
                        {
                            sb.Append("<div class='item px-2'>");
                            sb.Append("<div class='fh5co_hover_news_img'>");
                            sb.Append("<div class='fh5co_news_img'>");
                            sb.Append("<img src = '").Append(p.PicturePath)
                                .Append("' alt=''/>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                        }
                        sb.Append("</div>");


                        UploadedPictures.Text = sb.ToString();
                    }
                }
            }
        }
    }
}