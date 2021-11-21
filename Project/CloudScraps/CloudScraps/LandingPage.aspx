<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="CloudScraps.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left:350px;
            text-align: center;
        }
    </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Images/Straight Orange copy.png" Width="470px" ImageAlign="Middle" />
&nbsp; 
        
            &nbsp;&nbsp;
            <br />
            <asp:Label ID="LBLUsername" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="Gray" Text="@username"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:LinkButton ID="LBLProfile" runat="server" ForeColor="Gray" OnClick="LBLProfile_Click">Profile Page</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LBLUpload" runat="server" ForeColor="Gray" OnClick="LBLUpload_Click">Upload Images</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LBLSignOut" runat="server" ForeColor="Gray" OnClick="LBLSignOut_Click">Sign Out</asp:LinkButton>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#5DE1E6" ForeColor="White" Height="30px" Width="528px"></asp:TextBox>
&nbsp;<asp:Button ID="btnSearch" runat="server" BackColor="#FDC162" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="37px" Text="Search" Width="169px" />
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
