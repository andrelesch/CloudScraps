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
                    img.AlternateText = reader.GetValue(1).ToString();

                    string itemName = reader.GetValue(2).ToString();

                    img.Click += delegate
                        {
                        img_Click(img.ImageUrl, itemName);
                        };                           

                    connect.Close();

                    PNLProfile.Controls.Add(img);
                    PNLProfile.Controls.Add(new LiteralControl("&nbsp"));
                }
            }
            catch
            {

            }
            

        }

        protected void img_Click(string imgUrl, string imgName)
        {
            int imgID = Int32.Parse(imgUrl);
            
            PNLProfile.Controls.Clear();

            connect = new SqlConnection(connectionstr);
            connect.Open();
            command = new SqlCommand("SELECT Item_Data FROM [Item] WHERE Item_ID = " + imgID, connect);
            
            reader = command.ExecuteReader();

            Image item = new Image();
            item.Height = 500;
            item.Width = 500;
            item.BorderWidth = 10;
            item.BorderColor = System.Drawing.Color.Gray;

            try
            {
                byte[] bytes = (byte[])reader.GetValue(0);
                string strBase64 = Convert.ToBase64String(bytes);
                connect.Close();
                
                item.ImageUrl = "data:Image/png;base64," + strBase64;
            }
            catch
            {

            }

            

            PNLProfile.Controls.Add(item);

            Panel options = new Panel();

            connect.Open();
            command = new SqlCommand("SELECT Geolaction, Tags, Captured_Date FROM [Metadata] WHERE Item_ID = " + imgID, connect);
            reader = command.ExecuteReader();
            ListBox metadata = new ListBox();
            metadata.Width = 500;
            metadata.Items.Add(imgName);
            metadata.Items.Add("");

            try
            {                
                metadata.Items.Add(reader.GetValue(0).ToString());
                metadata.Items.Add(reader.GetValue(1).ToString());
                metadata.Items.Add(reader.GetValue(2).ToString());
                metadata.Items.Add("");
                connect.Close();
            }
            catch
            {

            }

            
            

            LinkButton edit = new LinkButton();
            edit.Text = "Edit";
            edit.Width = 140;
            edit.ForeColor = System.Drawing.Color.Gray;
            edit.Click += delegate
            {
                editScript(imgID);
            };//new EventHandler();


            LinkButton delete = new LinkButton();
            delete.Text = "Delete";
            delete.Width = 140;
            delete.ForeColor = System.Drawing.Color.Gray;
            delete.Click += delegate
            {
                deleteScript(imgID);
            };

            PNLProfile.Controls.Add(metadata);
            Panel1.Controls.Add(new LiteralControl("&nbsp"));
            PNLProfile.Controls.Add(edit);
            PNLProfile.Controls.Add(delete);
            Panel1.Controls.Add(new LiteralControl("&nbsp"));
        }

        private void editScript(int imgID)
        {
            PNLProfile.Controls.Clear();

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

            //Edit Metadata
            connect = new SqlConnection(connectionstr);
            connect.Open();

            string sqlUpdate = "UPDATE [Metadata] SET Geolocation = " + txtGeo.Text + " , Tags = " + txtTags.Text + " WHERE Item_ID = "+ imgID;

            command = new SqlCommand(sqlUpdate, connect);
            command.ExecuteNonQuery();
            connect.Close();

            PNLProfile.Controls.Clear();
        }

        private void deleteScript(int imgID)
        {
            connect = new SqlConnection(connectionstr);
            connect.Open();

            string sqlDelete = "DELETE FROM [Metadata] WHERE Item_ID = " + imgID;

            command = new SqlCommand(sqlDelete, connect);
            command.ExecuteNonQuery();
            connect.Close();
            PNLProfile.Controls.Clear();
        }

        protected void LBNHome_Click(object sender, EventArgs e)
        {
            Session["ActiveUser"] = LBLUsername.Text;
            Response.Redirect("LandingPage.aspx");
        }
    }
}