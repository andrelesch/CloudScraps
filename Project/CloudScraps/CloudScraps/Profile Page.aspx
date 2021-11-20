<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile Page.aspx.cs" Inherits="CloudScraps.Pages.Profile_Page" %>

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
        
        &nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" Width="324px">
                <asp:Image ID="Image2" runat="server" Height="122px" Width="120px" />
            </asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;
        
        </div>
    </form>
</body>
</html>
