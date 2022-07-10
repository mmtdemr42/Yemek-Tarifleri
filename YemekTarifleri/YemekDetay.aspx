<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleri.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style10 {
            font-size: xx-small;
        }
        .auto-style11 {
            font-size: x-small;
        }
        .auto-style12 {
            width: 100%;
            height: 128px;
        }
        .auto-style13 {
            font-size: medium;
        }
        .auto-style14 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server" Width="435px">
        <ItemTemplate>
            <table class="auto-style12">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>' CssClass="auto-style13"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style11">Tarih:</span>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: 10px; border-bottom-color: #FFFFFF">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div style="background-color:white; height:30px; font-size:25px; font-weight:bold;">  Yorum Yapma Paneli </div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style4">
                <tr>
                    <td>Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="TxtAdSoyad" runat="server" Width="340px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>E-Mail:</td>
                    <td>
                        <asp:TextBox ID="TxtEMail" runat="server" Width="340px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Yorum: </td>
                    <td>
                        <asp:TextBox ID="TxtYorumIcerik" runat="server" Height="100px" Width="340px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Button  ID="BtnYorumAdd" runat="server" Text="Yorum Ekle" Width="196px" BorderColor="#99CCFF" CssClass="margin-btn" Height="50px" OnClick="BtnYorumAdd_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
  
</asp:Content>
