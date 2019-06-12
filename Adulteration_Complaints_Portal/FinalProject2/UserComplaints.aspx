<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserComplaints.aspx.cs" Inherits="FinalProject2.UserComplaints" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adulteration Complaints Portal</title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Stylesheet/style.css" rel="stylesheet" />

   

</head>
<body bgcolor="white">

    
   <div class="container-fluid">
    <div id="first">
    <img src="Images/logo.jpg" id="logo" class="img-responsive" alt="logo"/>
       <pre id="title">
Adulteration
Complaints
Portal
</pre>
         <asp:HyperLink id="Backlink" runat="server" Text="Logout" NavigateUrl="~/Logout.aspx"></asp:HyperLink>
         <asp:HyperLink id="pagelink" runat="server" Text="Profile" NavigateUrl="~/Profile.aspx"></asp:HyperLink>
        <asp:HyperLink id="message" runat="server" Text="Notification" NavigateUrl="~/AdminMessage.aspx"></asp:HyperLink>
         <asp:HyperLink id="log" runat="server" Text="Crime Log" NavigateUrl="~/Crime_log.aspx"></asp:HyperLink>
        
       
        </div>

         
 </div>
    <form runat="server">
        <div class="form-group">
            <div class="container">
                <div id="complainform">
                <h1 id="complaintitle">Complain</h1>
                <div class="table-responsive">
                    <table class="table" id="complaintable">
                        <tr>
                            
                            <td>Area</td>
                            <td><asp:DropDownList runat="server" ID="selectarea">
                                <asp:ListItem>Dhanmondi</asp:ListItem>
                                <asp:ListItem>Mohammadpur</asp:ListItem>
                                <asp:ListItem>Sobhanbag</asp:ListItem>
                                <asp:ListItem>Motijheel</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                
                                </asp:DropDownList></td>

                        </tr>

                         <tr>
                            <td>Category</td>
                            <td><asp:DropDownList runat="server" ID="selectcat">
                                <asp:ListItem>Food</asp:ListItem>
                                <asp:ListItem>Cosmetics</asp:ListItem>
                                <asp:ListItem>Drugs</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList></td>
                            </tr>
                        <tr>
                            <td>Complaint</td>
                            <td><asp:Textbox runat="server" ID="complaintbody" TextMode="MultiLine" Height="150px" Width="400px"></asp:Textbox></td>
                            <td><asp:RequiredFieldValidator runat="server" ID="reqcom" ControlToValidate="complaintbody" ErrorMessage="Required"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>Upload Image</td>
                            <td><asp:FileUpload runat="server" ID="file"></asp:FileUpload></td>
                        </tr>
                        <tr>
                            <td><asp:Button runat="server" Text="Save" ID="save_btn" OnClick="save_btn_Click"></asp:Button></td>
                        </tr>

                        <tr>
                            
                        </tr>
                           
                        
                    </table>

                            


                    </div>

                </div>


            </div>
    
    
            </div>
        </form>

    
</body>
</html>
