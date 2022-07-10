<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifleri.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 328px;
        }
        .auto-style9 {
            width: 328px;
            text-align: center;
        }
    .auto-style10 {
        width: 178px;
    }
    .auto-style11 {
        font-size: x-large;
        text-align: center;
        padding-top:10px;
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
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="BtnMesajGonder" runat="server" Height="50px" OnClick="BtnMesajGonder_Click" Text="Mesaj Gönder" Width="119px" />
            </td>
        </tr>
    </table>
</asp:Content>
