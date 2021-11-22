using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CloudScraps.Pages
{
    public partial class Profile_Page : System.Web.UI.Page
    {

        public SqlConnection connect;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        public string connectionstr = @"Server = tcp:cloudscrapsdbserver.database.windows.net,1433;Initial Catalog = CloudScraps_db; Persist Security Info=False;User ID = CloudMan; Password=CMPG323@Me; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30";

        protected void Page_Load(object sender, EventArgs e)
        {
            LBLUsername.Text = Session["ActiveUser"] + "";
            LBLName.Text = Session["FName"] + "";
            LBLSurname.Text = Session["LName"] + "";

            LoadImages(Session["ActiveUser"] + "");

        }

        private void LoadImages(string user)
        {
            connect = new SqlConnection(connectionstr);
            connect.Open();
            command = new SqlCommand("SELECT Item_Data, Item_ID FROM [Item] WHERE UserName = '" + user + "'", connect);
            reader = command.ExecuteReader();

            //Probeerslag vir meetadata trek. 

            //Sorry fwend, I tried, but i'm lost at the moment ":(


            try
            {
                while (reader.Read())
                {

                    byte[] bytes = (byte[])reader.GetValue(0);
                    string strBase64 = Convert.ToBase64String(bytes);

                    ImageButton img = new ImageButton();
                    img.Height = 160;
                    img.Width = 160;
                    img.BorderWidth = 10;
                    img.BorderColor = System.Drawing.Color.Gray;
                    img.ImageUrl = "data:Image/png;base64," + strBase64;
                    img.AlternateText = reader.GetValue(1).ToString();
                    img.Click += new ImageClickEventHandler(img_Click);

                    Panel1.Controls.Add(img);
                    Panel1.Controls.Add(new LiteralControl("&nbsp"));
                }
            }
            catch
            {

            }
            

        }

        protected void img_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Controls.Clear();
            string strImgID = (sender as ImageButton).AlternateText;
            int imgID = Int32.Parse(strImgID);

            connect = new SqlConnection(connectionstr);
            connect.Open();
            command = new SqlCommand("SELECT Item_Data FROM [Item] WHERE Item_ID = " + imgID, connect);
            reader = command.ExecuteReader();

            byte[] bytes = (byte[])reader.GetValue(0);
            string strBase64 = Convert.ToBase64String(bytes);

            Image item = new Image();
            item.Height = 500;
            item.Width = 500;
            item.BorderWidth = 10;
            item.BorderColor = System.Drawing.Color.Gray;
            item.ImageUrl = "data:Image/png;base64," + strBase64;

            Panel1.Controls.Add(item);

            Panel options = new Panel();

        }

        protected void LBNHome_Click(object sender, EventArgs e)
        {
            Session["ActiveUser"] = LBLUsername.Text;
            Response.Redirect("LandingPage.aspx");
        }
    }
}