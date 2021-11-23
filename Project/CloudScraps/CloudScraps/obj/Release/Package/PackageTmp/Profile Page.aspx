<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile Page.aspx.cs" Inherits="CloudScraps.Pages.Profile_Page" %>

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
         .labelfixR {
            text-align: right;
        }
    </style>
</head>
<body style="background-color:#e4ecf0">
    <form id="form1" runat="server">
        <div class="auto-style1">
    
            <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl="~/Images/Straight Orange copy.png" Width="487px" />
&nbsp; 
        
        &nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LBLUsername" runat="server" Font-Size="20pt" Font-Underline="True" ForeColor="Gray" Height="39px" Text="@username" Width="505px" class="labelfix"></asp:Label>
            <asp:LinkButton ID="LBNHome" runat="server" ForeColor="Gray" OnClick="LBNHome_Click">Back to Landing Page</asp:LinkButton>
            <br />
                <asp:Label ID="LBLName" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Gray" Text="First Name" CssClass="labelfix" Width="170px"></asp:Label>
                &nbsp;
                <asp:Label ID="LBLSurname" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Gray" Text="Last Name" CssClass="labelfix" Width="393px"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Panel ID="PNLProfile" runat="server">
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server">
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </asp:Panel>
            <br />
        
        </div>
    </form>
</body>
</html>
