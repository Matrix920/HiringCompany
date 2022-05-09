using HireCompany.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HireCompany
{
    public partial class AddPicture : System.Web.UI.Page
    {
        String result = "Error Uploading";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Login.LOGIN] == null)
            {
                Response.Redirect("Home.aspx");
            }

            
        }

     
        protected void SavePictre_Click(object sender, EventArgs e)
        {
            String id = Request.QueryString["id"];
            if (id != null)
            {
                int carID = Int32.Parse(id);
                using (var db = new HireDbEntities())
                {
                    var car = db.Cars.Find(carID);
                    if (car != null)
                    {
                        string folderPath = Server.MapPath("~/Pictures/");
                        PictureFile.SaveAs(folderPath + PictureFile.FileName);
                        var p = new Picture
                        {
                            CarID = carID,
                            PicturePath = "Pictures/" + PictureFile.FileName
                        };
                        db.Pictures.Add(p);
                        db.SaveChanges();

                        result = "Uploaded Successfully";
                    }
                }
            }

            UploadResult.Text = result;
        }
    }
}