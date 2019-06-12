<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FinalProject2.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
     <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Stylesheet/style.css" rel="stylesheet" />
</head>
<body>
      
      <div class="container-fluid">
    <div id="first">
    <img src="Images/logo.jpg" id="logo" class="img-responsive" alt="logo"/>
       <pre id="title">
Adulteration
Complaints
Portal
</pre>

          <asp:HyperLink id="Backlink" runat="server" Text="Logout" NavigateUrl="~/Logout.aspx"></asp:HyperLink>
         <asp:HyperLink id="pagelink" runat="server" Text="Complain" NavigateUrl="~/UserComplaints.aspx"></asp:HyperLink>
        <asp:HyperLink id="message" runat="server" Text="Notification" NavigateUrl="~/AdminMessage.aspx"></asp:HyperLink>
         <asp:HyperLink id="log" runat="server" Text="Crime Log" NavigateUrl="~/Crime_log.aspx"></asp:HyperLink>
       
       
        </div>
 
    
   
        <h1 id="signuphead">Profile</h1>
         
 </div>
    <form id="form1" runat="server">
    <div class="table-responsive">
        <table class="table" id="profiletable">
            <tr>
                <td>Name</td>
                <td><asp:Label runat="server" Text="Label" ID="Name"></asp:Label></td>

                </tr>
            <tr>
                <td>Email</td>
                <td><asp:Label runat="server" Text="Label" ID="Email"></asp:Label></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td><asp:Label runat="server" Text="Label" ID="Mobile"></asp:Label></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><asp:Label runat="server" Text="Label" ID="Username"></asp:Label></td>
            </tr>

        </table>

        <h2 id="complainheading">My complaints</h2>

        <asp:GridView runat="server" ID="complaints" Width="400px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ComplaintID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ComplaintID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ComplaintID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("ViewMyComplaints.aspx?ComplaintID={0}", Eval("ComplaintID")) %>' Target="_blank" Text="View"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Report">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# String.Format("ViewReport.aspx?ComplaintID={0}", Eval("ComplaintID")) %>' Target="_blank" Text="View Report"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>



    </div>
    
    
    </form>
       
</body>
</html>
