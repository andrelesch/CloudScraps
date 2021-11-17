<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CloudScraps._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body style="background-color:#e87e7e">
    <form id="form1" runat="server">
    <p style="font-family:add font; font-size:80px;font-style:normal;color:white">
    
        <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/Images/Plain Orange copy.png" Width="124px" />
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="40pt" Font-Underline="True" Text="CloudScraps"></asp:Label>
        
</p>
        <div class="auto-style1">
            <asp:Image ID="Logo" runat="server" Height="162px" ImageUrl="~/Images/Straight Orange copy.png" Width="432px" />
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Please enter login details below!"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LBLUsername" runat="server" Font-Bold="True" ForeColor="White" Text="USERNAME:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTUsername" runat="server" BackColor="#E66F6F" ForeColor="White" Width="286px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LBLPassword" runat="server" Font-Bold="True" ForeColor="White" Text="PASSWORD:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTPassword" runat="server" BackColor="#E66F6F" ForeColor="White" Width="286px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTNLogin" runat="server" BackColor="#E66F6F" Font-Bold="True" ForeColor="White" Text="Login" Width="144px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTNSignUp" runat="server" BackColor="#E66F6F" Font-Bold="True" ForeColor="White" Text="Sign Up" Width="144px" />
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </body>
</html>
