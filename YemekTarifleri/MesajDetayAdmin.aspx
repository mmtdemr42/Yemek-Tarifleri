<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetayAdmin.aspx.cs" Inherits="YemekTarifleri.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style11 {
        font-size: x-large;
        text-align: center;
        padding-top:10px;
    }
    .auto-style10 {
        width: 178px;
    }
        .auto-style8 {
            width: 328px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style11" colspan="2">Mesaj Paneli</td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">Mesaj Gönderen: </td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtMesajGonderen" runat="server" Width="315px" CssClass="borderIletisim" Height="10px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Mesaj Konu:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtMesajKonu" runat="server" Width="315px" CssClass="borderIletisim"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Mesaj E-Mail</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtMesaEMail" runat="server" Width="315px" CssClass="borderIletisim"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Mesaj:</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtMesajIcerik" runat="server" Height="50px" TextMode="MultiLine" Width="315px" CssClass="borderIletisim"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>
