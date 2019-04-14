<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deposit.aspx.cs" Inherits="deposit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script type="text/javascript">

function redirect(button){
  var x = button.id;
  if(x==1)
  {
    var ans =  confirm("Press Ok to Cancel the Transaction");
    if (ans == true) {
      document.write();
      window.location.assign("transc.aspx")

    } else {
    
    return false
    }
  }

  if (x=='dep') {
    var ans =  confirm("Press Ok to Deposit the Amount");
    if (ans == true) {

      document.getElementById("dep").name="deposit";
       
      return false
     
    } else {
      document.getElementById("dep").name="nodeposit";

      return false
    }
  }
}

</script>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ATM System.</title>
    <link rel="stylesheet" href="depositstyle.css">
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
<form class="" action="" method="post">

      <div id="h">
          <center>
          <h1>Deposit money</h1>
        </center>
        </div>
<center>
        <table id="tab">

          <tr>
          <td>
            <i class="fas fa-rupee-sign"></i> &nbsp;
          <label for="cardno">deposit Amount</label>
          </td>
          <td></td>

          <td>
              <asp:TextBox ID="depo" runat="server"   placeholder="       1000/-"   required minlength="3" maxlength="5" onemptied="Please Enter the Amount!" oninvalid="Amount Must Be Value Between 3 to 5 Digits" title="Amount Must Be Entered In 3-5 Digits Numeric Format!"></asp:TextBox>
         
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
            <i class="fas fa-piggy-bank"></i> &nbsp;
          <label for="account">Account</label>
          </td>
          <td></td>
          <td id="radio">
            <fieldset>

                <label for=""><input style="padding:0 !important;" type="radio" name="gender" value="male"/> Saving</label>  <br>
                <label  for=""><input style="padding:0 !important;" type="radio" name="gender" value="female"/> Current </label> <br>
              </fieldset>

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
            <button type="button" onclick="redirect(this)" id="1" name="cancel">Cancel Transaction &nbsp;<i class="far fa-times-circle"></i></button>
            </td>
              <td></td>
            <td style="float:right; margin-right:160px;">
                <asp:Button ID="submit" runat="server" style="margin-left:-25px;" Width="365%" Text="Deposit" onclick="submit_Click" cssid="dep" name=""></asp:Button>
              
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
    <footer>
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
