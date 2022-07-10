<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CategoryAdminDelete.aspx.cs" Inherits="YemekTarifleri.CategoryAdminDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6" colspan="2"><strong>Kategori Güncelle</strong></td>
        </tr>
        <tr>
            <td>Kategori Adı:</td>
            <td>
                <asp:TextBox ID="TxtCategoryName" runat="server" Height="25px" Width="318px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adet:</td>
            <td>
                <asp:TextBox ID="TxtCategoryCount" runat="server" Height="25px" Width="318px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="BtnKategoriDelete" runat="server" CssClass="margin-btn" Height="50px" OnClick="BtnKategoriUpdate_Click" Text="Sil" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>
