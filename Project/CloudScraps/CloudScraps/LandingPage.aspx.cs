using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CloudScraps
{
    public partial class LandingPage : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {
            LBLUsername.Text = "@" + Session["ActiveUser"] + "";

        }

        protected void LBLSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
            

        }

        protected void LBLProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile Page.aspx");
        }

        protected void LBLUpload_Click(object sender, EventArgs e)
        {

        }
    }
}