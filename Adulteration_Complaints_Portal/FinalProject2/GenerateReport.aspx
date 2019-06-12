<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateReport.aspx.cs" Inherits="FinalProject2.GenerateReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate Report</title>
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
    <form runat="server">
        <h1 id="complaintitle">Report</h1>
        <div class="table-responsive">
        <table class="table" id="reporttable">

            <tr>
                <td>Decision</td>
                <td><asp:DropDownList runat="server" ID="decision">
                    <asp:ListItem>Guilty</asp:ListItem>
                    <asp:ListItem>Not Guilty</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList></td>

            </tr>
            <tr>
                <td>Details</td>
                <td><asp:TextBox runat="server" ID="reportdetails" TextMode="MultiLine" height="150px" Width="400px"></asp:TextBox></td>

            </tr>
            <tr>
                <td></td>
                <td><asp:Button runat="server" Text="Save" ID="savereport" OnClick="savereport_Click"></asp:Button></td>

            </tr>

        </table>

            </div>



    </form>
</body>
</html>
