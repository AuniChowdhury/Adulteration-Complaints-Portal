<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crime_log.aspx.cs" Inherits="FinalProject2.Crime_log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crime Log</title>
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
        <asp:HyperLink id="log" runat="server" Text="Profile" NavigateUrl="~/Profile.aspx"></asp:HyperLink>
       
       
        </div>
 
    
   
        <h1 id="signuphead">Crime Log</h1>
         
 </div>
    <form id="form1" runat="server">
    

        <asp:DropDownList ID="crime_area" runat="server">

            <asp:ListItem>Dhanmondi</asp:ListItem>
            <asp:ListItem>Mohammadpur</asp:ListItem>
            <asp:ListItem>Sobhanbag</asp:ListItem>
            <asp:ListItem>Motijheel</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="crime_search" runat="server" Text="Search" OnClick="crime_search_Click" />
    
        <div class="container">
             <div class="crimegrid">
        <asp:GridView ID="crimes" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Complaints">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Complaints") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Complaints") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Decision">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Decision") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Decision") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            </div>
            </div>
    

    </form>
       
</body>
</html>

