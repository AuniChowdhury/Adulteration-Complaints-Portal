<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="FinalProject2.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adulteration Comlaints Portal</title>
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
        <div class="form-group">
            <div class="container">
                <div id="login">
                <h1 id="logintitle">Login</h1>
                <div class="table-responsive">
                    <table class="table" id="logintable">
                        <tr>
                            
                            <td>Username</td>
                            <td><asp:TextBox ID="loginusername" runat="server"></asp:TextBox></td>

                        </tr>

                         <tr>
                            <td>Password</td>
                            <td><asp:TextBox ID="loginpw" runat="server" TextMode="Password" ></asp:TextBox></td>
                            </tr>
                        <tr>
                            <td><asp:Button ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click"/>
                             <td><asp:HyperLink runat="server" ID="reglink" Text="Registration" NavigateUrl="~/SignUp.aspx"></asp:HyperLink></td>
                        </tr>

                        
                           
                        
                    </table>

                            


                    </div>

                </div>


            </div>
    
    
            </div>
        </form>

    
        
   
</body>
</html>
