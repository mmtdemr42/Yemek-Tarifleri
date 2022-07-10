<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifleri.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style6 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5"><strong>Hakkımızda</strong></td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:TextBox ID="TxtHakkimizda" runat="server" Height="299px" TextMode="MultiLine" Width="430px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Button ID="BtnUpdateHakkimizda" runat="server" Height="50px" OnClick="BtnUpdateHakkimizda_Click" Text="Güncelle" Width="250px" />
        </td>
    </tr>
</table>
</asp:Content>
