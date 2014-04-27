using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCFC
{
    public partial class FindUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //List<Image> OurImages = new List<Image>();
            //OurImages.Add(Image1);
            //OurImages.Add(Image2);
            //OurImages.Add(Image3);
            //OurImages.Add(Image4);
            //OurImages.Add(Image5);

            //give us the first few okay
            //using (var db = new BadCostumesEntities())
            //{

            //    var profiledata = (from p in db.Participants
            //                       select p).Take(5);


            //    int x = 0;
            //    if (null != profiledata)
            //    {
            //        foreach (var p in profiledata)
            //        {
            //            //string base64String = Convert.ToBase64String(bytesPhoto, 0, bytesPhoto.Length);
                
            //            OurImages[x].ImageUrl =  "~/Images/" + p.Image;
            //            x++;
            //        }

            //    }
            //    else
            //    {

            //    }
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //query for the user. use js
            using (var db = new BadCostumesEntities())
            {
                var profiledata = (from p in db.Participants
                                   where p.LastName == TextBoxLastName.Text
                                   select p).FirstOrDefault();
                if (null == profiledata)
                {
                    Label1.Visible = true;
                }
                else
                {
                    string gotourl = string.Format("~/SiteParticipant.aspx?Participant={0}",profiledata.Id);
                    Response.Redirect(gotourl);
                }
                

            }
          
        }
    }
}