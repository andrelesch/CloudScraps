<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="CloudScraps.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 480px;
        }
    </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style1">
    
        <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/Images/Plain Orange copy.png" Width="124px" />
&nbsp; <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="40pt" Font-Underline="True" Text="CloudScraps" ForeColor="White"></asp:Label>
        
            &nbsp;&nbsp;
            <br />
            <asp:Label ID="LBLUsername" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Gray" Text="@username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="LBLProfile" runat="server" ForeColor="Gray" Text="Personal Profile"></asp:Label>
            <br />
            <asp:Label ID="LBLUpload" runat="server" ForeColor="Gray" Text="Upload Image"></asp:Label>
            <br />
            <asp:Label ID="LBLSignOut" runat="server" ForeColor="Gray" Text="Sign Out"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LBLShred" runat="server" Font-Bold="True" Font-Size="20pt" Font-Underline="True" ForeColor="Gray" Text="Shared With Me"></asp:Label>
            <br />
            <br />
            <asp:Image ID="IMG1" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG2" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG3" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG4" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
            <br />
            <br />
            <asp:Image ID="IMG5" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG6" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG7" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG8" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
            <br />
            <br />
            <asp:Image ID="IMG9" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG10" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG11" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMG12" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
        </div>
    </form>
</body>
</html>
