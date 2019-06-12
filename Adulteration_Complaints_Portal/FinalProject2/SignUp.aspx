<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FinalProject2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adulteration Complaints Portal</title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Stylesheet/style.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <div class="form-group">
    <div class="container-fluid">
    <div id="first">
    <img src="Images/logo.jpg" id="logo" class="img-responsive" alt="logo"/>
       <pre id="title">
Adulteration
Complaints
Portal
</pre>
        <asp:HyperLink id="Backlink" runat="server" Text="Back" NavigateUrl="~/FirstPage.aspx"></asp:HyperLink>
       
        </div>
  </div>

    <div class="container-fluid">
        <h1 id="signuphead">Sign-Up</h1>
         

   </div>
    
    <div class="table-responsive">
        <table class="table" id="signuptable">
            <tr>
                <td>Name</td>
                <td><asp:TextBox runat="server" ID="name"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="reqname" ErrorMessage="Name is Required" ControlToValidate="name" ForeColor="Black" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator runat="server" ID="regname" ErrorMessage="Not Valid" ForeColor="Black" Display="Dynamic" ControlToValidate="name" ValidationExpression="^[a-zA-Z ]{3,25}$" ></asp:RegularExpressionValidator></td>
           </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox runat="server" ID="email" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="reqemail" ErrorMessage="Email is Required" ControlToValidate="email" ForeColor="Black" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator runat="server" ID="regemail" ErrorMessage="Not Valid" ForeColor="Black" Display="Dynamic" ControlToValidate="email" ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" ></asp:RegularExpressionValidator></td>
           </tr>
             <tr>
                <td>Mobile</td>
                <td><asp:TextBox runat="server" ID="mob"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="reqmob" ErrorMessage="Mobile is Required" ControlToValidate="mob" ForeColor="Black" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator runat="server" ID="regmob" ErrorMessage="Not Valid" ForeColor="Black" Display="Dynamic" ControlToValidate="mob" ValidationExpression="^01[0-9]{9}$" ></asp:RegularExpressionValidator></td>
           </tr>
             <tr>
                <td>UserName</td>
                <td><asp:TextBox runat="server" ID="username"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="requsername" ErrorMessage="Username is Required" ControlToValidate="username" ForeColor="Black" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator runat="server" ID="regusername" ErrorMessage="Min length 6 Max length 10" ForeColor="Black" Display="Dynamic" ControlToValidate="username" ValidationExpression="^[a-zA-Z0-9@$%&£.\/\|_ ]{6,10}$" ></asp:RegularExpressionValidator></td>
           </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox runat="server" ID="pw" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="reqpw" ErrorMessage="Password is Required" ControlToValidate="pw" ForeColor="Black" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator runat="server" ID="regpq" ErrorMessage="6-8 ch, atleast one number and one special ch" ForeColor="Black" Display="Dynamic" ControlToValidate="pw" ValidationExpression="^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,8}$" ></asp:RegularExpressionValidator></td>
           </tr>
            <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox runat="server" ID="conpw" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator runat="server" ID="reqconpw" ErrorMessage="Retype password" ControlToValidate="conpw" ForeColor="Black" Display="Dynamic"></asp:RequiredFieldValidator></td>
                <td><asp:CompareValidator runat="server" ErrorMessage="Passwords do not match" ControlToValidate="conpw" Controltocompare="pw" Operator="Equal" Type="String"></asp:CompareValidator></td>
           </tr>

            <tr>
                <td>Upload NID</td>
                <td><asp:FileUpload runat="server" ID="file"></asp:FileUpload></td>
               <td> <asp:RequiredFieldValidator runat="server" ErrorMessage="Please upload NID" Forecolor="Black" ControlToValidate="file"></asp:RequiredFieldValidator></td>

            </tr>
            <tr>
                <td></td>
                <td><asp:Button runat="server" id="save" Text="Sign-up" OnClick="save_Click"></asp:Button></td>

            </tr>

            </table>

        

    </div>
            </div>
        </form>

    
    
</body>
</html>
