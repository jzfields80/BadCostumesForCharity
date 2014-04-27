<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contribution.aspx.cs" Inherits="BCFC.Contribution" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    </form><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
    Got it!
    You want this guy
    <br/>
    <asp:Image ID="ImageThisGuy" runat="server" ImageUrl="~/Images/thisguy.jpg" Width="133px" />
<br />
    to suffer this indignity. 
    <br />
            <asp:ImageButton ID="Image_Indignity" runat="server" ImageUrl="~/Images/badcostume1.jpg" Width="133px"  />
    <br />
    Great Choice!
    <br />
    Votes cost a dollar, but consider more, please!
    <br />
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="HWNFGY2XCJPUY">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

</asp:Content>
