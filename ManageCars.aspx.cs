﻿using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class ManageCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Login.LOGIN] == null)
            {
                Response.Redirect("Home.aspx");
            }

            using(var db=new HireDbEntities())
            {
                var sb = new StringBuilder();

                var cars = db.Cars.ToList();
                foreach(var car in cars)
                {
                    sb.Append("<tr>");

                    sb.Append("<td>").Append(car.CarFactory.FactoryName);
                    sb.Append("</td>");

                    sb.Append("<td>").Append(car.Model);
                    sb.Append("</td>");

                    sb.Append("<td>").Append(car.Type);
                    sb.Append("</td>");

                    sb.Append("<td>");
                    sb.Append("<a  class='btn btn-info'  href='AddPicture.aspx?id=")
                        .Append(car.CarID).Append("'>  Add Picture </a>");
                    sb.Append("</td>");

                    sb.Append("</tr>");
                }

                Label1.Text= sb.ToString();
            }
        }
    }
}