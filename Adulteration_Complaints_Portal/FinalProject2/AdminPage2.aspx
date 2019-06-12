<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage2.aspx.cs" Inherits="FinalProject2.AdminPage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page 2</title>

    <script>
        window.onbeforeunload=function ()
        {
            location.href = "ClearSession.aspx";

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <h1>Admin Page 2</h1>
    
    </div>
    </form>
</body>
</html>
