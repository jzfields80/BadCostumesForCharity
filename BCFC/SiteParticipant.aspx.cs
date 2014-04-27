using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCFC
{
    public partial class SiteParticipant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //the query string will give us the participant
            int theparticipant = GetParticipant();
            //ie jzf
            //must set the image and the motivation
            List<Image> OurImages = new List<Image>();
            OurImages.Add(Image2);
            OurImages.Add(Image3);
            OurImages.Add(Image4);
            OurImages.Add(Image5);
            OurImages.Add(Image6);

            List<Label> OurVotes = new List<Label>();
            OurVotes.Add(Label2);
            OurVotes.Add(Label3);
            OurVotes.Add(Label4);
            OurVotes.Add(Label5);
            OurVotes.Add(Label6);

            using (var db = new BadCostumesEntities())
            {
                
                var profiledata = db.Participants.Find(theparticipant);
                TextBox1.Text = profiledata.Motivation;
                Image1.ImageUrl = "~/Images/" + profiledata.Image;
                var pCostumes = (from p in db.Costumes
                                 where p.ParticipantId == theparticipant
                                 orderby p.Votes descending
                                   select p).Take(5);


                int x = 0;
                if (null != pCostumes)
                {
                    foreach (var p in pCostumes)
                    {
                        OurImages[x].ImageUrl = "~/Images/" + p.Image;
                        OurVotes[x].Text = p.Votes;
                        x++;
                    }

                }
                else
                {

                }

            }
            


        }

        private int GetParticipant()
        {
            return Convert.ToInt32(Request.QueryString["Participant"]);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string args = string.Format("~/SuggestACostume.aspx?Participant={0}", GetParticipant());
            Response.Redirect(args);
        }

        protected void Image2_Click(object sender, ImageClickEventArgs e)
        {
            GoToPay(Image2.ImageUrl);
        }

        protected void Image3_Click(object sender, ImageClickEventArgs e)
        {
            GoToPay(Image3.ImageUrl);
        }

        protected void Image4_Click(object sender, ImageClickEventArgs e)
        {
            GoToPay(Image4.ImageUrl);

        }

        protected void Image5_Click(object sender, ImageClickEventArgs e)
        {
            GoToPay(Image5.ImageUrl);

        }

        protected void Image6_Click(object sender, ImageClickEventArgs e)
        {
            GoToPay(Image6.ImageUrl);

        }
        private void GoToPay(string PictureID)
        {
            string args = string.Format("~/Contribution.aspx?Participant={0}&Picture={1}", GetParticipant(), PictureID);
            Response.Redirect(args);
        }
    }
}