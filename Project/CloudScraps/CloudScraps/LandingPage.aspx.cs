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

namespace CloudScraps
{
    public partial class LandingPage : System.Web.UI.Page
    {
        public SqlConnection connect;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        public string connectionstr = @"Server = tcp:cloudscrapsdbserver.database.windows.net,1433;Initial Catalog = CloudScraps_db; Persist Security Info=False;User ID = CloudMan; Password=CMPG323@Me; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30";

        protected void Page_Load(object sender, EventArgs e)
        {
            LBLUsername.Text = "@" + Session["ActiveUser"] + "";
            LoadImages(Session["ActiveUser"] + "");

        }

        private void LoadImages(string user)
        {

            connect = new SqlConnection(connectionstr);
            connect.Open();
            command = new SqlCommand("SELECT Item_Data, Item_ID FROM [Item] WHERE UserName = '" + user + "'", connect);
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
                    img.Click += new ImageClickEventHandler(img_Click);
                    connect.Close();

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

            try
            {
                byte[] bytes = (byte[])reader.GetValue(0);
                string strBase64 = Convert.ToBase64String(bytes);

                Image item = new Image();
                item.Height = 500;
                item.Width = 500;
                item.BorderWidth = 10;
                item.BorderColor = System.Drawing.Color.Gray;
                item.ImageUrl = "data:Image/png;base64," + strBase64;
                connect.Close();

                Panel1.Controls.Add(item);

                Panel options = new Panel();
            }
            catch 
            {

            }              
        }

        protected void LBLSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void LBLProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile Page.aspx");
        }

        private void PanelClean ()
        {
            PNLUpload.Visible = false;
            txtItemName.Text = "";
            txtGeo.Text = "";
            txtTags.Text = "";
            LBLUploadStatus.Text = "";

        }

        private void PanelShow()
        {
            PNLUpload.Visible = true;

        }

        protected void LBLUpload_Click(object sender, EventArgs e)
        {
            PanelShow();
        }

        protected void btbUpload_Click(object sender, EventArgs e)
        {


            HttpPostedFile postedFile = FileUploadField.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                //string cs = ConfigurationManager.ConnectionStrings["cloudscrapsstorage"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionstr))
                {
                    SqlCommand cmd = new SqlCommand("sp_InsertImage", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramUserName = new SqlParameter()
                    {
                        ParameterName = "@UserName",
                        Value = Session["ActiveUser"] + ""
                    };
                    cmd.Parameters.Add(paramUserName);
                    SqlParameter paramItemName = new SqlParameter()
                    {
                        ParameterName = "@ItemName",
                        Value = filename
                    };
                    cmd.Parameters.Add(paramItemName);

                    SqlParameter paramSize = new SqlParameter()
                    {
                        ParameterName = "@ItemSize",
                        Value = fileSize
                    };
                    cmd.Parameters.Add(paramSize);

                    SqlParameter paramItemData = new SqlParameter()
                    {
                        ParameterName = "@ItemData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramItemData);

                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@DaNewID",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paramNewId);

                    con.Open();                                       
                    cmd.ExecuteNonQuery();
                    con.Close();

                    //string sInsertValues = ("(@" +  + ", @'" + txtGeo.Text + "', '@" + txtTags.Text + "', GETDATE() )");


                    connect = new SqlConnection(connectionstr);
                    connect.Open();

                    command = new SqlCommand("INSERT INTO [Metadata] VALUES(@Item_ID, @Geolocation, @Tags, @Captured_Date)", connect);

                    command.Parameters.AddWithValue("@Item_ID", paramNewId.Value.ToString());
                    command.Parameters.AddWithValue("@Geolocation", txtGeo.Text);
                    command.Parameters.AddWithValue("@Tags", txtTags.Text);
                    command.Parameters.AddWithValue("@Captured_Date", DateTime.Today);

                    command.ExecuteNonQuery();
                    connect.Close();

                    LBLUploadStatus.Visible = true;
                    LBLUploadStatus.ForeColor = System.Drawing.Color.Green;
                    LBLUploadStatus.Text = "Upload Successful";

                    PanelClean();
                }                
            }
            else
            {
                LBLUploadStatus.Visible = true;
                LBLUploadStatus.ForeColor = System.Drawing.Color.Red;
                LBLUploadStatus.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
            }
            Response.Redirect("LandingPage.aspx");
        }

       
    }
}