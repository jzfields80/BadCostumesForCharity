<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindUser.aspx.cs" Inherits="BCFC.FindUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


    <%--  <asp:ImageButton ID="Image1" runat="server" Height="100px" />
    <asp:ImageButton ID="Image2" runat="server" Height="100px" />
    <asp:ImageButton ID="Image3" runat="server" Height="100px" />
    <asp:ImageButton ID="Image4" runat="server" Height="100px"/>
    <asp:ImageButton ID="Image5" runat="server" Height="100px"/>
    
    &nbsp;<br />--%>
Tell us who you are looking for.
    <br />
    Last Name<asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
    <br />
    First Name<asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Find" OnClick="Button1_Click" />


    <asp:Label ID="Label1" runat="server" Text="User not found!" ForeColor="Red" Visible="False"></asp:Label>


</asp:Content>
