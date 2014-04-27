using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BCFC
{
    public partial class SuggestACostume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfileupload_Click(object sender, EventArgs e)
        {
            if (fileImage.HasFile)
            {
                System.IO.Stream fs = fileImage.PostedFile.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                Byte[] bytesPhoto = br.ReadBytes((Int32)fs.Length);
                string base64String = Convert.ToBase64String(bytesPhoto, 0, bytesPhoto.Length);
                imgPhoto.ImageUrl = "data:image/png;base64," + base64String;
                imgPhoto.Visible = true;
                string fileName = fileImage.PostedFile.FileName;
                fileImage.SaveAs(Server.MapPath("~/Images/" + fileName));
                using (var db = new BadCostumesEntities ())
                {
                    var newCostume = new Costume();
                    newCostume.Participant = Request.QueryString["Participant"]; //this has to be the id
                    newCostume.ParticipantId = Convert.ToInt32( Request.QueryString["Participant"]); //this has to be the id
                    newCostume.Image = fileName;
                    newCostume.Votes = "1";
                    db.Costumes.Add(newCostume);
                    db.SaveChanges();
                }
                string gotourl = string.Format("~/SiteParticipant.aspx?Participant={0}", Request.QueryString["Participant"]);
                Response.Redirect(gotourl);

            }

        }
    }
}