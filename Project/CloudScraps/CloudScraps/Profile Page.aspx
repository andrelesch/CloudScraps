﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile Page.aspx.cs" Inherits="CloudScraps.Pages.Profile_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
         .labelfix {
            text-align: left;
        }
    </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Images/Straight Orange copy.png" Width="487px" />
&nbsp; 
        
        &nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LBLUsername" runat="server" Font-Size="20pt" Font-Underline="True" ForeColor="Gray" Height="39px" Text="@username" Width="584px" class="labelfix"></asp:Label>
            <asp:LinkButton ID="LBNHome" runat="server" ForeColor="Gray" OnClick="LBNHome_Click">Back to Landing Page</asp:LinkButton>
            <br />
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
            <asp:Panel ID="PNLProfile" runat="server">
            </asp:Panel>
            <br />
        
        </div>
    </form>
</body>
</html>
