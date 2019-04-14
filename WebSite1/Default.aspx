<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

      <section id="main">
      <div id="log">


        <div id="h">
          <center>
          <h1>login</h1>
        </center>
        </div>
<center>
        <table id="tab">
          <tr><td><input autocomplete="off"  name="hidden" type="text" style="display:none;"></td></tr>

          <tr>
          <td>
            <i class="far fa-credit-card" style="color:ac9766"></i> &nbsp;
          <label for="cardno"> Card Number</label>
          <td></td>
          </td>
          <td>
           <asp:TextBox ID="card" runat="server" type="integer" placeholder="      123456789012"   onfocus="javascript: this.removeAttribute('readonly')" required minlength="16" maxlength="16" pattern="[0-9]*" title="Card Number Contain Exactly 16 Digits Numeric Value" onemptied="Please Enter Card Number!"></asp:TextBox>
          
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

          <tr>
          <td>
            <i class="fas fa-key"></i> &nbsp;
          <label for="pin">Pin</label>
          </td>
          <td></td>
          <td>
            <asp:TextBox ID="pin" runat="server" type="password"  minlength="4" maxlength="4" autocomplete="off"  placeholder="       XXXX" required  onfocus=""  pattern="[0-9]*" title="Please Provide Your 4 Digits Numberic Pin For Authentication!" oninput=""></asp:TextBox>
       
        </td>

          </tr>
          <tr>


          </tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

          <tr>
            <td></td>
            <td></td>
            <td style="float:right; margin-right:70px;">
                <asp:Button ID="submit" runat="server" Text="login" style=" font-family:sans-serif;width:315%;" onclick="submit_Click"></asp:Button>
            </td>
          </tr>
        </table>
        <h3 style="text-decoration:underline; color:#fff; text-shadow: 1.5px 1.5px 5px #0c1f31;font-size: 1.45em;">
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </h3>
</center>


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
