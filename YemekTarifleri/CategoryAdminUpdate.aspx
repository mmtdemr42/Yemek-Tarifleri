<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CategoryAdminUpdate.aspx.cs" Inherits="YemekTarifleri.CategoryUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            font-size: x-large;
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
            <td>Resim:</td>
            <td>
                <asp:FileUpload ID="FileImage" runat="server" Height="25px" Width="318px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="BtnKategoriUpdate" runat="server" CssClass="margin-btn" Height="50px" OnClick="BtnKategoriUpdate_Click" Text="Güncelle" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>
