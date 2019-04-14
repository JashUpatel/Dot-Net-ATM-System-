<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pin.aspx.cs" Inherits="pin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script type="text/javascript">
   

   function redirect(button){
     var x = button.id;
     if(x==1)
     {
       var ans =  confirm("Press Ok to Cancel");
       if (ans == true) {
         document.write();
         window.location.assign("transc.aspx")
   
       } 
       else {

     return false
       }
     }
   
     if (x=='ch') {
       var ans =  confirm("Press Ok to Change your Pin");
       if (ans == true) {
         document.getElementById("ch").name="change";

   return false
       } else {
     
      document.getElementById("ch").name="nochange";

     return false
       }
     }
   }
   
       </script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ATM System.</title>
    <link rel="stylesheet" href="indexstyle.css">
    <link rel="stylesheet" href="all.css">
  
</head>
<body>
    <form id="form1" runat="server">
       <header>
        <div class="logo">
<i class="fa fa-university fa-5x" id="img" style="color:#ac9766; text-shadow:3px 3px 3px #fff;"></i>
        </div>
        <div class="brand">
          <h1>People's Bank</h1>
          <p>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp kyuki apna time aayega !</p>

        </div>
      </header>

      <section id="mainpin">
      <div id="log">
<form class="" action="" method="post">

        <div id="h">
          <center>
          <h1>Change Pin</h1>
        </center>
        </div>
<center>
        <table id="tab">

          <tr>
          <td id="td">
            <i class="fas fa-shield-alt"></i> &nbsp;
          <label for="pin">set new pin</label>
            </td>
          <td></td>

          <td>
           <asp:TextBox ID="spin" runat="server" type="password"  minlength="4" maxlength="4" autocomplete="off"  placeholder="       XXXX" required  onfocus=""  pattern="[0-9]*" title="Please Provide Your 4 Digits Numberic Pin For Authentication!" oninput=""></asp:TextBox>
       
          </td>
          </tr>

          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>

          <tr id="td">
          <td>
            <i class="fas fa-check-double"></i> &nbsp;
          <label for="pin">confirm Pin</label>
          </td>
          <td></td>
          <td>
           <asp:TextBox ID="cpin" runat="server" type="password"  minlength="4" maxlength="4" autocomplete="off"  placeholder="       XXXX" required  onfocus=""  pattern="[0-9]*" title="Please Provide Your 4 Digits Numberic Pin For Authentication!" oninput=""></asp:TextBox>
       
          </td>
          </tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

          <tr>
            <td style="" id="cancel">
            <button type="button" onclick="redirect(this)" id="1" name="submit">Cancel &nbsp;<i class="far fa-times-circle"></i></button>
            </td>
            <td></td>
            <td id="confirm" style="float:right; margin-right:70px;">
              <asp:Button ID="submit" runat="server" Text="Change" type="submit" Width="250%" onclick="submit_Click" cssid="ch" name=""></asp:Button>
              
            </td>
          </tr>
        </table>
        <h3 style="color:#fff;text-decoration:underline;text-shadow: 1.5px 1.5px 5px #0c1f31;font-size: 1.45em;">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </h3>
</center>

</form>
      </div>

    </section>
    <footer style="height:85px">
      <div id="foot">
      <center>
      <br>
        <p>&copy; 2019 people's bank</p>
        <p>all right Reserved</p>
      </center>
      </div>
    </footer>
    </form>
</body>
</html>
