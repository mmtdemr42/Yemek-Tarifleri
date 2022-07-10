<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifDetayAdmin.aspx.cs" Inherits="YemekTarifleri.TarifDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
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
        <td class="auto-style5">
            <asp:Button ID="BtnTarifOnayla" runat="server" Height="40px"  Text="Onayla" Width="100px" OnClick="BtnTarifOnayla_Click" />
        </td>
    </tr>
</table>
</asp:Content>
