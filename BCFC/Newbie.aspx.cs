using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCFC
{
    public partial class Newbie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //need to get the photo that they want to use, maybe from facebook?
            //now we write the profile
            //the fb id
            //the charity
            //why they are doing this
            try
            {
                using (var db = new BadCostumesEntities())
                {
                    var NewGuy = new Participant();
                    NewGuy.FirstName = TextBoxFirstName.Text;
                    NewGuy.LastName = TextBoxLastName.Text;
                    NewGuy.Motivation = TextBoxMotiviation.Text;
                    NewGuy.Charity = TextBoxCharity.Text;


                    System.IO.Stream fs = fileImage.PostedFile.InputStream;
                    System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    Byte[] bytesPhoto = br.ReadBytes((Int32)fs.Length);
                    string base64String = Convert.ToBase64String(bytesPhoto, 0, bytesPhoto.Length);
                    imgPhoto.ImageUrl = "data:image/png;base64," + base64String;
                    imgPhoto.Visible = true;
                    string fileName = fileImage.PostedFile.FileName;
                    fileImage.SaveAs(Server.MapPath("~/Images/" + fileName));

                    NewGuy.Image = fileName;

                    db.Participants.Add(NewGuy);
                    db.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                return;
            }

            //go to say thank you!
            Response.Redirect("~/Default.aspx");

        }
    }
}