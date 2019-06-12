<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteComplaint.aspx.cs" Inherits="FinalProject2.DeleteComplaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <h3>Let the user know why his complaint was deleted.</h3>
        <table id="msgtable">
       <tr>
           <td><asp:Label runat="server" Text="Message"></asp:Label>
       </td>
           <td> <asp:TextBox runat="server" ID="cmp" Width="200" Height="150" ></asp:TextBox></td>

           <td><asp:RequiredFieldValidator runat="server" ID="reqmsg" ErrorMessage="Email is Required" ControlToValidate="cmp" ForeColor="White" Display="Dynamic"></asp:RequiredFieldValidator></td>


       </tr> 
            <tr>
                
                <td><asp:Button runat="server" Text="Confirm" ID="delete" OnClick="delete_Click"></asp:Button></td>

            </tr>

            
            </table>
    </div>
    </form>
</body>
</html>
