<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleri.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        margin-left: 80px;
    }
    .auto-style9 {
        text-align: center;
        margin-left: 80px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Tarif Ad:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtTarifAdi" runat="server" Width="290px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Malzemeler</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="290px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Tarif:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtTarif" runat="server" Height="150px" TextMode="MultiLine" Width="290px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Resim:</td>
        <td class="auto-style8">
            <asp:FileUpload ID="FileTarifImage" runat="server" Width="300px" />
        </td>
    </tr>
    <tr>
        <td>Tarif Öneren:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtTarifÖneren" runat="server" Width="290px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>E-Mail:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtEMail" runat="server" Width="290px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="BtnTarifOner" runat="server" Height="40px" OnClick="Button1_Click" Text="Ekle" Width="100px" />
        </td>
    </tr>
</table>
</asp:Content>
