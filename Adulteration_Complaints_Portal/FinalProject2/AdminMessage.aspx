<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMessage.aspx.cs" Inherits="FinalProject2.AdminMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notifications</title>
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
        <asp:HyperLink id="message" runat="server" Text="Profile" NavigateUrl="~/Profile.aspx"></asp:HyperLink>
         <asp:HyperLink id="log" runat="server" Text="Crime Log" NavigateUrl="~/Crime_log.aspx"></asp:HyperLink>
       
       
        </div>
 
    
   
        <h1 id="notihead">Message From Admin</h1>
         <form runat="server">
             <div class="table-responsive">
                 <table class="table" id="msgtable">
                     <tr>
         <td><asp:Label runat="server" ID="msg"></asp:Label></td>
                         <td><asp:Label runat="server" ID="date"></asp:Label></td>
                         </tr>
                     </table>
                 </div>
         </form>
 </div>
</body>
</html>
