 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CloudScraps._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            margin-right: 0px;
        }
        .auto-style4 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
            text-align: center;
        }
        .auto-style5 {
            margin-left: 8px;
        }
        .auto-style7 {
            width: 782px;
            height: 334px;
            text-align: right;
        }
        .auto-style8 {
            text-align: left;
        }
        .labelfix {
            text-align: right;
        }
        </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style3">
    <p style="font-family:add font; font-size:80px;font-style:normal;color:white" class="auto-style2">
    
            <asp:Image ID="Logo" runat="server" Height="174px" ImageUrl="~/Images/Straight Orange copy.png" Width="424px" ImageAlign="Middle" />
        
</p>
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LBLDetails" runat="server" ForeColor="#999999" Text="Please enter login details below!"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LBLUsername" runat="server" Font-Bold="True" ForeColor="#999999" Text="USERNAME:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTUsername" runat="server" BackColor="#65D1D6" ForeColor="White" Width="286px"></asp:TextBox>
        &nbsp;<asp:Label ID="LBLUserLoginVal" runat="server" ForeColor="Maroon" Width="140px"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LBLPassword" runat="server" Font-Bold="True" ForeColor="#999999" Text="PASSWORD:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTPassword" runat="server" BackColor="#65D1D6" ForeColor="White" Width="286px" TextMode="Password"></asp:TextBox>
        &nbsp;<asp:Label ID="LBLUserPassVal" runat="server" ForeColor="Maroon" Width="140px"></asp:Label>
        <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTNLogin" runat="server" BackColor="#E69F3C" Font-Bold="True" ForeColor="White" Text="Login" Width="130px" OnClick="BTNLogin_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTNSignUp" runat="server" BackColor="#E69F3C" Font-Bold="True" ForeColor="White" Text="Sign Up" Width="130px" OnClick="BTNSignUp_Click" />
            <br />
        </div>
        <div class="auto-style2">
        <asp:Panel ID="SignUp" runat="server" CssClass="auto-style4" Width="790px" BackColor="#E4ECF0">
            <div class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Panel ID="Panel1" runat="server" BackColor="#E4ECF0" Height="29px" style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LBLSignUp" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Gray" Text="PLEASE FILL IN ALL FIELDS BELOW:"></asp:Label>
                   
                </asp:Panel>
                <div class="auto-style8">
                    <div class="auto-style8">
                        <br />
                        <asp:Label ID="LBLUser" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="USERNAME:" Width="140px" class ="labelfix" ></asp:Label>
                        <asp:TextBox ID="TXTUser" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px" AutoPostBack="True"></asp:TextBox>
                        <asp:CustomValidator ID="UsernameExistanceValidator" runat="server" ErrorMessage="Invalid Username" ClientValidationFunction="UserExist" ControlToValidate="TXTUser" ForeColor="Maroon" ValidationGroup="SignUp"></asp:CustomValidator>
                        <br />
                        <asp:Label ID="LBLUser0" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="EMAIL:" Width="140px" class ="labelfix"></asp:Label>
                        <asp:TextBox ID="TXTEmail" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="ValidEmailValidator" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="TXTEmail" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="SignUp"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="LBLUser1" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="CONTACT NUMBER:" Width="132px" class ="labelfix"></asp:Label>
                        <asp:TextBox ID="TXTContact" runat="server" BackColor="#65D1D6" CssClass="auto-style5" ForeColor="White" Width="462px"></asp:TextBox>
                        <br />
                        <asp:Label ID="LBLUser2" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="FIRST NAME:" Width="140px" class ="labelfix"></asp:Label>
                        <asp:TextBox ID="TXTFirst" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="FirstnameRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="TXTFirst" ForeColor="Maroon" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="LBLUser3" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="LAST NAME:" Width="140px" class ="labelfix"></asp:Label>
                        <asp:TextBox ID="TXTLast" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="LastnameRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="TXTLast" ForeColor="Maroon" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="LBLUser4" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="PASSWORD:" Width="140px" class ="labelfix"></asp:Label>
                        <asp:TextBox ID="TXTPassword1" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="LBLPassValidate" runat="server" ForeColor="Maroon"></asp:Label>
                        <br />
                        <asp:Label ID="LBLUser5" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="CONFIRM PASSWORD:" Width="140px" class ="labelfix"></asp:Label>
                        <asp:TextBox ID="TXTPassword2" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px" TextMode="Password" OnTextChanged="TXTPassword2_TextChanged"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Panel ID="Panel3" runat="server">
                            <asp:LinkButton ID="LBTNBack" runat="server" ForeColor="#999999" OnClick="LBTNBack_Click">BACK TO LOGIN</asp:LinkButton>
                        </asp:Panel>
                        <br />
                    </div>
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Button ID="BTNSubmit" runat="server" BackColor="#E69F3C" Font-Bold="True" ForeColor="White" Height="31px" OnClick="BTNSubmit_Click" Text="SUBMIT" Width="665px" />
                    </asp:Panel>
                </div>
            </div>
        </asp:Panel>
        </div>
    </form>
    </body>
</html>
