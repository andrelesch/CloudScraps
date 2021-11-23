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

            if (!IsPostBack)
            {
                Panel1.Visible = false;
                LBNEdit.Visible = false;
                LBNDelete.Visible = false;
            }
                if (LBLUsername.Text.Length >1)
                {
                    LoadImages(Session["ActiveUser"] + "");
                }
                else
                {
                    Response.Redirect("default.aspx");
                }

            
        }

        private void LoadImages(string user)
        {
            connect = new SqlConnection(connectionstr);
            connect.Open();
            command = new SqlCommand("SELECT Item_Data, Item_ID, Item_Name FROM [Item] WHERE UserName = '" + user + "'", connect);
            reader = command.ExecuteReader();
            
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
                  
                    img.ToolTip = reader.GetValue(2).ToString(); //item Name
                    int imgID = Int32.Parse(reader.GetValue(1).ToString()); //item ID 

                    img.Click += (s, e) => { img_Click(img.ImageUrl, imgID, img.ToolTip); };
                    
                    PNLProfile.Controls.Add(img);
                    PNLProfile.Controls.Add(new LiteralControl("&nbsp"));
                }
                connect.Close();
            }
            catch
            {
                Label lblError = new Label();
                lblError.Text = "Images not read";
            }
        }

        protected void img_Click(string imgUrl, int imgID, string imgName)
        {
            Session["ItemID"] = imgID.ToString();
            
            LBNEdit.Visible = true;
            LBNDelete.Visible = true;

            Image item = new Image();
            item.Height = 500;
            item.Width = 500;
            item.BorderWidth = 10;
            item.BorderColor = System.Drawing.Color.Gray;
            item.ImageUrl = imgUrl;

            PNLProfile.Controls.Add(item);
            PNLProfile.Controls.Add(new LiteralControl("&nbsp"));
            PNLProfile.Controls.Add(new LiteralControl("<br/>"));

            connect.Open();
            command = new SqlCommand("SELECT Geolocation, Tags, Captured_Date FROM [Metadata] WHERE Item_ID = " + imgID, connect);
            reader = command.ExecuteReader();

            ListBox metadata = new ListBox();
            metadata.Width = 500;
            metadata.Height = 200;
            metadata.Items.Add(imgName);
            metadata.Items.Add("");

            try
            {                
                while(reader.Read())
                {
                    metadata.Items.Add("Geolocation: " + reader.GetValue(0).ToString());
                    metadata.Items.Add("Tags: " + reader.GetValue(1).ToString());
                    metadata.Items.Add("Date Captured: " + reader.GetValue(2).ToString());
                    metadata.Items.Add("");
                }                
                connect.Close();
            }
            catch
            {
                Label lblError = new Label();
                lblError.Text = "Image Click, image not read";
            }

            PNLProfile.Controls.Add(metadata);
            PNLProfile.Controls.Add(new LiteralControl("<br />"));
            LBNEdit.Visible = true;
            LBNDelete.Visible = true;
            
        }

        protected void LBNHome_Click(object sender, EventArgs e)
        {
            Session["ActiveUser"] = LBLUsername.Text;
            Response.Redirect("LandingPage.aspx");
        }

        protected void txtGeo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            //Edit Metadata
            connect = new SqlConnection(connectionstr);
            connect.Open();

           // int imgID = Int32.Parse(Session["ItemID"] + "");

            string sqlUpdate = "UPDATE [Metadata] SET Geolocation = '" + txtGeo.Text + "' , Tags = '" + txtTags.Text + "' WHERE Item_ID = "+ Session["ItemID"];

            command = new SqlCommand(sqlUpdate, connect);
            command.ExecuteNonQuery();
            connect.Close();

        
            Response.Redirect("Profile Page.aspx");

        }

        protected void LBNEdit_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;

        }

        protected void LBNDelete_Click(object sender, EventArgs e)
        {
            connect = new SqlConnection(connectionstr);
            connect.Open();

            //int imgID = Int32.Parse(Session["ItemID"] + "");

            string sqlDelete = "DELETE FROM [Item] WHERE Item_ID = " + Session["ItemID"];

            command = new SqlCommand(sqlDelete, connect);
            command.ExecuteNonQuery();
            connect.Close();

            Response.Redirect("Profile Page.aspx");
        }
    }
}