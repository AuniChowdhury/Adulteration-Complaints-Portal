<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managecomplaints.aspx.cs" Inherits="FinalProject2.ComplainImg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Complaints</title>
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
         <asp:HyperLink id="pagelink" runat="server" Text="Manage Users" NavigateUrl="~/AdminPanel.aspx"></asp:HyperLink>
       
       
       
        </div>
 
    
   
        <h1 id="signuphead">Pending Complaints</h1>

          <form runat="server">
          <asp:GridView ID="complaints" Width="500px"  runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
              <AlternatingRowStyle BackColor="#F7F7F7" />
              <Columns>
                  <asp:TemplateField HeaderText="ComplaintID">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ComplaintID") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Bind("ComplaintID") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="UserID">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Details">
                      <ItemTemplate>
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("ViewComplaints.aspx?ComplaintID={0}", Eval("ComplaintID")) %>' Target="_blank" Text="View"></asp:HyperLink>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Accept">
                      <ItemTemplate>
                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# String.Format("AcceptComplaint.aspx?ComplaintID={0}", Eval("ComplaintID")) %>'  Text="Accept"></asp:HyperLink>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Delete">
                      <ItemTemplate>
                          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# String.Format("DeleteComplaint.aspx?ComplaintID={0}", Eval("ComplaintID")) %>' Target="_blank" Text="delete"></asp:HyperLink>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
              <SortedAscendingCellStyle BackColor="#F4F4FD" />
              <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
              <SortedDescendingCellStyle BackColor="#D8D8F0" />
              <SortedDescendingHeaderStyle BackColor="#3E3277" />
              </asp:GridView>
              </form>
</body>
</html>
