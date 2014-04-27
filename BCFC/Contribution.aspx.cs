using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCFC
{
    public partial class Contribution : System.Web.UI.Page
    {
        private string PictureID;
        private int Participant;
        protected void Page_Load(object sender, EventArgs e)
        {
            PictureID = ( Request.QueryString["Picture"]);
            Participant = Convert.ToInt32(Request.QueryString["Participant"]);
            using (var db = new BadCostumesEntities())
            {

                var profiledata = db.Participants.Find(Participant);
                ImageThisGuy.ImageUrl = "~/Images/" + profiledata.Image;
                Image_Indignity.ImageUrl = PictureID;
            }
        }
        //todo, increment the vote!

    }
}