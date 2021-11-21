<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile Page.aspx.cs" Inherits="CloudScraps.Pages.Profile_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 350px;
        }
        </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Images/Straight Orange copy.png" Width="424px" />
&nbsp; 
        
        &nbsp;&nbsp;&nbsp;
            <br />
            <asp:Image ID="Image2" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="120px" Width="120px" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LBLUsername" runat="server" Font-Size="20pt" Font-Underline="True" ForeColor="Gray" Height="110px" Text="@username"></asp:Label>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="LBLName" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Gray" Text="First Name"></asp:Label>
                &nbsp;
                <asp:Label ID="LBLSurname" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Gray" Text="Last Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DDUploadMenu" runat="server" AutoPostBack="True" BackColor="#FFBE59" Font-Bold="True" Font-Size="12pt" ForeColor="White" Width="150px">
                    <asp:ListItem Selected="True">Upload</asp:ListItem>
                    <asp:ListItem>Edit</asp:ListItem>
                    <asp:ListItem>Delete</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DDAlbumsManage" runat="server" AutoPostBack="True" BackColor="#FFBE59" Font-Bold="True" Font-Size="12pt" ForeColor="White" Width="150px">
                    <asp:ListItem Selected="True">Album</asp:ListItem>
                    <asp:ListItem>Edit</asp:ListItem>
                    <asp:ListItem>Delete</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DDAccountSettings" runat="server" AutoPostBack="True" BackColor="#FFBE59" Font-Bold="True" Font-Size="12pt" ForeColor="White" Width="150px">
                    <asp:ListItem>Details</asp:ListItem>
                    <asp:ListItem>Update Details</asp:ListItem>
                    <asp:ListItem>Sign Out</asp:ListItem>
                    <asp:ListItem>Delete Account</asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Image ID="IMGA" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGB" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGC" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGD" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
            <br />
            <br />
            <asp:Image ID="IMGE" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGF" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGG" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGH" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
            <br />
            <br />
            <asp:Image ID="IMGI" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGJ" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGK" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="IMGL" runat="server" BackColor="#CCCCCC" BorderColor="Gray" BorderStyle="Solid" Height="160px" Width="160px" />
        
        </div>
    </form>
</body>
</html>
