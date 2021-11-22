using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace CloudScraps
{
    public partial class _default : System.Web.UI.Page
    {
        public SqlConnection connect;
        public SqlCommand command;
        public SqlDataAdapter adapter;
        public SqlDataReader reader;
        public string connectionstr = @"Server = tcp:cloudscrapsdbserver.database.windows.net,1433;Initial Catalog = CloudScraps_db; Persist Security Info=False;User ID = CloudMan; Password=CMPG323@Me; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30";

        private void ClearForm()
        {
            //Panel Hide
            SignUp.Visible = false;

            TXTContact.Text = "";
            TXTEmail.Text = "";
            TXTFirst.Text = "";
            TXTLast.Text = "";
            TXTPassword1.Text = "";
            TXTPassword2.Text = "";
            TXTUser.Text = "";

            //Login Show
            TXTUsername.Visible = true;
            LBLDetails.Text = "Please enter login details below!";
            LBLUsername.Visible = true;
            LBLPassword.Visible = true;
            TXTPassword.Visible = true;
            BTNLogin.Visible = true;
            BTNLogin.Visible = true;
            BTNSignUp.Visible = true;
            LBLUserLoginVal.Text = "";
            LBLUserPassVal.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }

        protected void BTNLogin_Click(object sender, EventArgs e)
        {            
            connect = new SqlConnection(connectionstr);
            connect.Open();
            command = new SqlCommand("SELECT User_Password FROM [User] WHERE UserName = '" + TXTUsername.Text + "'", connect);
            reader = command.ExecuteReader();

            bool bLoginSuccess = false;

            if (reader.HasRows == true)
            {
                // This thing has rows, user was found

                while (reader.Read())
                {
                    string sPassword = reader.GetValue(0).ToString();
                    if (sPassword == TXTPassword.Text)
                    {
                        // Valid user login
                        bLoginSuccess = true;
                        Session["ActiveUser"] = TXTUsername.Text;
                        Response.Redirect("LandingPage.aspx");
                        break;
                    }
                }

            }
            else
            {
                LBLUserLoginVal.Text = "User not found";
                // User Not found
            }

            if (bLoginSuccess == false)
            {
                LBLUserPassVal.Text = "Incorrect password";
                //Invalid password
            }
        }

        protected void BTNSignUp_Click(object sender, EventArgs e)
        {
            //Panel Visibility
            SignUp.Visible = true;
            TXTUser.Text = TXTUsername.Text;

            //Login Hide
            TXTUsername.Visible = false;
            LBLDetails.Text = "Please enter details below!";
            LBLUsername.Visible = false;
            LBLPassword.Visible = false;
            TXTPassword.Visible = false;
            BTNLogin.Visible = false;
            BTNSignUp.Visible = false;
            BTNLogin.Visible = false;


        }

        protected void LBTNBack_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private bool UserExist()
        {

            string user = TXTUser.Text;

           connect = new SqlConnection(connectionstr);

            //Check Username Exist
            command = new SqlCommand("SELECT Username FROM [User]", connect);
            connect.Open();
            reader = command.ExecuteReader();
            string tempUser = "";

            while (reader.Read())
            {
                tempUser = reader.GetValue(0).ToString();
                if(tempUser == user)
                {
                    UsernameExistanceValidator.IsValid = false;
                    return true;                                    
                }
                else
                {
                    UsernameExistanceValidator.IsValid = true;                    
                }
            }
            connect.Close();
            return false;
        }

        private bool EmailExist()
        {
            connect = new SqlConnection(connectionstr);

            //Check email Exist
            command = new SqlCommand("SELECT User_Email FROM [User]", connect);
            connect.Open();
            reader = command.ExecuteReader();
            string tempEmail = "";

            while (reader.Read())
            {
                tempEmail = reader.GetValue(0).ToString();
                if (tempEmail == TXTUser.Text)
                {
                    ValidEmailValidator.ErrorMessage.Replace("Invalid Email Address","Email address already in use");
                    ValidEmailValidator.IsValid = false;
                    return true;
                }
                else
                {
                    ValidEmailValidator.IsValid = true;
                }
            }
            connect.Close();
            return false;
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {

            connect = new SqlConnection(connectionstr);

            string user = TXTUser.Text;

            string username = "", email = "", contact = "", firstname = "", lastname = "", password = "";

            if(!UserExist())
            {
                username = TXTUser.Text;
            }

            if (!EmailExist())
            {
                email = TXTEmail.Text;
            }
            
            contact = TXTContact.Text;
            firstname = TXTFirst.Text;
            lastname = TXTLast.Text;

            if (TXTPassword1.Text == TXTPassword2.Text)
            {
                password = TXTPassword2.Text;
            }

            try
            {
                string insertQ = "INSERT INTO [User] VALUES(@Username, @User_Password, @User_Email, @User_Contact_Number, @User_First_Name, @User_Last_Name)";
                connect = new SqlConnection(connectionstr);
                connect.Open();
                command = new SqlCommand(insertQ, connect);

                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@User_Password", password);
                command.Parameters.AddWithValue("@User_Email", email);
                command.Parameters.AddWithValue("@User_Contact_Number", contact);
                command.Parameters.AddWithValue("@User_First_Name", firstname);
                command.Parameters.AddWithValue("@User_Last_Name", lastname);
                command.ExecuteNonQuery();
                connect.Close();
                TXTUsername.Text = TXTUser.Text;
                ClearForm();
            }
            catch
            {
                LBLSignUp.Text = "An error occured, please try again.";
            }

            
            

        }

        protected void TXTPassword2_TextChanged(object sender, EventArgs e)
        {
            if (TXTPassword1.Text == TXTPassword2.Text)
            {
                LBLPassValidate.Text = "";
            }
            else
            {
                LBLPassValidate.Text = "Passwords do not match";
            }
        }
    }
}