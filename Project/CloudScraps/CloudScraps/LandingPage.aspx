<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="CloudScraps.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            }
        .UploadPanel {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
            text-align: center;
            width: 626px;
            height: 420px;
        }    
        .labelfix {
            text-align: right;
        }



        .auto-style2 {
            text-align: center;

        }     


    </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Images/Straight Orange copy.png" Width="487px" ImageAlign="Middle" />
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
            <asp:TextBox ID="TXTSearch" runat="server" BackColor="#5DE1E6" ForeColor="White" Height="30px" Width="528px"></asp:TextBox>
&nbsp;<asp:Button ID="btnSearch" runat="server" BackColor="#FDC162" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="37px" Text="Search" Width="169px" OnClick="btnSearch_Click" />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
                <div>
                </div>
            </asp:Panel>
        </div>
        <div class="auto-style2">
        <asp:Panel ID="PNLUpload" runat="server" CssClass="UploadPanel" BackColor="#E4ECF0" Visible="False">
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblUploadImage" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="True" ForeColor="Gray" Text="Upload Image"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblSelect" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Gray" Text="Please select a image file below!"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUploadField" runat="server" AllowMultiple="True" BackColor="#5BDDE1" ForeColor="Gray" Width="490px" />
            <br />
            <br />
            <asp:Label ID="lblItem" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Item Name:  " CssClass="labelfix" Width="140px"></asp:Label>
            <asp:TextBox ID="txtItemName" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White" Width="150px"></asp:TextBox>
            <br />
            <asp:Label ID="lblGeolocation" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Geolocation:  " CssClass="labelfix" Width="140px"></asp:Label>
            <asp:TextBox ID="txtGeo" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White" Width="150px"></asp:TextBox>
            <br />
            <asp:Label ID="lblTags" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Gray" Text="Tags:  " CssClass="labelfix" Width="140px"></asp:Label>
            <asp:TextBox ID="txtTags" runat="server" BackColor="#5DE1E6" Font-Bold="True" ForeColor="White" Width="150px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="btbUpload" runat="server" BackColor="#FDC162" Font-Bold="True" Font-Size="12pt" Font-Underline="False" ForeColor="White" Height="41px" Text="Upload" Width="281px" OnClick="btbUpload_Click" />
            <br />
            <br />
            <asp:Label ID="LBLUploadStatus" runat="server"></asp:Label>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
