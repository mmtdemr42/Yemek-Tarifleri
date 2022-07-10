<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleri.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
            text-align: center;
            padding-top: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style8"><strong>Hakkımızda</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Hakkimizda") %>' CssClass="auto-style7"></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="187px" ImageUrl="~/Assets/hakkimizda.jpg" Width="441px" />
            </td>
        </tr>
    </table>
</asp:Content>
