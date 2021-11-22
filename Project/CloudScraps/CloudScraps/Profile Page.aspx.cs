using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Azure.Storage;
using Azure.Storage.Files.DataLake;
using Azure.Storage.Files.DataLake.Models;
using NUnit.Framework;

namespace CloudScraps.Pages
{
    public partial class Profile_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           LBLUsername.Text = Session["ActiveUser"] + "";
        }


    }
}