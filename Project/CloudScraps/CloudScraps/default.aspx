<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CloudScraps._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            margin-right: 0px;
        }
        .auto-style4 {
            margin-left: 520px;
        }
        .auto-style5 {
            margin-left: 8px;
        }
        .auto-style6 {
            margin-left: 64px;
        }
    </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style3">
    <p style="font-family:add font; font-size:80px;font-style:normal;color:white" class="auto-style2">
    
        &nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/Images/Plain Orange copy.png" Width="124px" />
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="40pt" Font-Underline="True" Text="CloudScraps"></asp:Label>
        
</p>
        <div class="auto-style1">
            <asp:Image ID="Logo" runat="server" Height="162px" ImageUrl="~/Images/Straight Orange copy.png" Width="432px" />
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="#999999" Text="Please enter login details below!"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LBLUsername" runat="server" Font-Bold="True" ForeColor="#999999" Text="USERNAME:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTUsername" runat="server" BackColor="#65D1D6" ForeColor="White" Width="286px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LBLPassword" runat="server" Font-Bold="True" ForeColor="#999999" Text="PASSWORD:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTPassword" runat="server" BackColor="#65D1D6" ForeColor="White" Width="286px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTNLogin" runat="server" BackColor="#E69F3C" Font-Bold="True" ForeColor="White" Text="Login" Width="144px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTNSignUp" runat="server" BackColor="#E69F3C" Font-Bold="True" ForeColor="White" Text="Sign Up" Width="144px" />
            <br />
        </div>
        <asp:Panel ID="SignUp" runat="server" CssClass="auto-style4" Visible="False" Width="790px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Gray" Text="PLEASE FILL IN ALL FIELDS BELOW:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LBLUser" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="USERNAME:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTUSER" runat="server" BackColor="#65D1D6" ForeColor="White" Width="462px"></asp:TextBox>
            <br />
            <asp:Label ID="LBLUser0" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="EMAIL:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTEMAIL" runat="server" BackColor="#65D1D6" ForeColor="White" Width="460px"></asp:TextBox>
            <br />
            <asp:Label ID="LBLUser1" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="CONTACT NUMBER:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTCONTACT" runat="server" BackColor="#65D1D6" CssClass="auto-style5" ForeColor="White" Width="458px"></asp:TextBox>
            <br />
            <asp:Label ID="LBLUser2" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="FIRST NAME:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTFIRST" runat="server" BackColor="#65D1D6" ForeColor="White" Width="458px"></asp:TextBox>
            <br />
            <asp:Label ID="LBLUser3" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="LAST NAME:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTLAST" runat="server" BackColor="#65D1D6" ForeColor="White" Width="458px"></asp:TextBox>
            <br />
            <asp:Label ID="LBLUser4" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="PASSWORD:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTPASSWORD1" runat="server" BackColor="#65D1D6" ForeColor="White" Width="456px"></asp:TextBox>
            <br />
            <asp:Label ID="LBLUser5" runat="server" Font-Bold="False" Font-Size="10pt" ForeColor="Gray" Text="CONFIRM PASSWORD:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTPASSWORD2" runat="server" BackColor="#65D1D6" ForeColor="White" Width="456px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#E69F3C" CssClass="auto-style6" Font-Bold="True" ForeColor="White" Height="44px" Text="SUBMIT" Width="665px" />
        </asp:Panel>
    </form>
    </body>
</html>
