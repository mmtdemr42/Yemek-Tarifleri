<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifleri.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td><strong>
                        <a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong>
                        </a>

                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style7"><strong>Malzemeler:<br /></strong></span>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style7"><strong>Tarif:<br /></strong></span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><em>Puan:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em>&nbsp;Kategori:<asp:Label ID="Label7" runat="server" Text='<%# Eval("CategoryId") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; Tarih:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" style="border-bottom-style: groove; border-bottom-width: medium; border-bottom-color: #FFFFFF">
                        <asp:Image ID="Image2" runat="server" Height="218px" ImageUrl='<%# Eval("YemekResim") %>' Width="379px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
