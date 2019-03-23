<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="yogasan.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loign</title>
  
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <script src="js/jquery.validate.js"></script>
   
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

    .bg-image {
        /* The image used */
        background-image: url("res/yog1.jpg");
        /* Add the blur effect */
        -webkit-filter: blur(8px);
        filter: blur(8px);
        /* Full height */
        height: 100%;
        /* Center and scale the image nicely */
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgb(25, 21, 21,0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 40%;
  padding: 20px;
  text-align: center;
  
}

<%--java script form validation--%>
</style>
          
        <script type="text/javascript">

            function valid() {
                var name, password;
                name = document.getElementById("TextBox1");
                password = document.getElementById("TextBox2");
                if (name.value == '' || password.value == '') {
                    alert("Enter all fields");
                    return false;
                }
                else {
                    return confirm("Do you wish to continue");
                }
            }

</script>           

        
</head>
<body>


     <div class="bg-image"></div>
    <form id="login" runat="server">
  

<div class="bg-text">
  <h1 style="text-align:center" class="align-content-xl-center">Login</h1>
  <br />
    
    <asp:Label ID="Label1" runat="server" Text="id" style="text-align:left"><strong>User</strong></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="pass" style="text-align:left; "><strong>Password</strong></asp:Label>&nbsp;
    &nbsp;<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
     <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login"  class="btn btn-primary btn-group-md" OnClientClick="javascript:return valid()" OnClick="Button1_Click" />
</div>
        
      

         
        
    </form>
</body>
</html>
