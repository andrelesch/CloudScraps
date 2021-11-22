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
        .UploadPanel {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
            text-align: center;
        }
        .auto-style2 {
            position: absolute;
            top: 20%;
            left: 10%;
            transform: translateX(-50%) translateY(-50%);
            text-align: center;
            width: 624px;
            height: 538px;
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
        <asp:Panel ID="PNLUpload" runat="server" CssClass="auto-style2" BackColor="#E4ECF0">
            <br />
            <asp:Label ID="lblUploadImage" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="True" ForeColor="Gray" Text="Upload Image"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblSelect" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Gray" Text="Please select a image file below!"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadField" runat="server" AllowMultiple="True" BackColor="#5BDDE1" ForeColor="Gray" Width="490px" />
            <br />
            <br />
            <asp:Label ID="lblItem" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Item Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtItemName" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White"></asp:TextBox>
            <br />
            <asp:Label ID="lblGeolocation" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Geolocation"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtGeo" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White"></asp:TextBox>
            <br />
            <asp:Label ID="lblTags" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Tags"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTags" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White"></asp:TextBox>
            <br />
            <asp:Label ID="lblDate" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Capture Date"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDate" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btbUpload" runat="server" BackColor="#FDC162" Font-Bold="True" Font-Size="12pt" Font-Underline="False" ForeColor="White" Height="41px" Text="Upload" Width="281px" />
        </asp:Panel>
    </form>
</body>
</html>
