<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SiteParticipant.aspx.cs" Inherits="BCFC.SiteParticipant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/thisguy.jpg" Width="133px"/>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" Wrap="True" runat="server" multiline="true" Height="142px" Width="422px" TextMode="MultiLine"></asp:TextBox>
        

                </td>
            </tr>
        </table>
        <br />
        $ 600 raised for Massey Cancer So Far
        <br />
         Let's do our part. You can help by either voting for a costume, or choosing a new costume.
        Click on the costume that will bring you most joy and this guy the most public ridicule.
        <br />
       
            <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/Images/badcostume1.jpg" Width="133px" OnClick="Image2_Click" />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:ImageButton ID="Image3" runat="server" ImageUrl="~/Images/badcostume2.jpg" Width="133px" OnClick="Image3_Click" />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <asp:ImageButton ID="Image4" runat="server" ImageUrl="~/Images/badcostume4.jpg" Width="133px" OnClick="Image5_Click" />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <asp:ImageButton ID="Image5" runat="server" ImageUrl="~/Images/badcostume4.jpg" Width="133px" OnClick="Image5_Click" />
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            <br />
            <asp:ImageButton ID="Image6" runat="server" ImageUrl="~/Images/badcostume5.jpg" Width="133px" OnClick="Image6_Click" />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
        </li>
        <li><asp:Button ID="Button1" runat="server" Text="Or Suggest a different, more embarrasing Get Up" OnClick="Button1_Click" />
            </li>
     
    </body>
       
</asp:Content>
