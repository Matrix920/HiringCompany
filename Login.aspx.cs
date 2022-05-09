using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class Login : System.Web.UI.Page
    {
        public const String LOGIN = "login";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session[LOGIN] != null)
            {
                Response.Redirect("ManageCars.aspx");
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            /*
            using (var db = new HireDbEntities())
            {
                if (db.Users.Where(x => x.Username.Equals(Username.Text.Trim()) && x.Password.Equals(Password.Text)).SingleOrDefault() != null)
                {
                    Session[LOGIN] = true;
                    Response.Redirect("MangeCars.aspx");
                }

            }
            */
            using (var db = new HireDbEntities())
            {
                if (db.Admins.Where(x => x.Login.Equals(Username.Text.Trim()) && x.Password.Equals(Password.Text)).SingleOrDefault() != null)
                {
                    Session[LOGIN] = true;
                    Response.Redirect("ManageCars.aspx");
                }

            }
        }
    }
}