<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReport.aspx.cs" Inherits="FinalProject2.ViewReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
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
         
        
        </div>

         
 </div>
    <h1 id="signuphead">Report</h1>

     <div class="table-responsive">
        <table class="table" id="profiletable">
            
            <tr>
                <td>Decision</td>
                <td><asp:Label runat="server" Text="Label" ID="dec"></asp:Label></td>
            </tr>
            <tr>
                <td>Details</td>
                <td><asp:Label runat="server" Text="Label" ID="det"></asp:Label></td>
            </tr>
          

        </table>
</body>
</html>
