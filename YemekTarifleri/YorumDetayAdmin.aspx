<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetayAdmin.aspx.cs" Inherits="YemekTarifleri.YorumDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7" colspan="2"><strong>Yorum Onaylama</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Height="25px" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>E-Mail:</td>
            <td>
                <asp:TextBox ID="TxtEMail" runat="server" Height="25px" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td>
                <asp:TextBox ID="TxtIcerik" runat="server" Height="150px" TextMode="MultiLine" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemek: </td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" Height="25px" Width="340px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2"><strong>
                <asp:Button ID="BtnOnay" runat="server" CssClass="auto-style6" Height="50px" Text="Onayla" Width="150px" OnClick="BtnOnay_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
