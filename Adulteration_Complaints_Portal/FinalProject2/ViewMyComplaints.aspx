<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMyComplaints.aspx.cs" Inherits="FinalProject2.ViewMyComplaints" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Complaints</title>
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

        <h1 id="signuphead">My Complaint</h1>
        </div>

    <form id="form1" runat="server">
    <div class="table-responsive">
        <table class="table" id="cmtable">
            <tr>
                <td>ComplaintID</td>
                <td><asp:Label runat="server" Text="Label" ID="cidlabel"></asp:Label></td>

                </tr>
            <tr>
                <td>Area</td>
                <td><asp:Label runat="server" Text="Label" ID="carea"></asp:Label></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><asp:Label runat="server" Text="Label" ID="ccategory"></asp:Label></td>
            </tr>
            <tr>
                <td>Complaint</td>
                <td><asp:Label runat="server" Text="Label" ID="complaint"></asp:Label></td>
            </tr>
            <tr>
                <td>Evidence</td>
                <td><asp:Image runat="server" ID="img"></asp:Image></td>
            </tr>

        </table>
        </div>
        </form>
</body>
</html>
