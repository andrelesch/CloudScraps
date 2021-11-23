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

          //  if (!IsPostBack)
           // {
                LoadImages(Session["ActiveUser"] + "");
            //}
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
            PNLProfile.Controls.Clear();

            Image item = new Image();
            item.Height = 500;
            item.Width = 500;
            item.BorderWidth = 10;
            item.BorderColor = System.Drawing.Color.Gray;
            item.ImageUrl = imgUrl;

            PNLProfile.Controls.Add(item);
            Panel1.Controls.Add(new LiteralControl("&nbsp"));

            Panel options = new Panel();

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

            LinkButton edit = new LinkButton();
            edit.Text = "Edit";
            edit.Width = 140;
            edit.ForeColor = System.Drawing.Color.Gray;
            edit.Click += (s, e) => { editScript(imgID); };//new EventHandler();


            LinkButton delete = new LinkButton();
            delete.Text = "Delete";
            delete.Width = 140;
            delete.ForeColor = System.Drawing.Color.Gray;
            delete.Click += (s, e) => { deleteScript(imgID); };

            options.Controls.Add(metadata);
            options.Controls.Add(new LiteralControl("<br />"));
            options.Controls.Add(edit);
            options.Controls.Add(delete);
            options.Controls.Add(new LiteralControl("&nbsp"));
            PNLProfile.Controls.Add(options);
        }

        private void editScript(int imgID)
        {

            Label lblGeo = new Label();
            lblGeo.Width = 140;
            lblGeo.CssClass = "labelfixR";
            lblGeo.Text = "Geolocation: ";

            TextBox txtGeo = new TextBox();
            txtGeo.Width = 150;
            txtGeo.CssClass = "auto-style1";

            Label lblTags = new Label();
            lblTags.Width = 140;
            lblTags.CssClass = "labelfixR";
            lblTags.Text = "Tags:  ";

            TextBox txtTags = new TextBox();
            txtTags.Width = 150;
            txtTags.CssClass = "auto-style1"; 
            
            Button btnUpdate = new Button();
            btnUpdate.Width = 100;
            btnUpdate.Text = "Update";
            btnUpdate.Click += (s, e) => { btnUpdate_Click(txtGeo.Text, txtTags.Text, imgID); };



            Panel1.Controls.Add(lblGeo);
            Panel1.Controls.Add(txtGeo);
            Panel1.Controls.Add(new LiteralControl("<br />"));
            Panel1.Controls.Add(lblTags);
            Panel1.Controls.Add(txtTags);
            Panel1.Controls.Add(new LiteralControl("<br />"));
            Panel1.Controls.Add(btnUpdate);




        }
        protected void btnUpdate_Click(string geo, string tags, int imgID)
        { 
            //Edit Metadata
            connect = new SqlConnection(connectionstr);
            connect.Open();

            string sqlUpdate = "UPDATE [Metadata] SET Geolocation = " + geo + " , Tags = " + tags + " WHERE Item_ID = "+ imgID;

            command = new SqlCommand(sqlUpdate, connect);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Redirect("Profile Page.aspx");

        }

        private void deleteScript(int imgID)
        {
            connect = new SqlConnection(connectionstr);
            connect.Open();

            string sqlDelete = "DELETE FROM [Metadata] WHERE Item_ID = " + imgID;

            command = new SqlCommand(sqlDelete, connect);
            command.ExecuteNonQuery();
            connect.Close();
            Response.Redirect("Profile Page.aspx");
        }

        protected void LBNHome_Click(object sender, EventArgs e)
        {
            Session["ActiveUser"] = LBLUsername.Text;
            Response.Redirect("LandingPage.aspx");
        }
    }
}