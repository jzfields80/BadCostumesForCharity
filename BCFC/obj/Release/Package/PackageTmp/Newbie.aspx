<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Newbie.aspx.cs" Inherits="BCFC.Newbie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script>

    FB.init({
        appId: '453681614777797',
        status: true, // check login status
        cookie: true, // enable cookies to allow the server to access the session
        xfbml: true  // parse XFBML
    });
       FB.getLoginStatus(function (response) {
            if (response.status === 'connected') {
                // the user is logged in and has authenticated your
                // app, and response.authResponse supplies
                // the user's ID, a valid access token, a signed
                // request, and the time the access token 
                // and signed request each expire
                var uid = response.authResponse.userID;
                var accessToken = response.authResponse.accessToken;
                console.log(" logged in");
            } else if (response.status === 'not_authorized') {
                console.log("not logged in to app");
                // the user is logged in to Facebook, 
                // but has not authenticated your app
            } else {
                console.log("not logged in ");
                // the user isn't logged in to Facebook.
            }
        });

        FB.api('/me', function (response) {
           
        console.log(response.name);
        document.getElementById('MainContent_TextBoxName').textContent = response.name;
    });
</script>
    

    Hello Brave Soul. You've made the right choice. 
    <br />
    <div class="fb-login-button" data-max-rows="1" data-size="medium" data-show-faces="false" data-auto-logout-link="false"></div>
    <br />
    We've got your name as
    <br />
    <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
    <br />
    Now, let's identify your charity.
    <br />
    <asp:TextBox ID="TextBoxCharity" runat="server"></asp:TextBox>
    <br />
    Tell us about your motivation. We will use this under your profile.
    <br />
    <asp:TextBox ID="TextBoxMotiviation"  TextMode="multiline" runat="server" Height="103px" Width="459px"></asp:TextBox>
    <br />
    <table __designer:mapid="16b">
<tr __designer:mapid="16c">
    Upload your profile photo
   <td __designer:mapid="16d">  <asp:FileUpload ID="fileImage" runat="server" />     </td>
   <td __designer:mapid="16f">       &nbsp;</td>
   <td __designer:mapid="171">
     <asp:RegularExpressionValidator ID="RevImg" runat="server" ControlToValidate="fileImage"
         ErrorMessage="Invalid File!(only  .gif, .jpg, .jpeg Files are supported)"
           ValidationExpression="^.+(.jpg|.JPG|.gif|.GIF|.jpeg|JPEG)$" ForeColor="Red"></asp:RegularExpressionValidator>
         </td>
       <td __designer:mapid="173">
  <asp:Image ID="imgPhoto" runat="server" Height="165px" Width="165px"  Visible="false"
      style="margin-left: 0px" />
         </td>
     </tr>
 </table>
    <br />
    <br />

    <asp:Button ID="Button1" runat="server" Text="Okay, I'm In" OnClick="Button1_Click" />
    
    <asp:CheckBox ID="CheckBoxShareThis" runat="server" Checked="True" Text="let's share this! " />
  
  
</asp:Content>
