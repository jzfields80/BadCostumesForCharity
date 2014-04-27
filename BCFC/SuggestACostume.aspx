<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuggestACostume.aspx.cs" Inherits="BCFC.SuggestACostume" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     
    <br />
    Alright, let's do this. Suggest an outfit and we will notify the participant.
    <br? />
    <br /> 
    Should they be game, we will let you know.

   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
     <ContentTemplate>
    <table>
<tr>
   <td>  <asp:FileUpload ID="fileImage" runat="server" />     </td>
   <td>       <asp:Button ID="btnfileupload" runat="server" CausesValidation="false"  CssClass="form_button" OnClick="btnfileupload_Click"
            Text="Upload Image" />
          </td>
   <td>
     <asp:RegularExpressionValidator ID="RevImg" runat="server" ControlToValidate="fileImage"
         ErrorMessage="Invalid File!(only  .gif, .jpg, .jpeg Files are supported)"
           ValidationExpression="^.+(.jpg|.JPG|.gif|.GIF|.jpeg|JPEG)$" ForeColor="Red"></asp:RegularExpressionValidator>
         </td>
       <td>
  <asp:Image ID="imgPhoto" runat="server" Height="165px" Width="165px"  Visible="false"
      style="margin-left: 0px" />
         </td>
     </tr>
 </table>
    </ContentTemplate>
  
  <Triggers>
  <asp:PostBackTrigger ControlID="btnfileupload" />
   </Triggers>
  </asp:UpdatePanel>
</asp:Content>
