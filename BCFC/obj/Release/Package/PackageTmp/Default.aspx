<%@ Page Title="Bad Costumes for a Good Cause" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BCFC._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <br />
                <h2>This is probably a bad idea.</h2><br />
                <h2>You are going to be really glad you did it. </h2>
            </hgroup>
            
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <ol class="round">
        <li>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Chicken_Rider.jpg" />
        </li>
        <br />
    <asp:Button ID="Button1" runat="server" Text="Support some brave soul you know." OnClick="Button1_Click1" />
    <asp:Button ID="Button2" runat="server" Text="Commit yourself and make a difference." OnClick="Button2_Click" />
        
        
        
        
    </ol>
</asp:Content>

