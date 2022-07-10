<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleri.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }

        .auto-style9 {
            margin-left: 40px;
            height: 26px;
            width: 366px;
        }

        .auto-style10 {
            margin-left: 80px;
            width: 366px;
        }

        .auto-style12 {
            margin-left: 320px;
            height: 187px;
            width: 366px;
        }

        .auto-style13 {
            height: 175px;
            width: 382px;
            margin-left: 32px;
            margin-bottom: 36px;
        }

        .auto-style14 {
            margin-right: 0px;
        }

        .auto-style15 {
            width: 83%;
            height: 416px;
        }

        .auto-style16 {
            width: 366px;
        }

        .auto-style18 {
            margin-left: 40px;
            height: 26px;
            width: 366px;
            font-size: large;
        }

       
        .auto-style21 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style14" Width="16px">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td class="auto-style16"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9"" style="padding-right: 25px">
                        Malzemeler:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"><strong>TARİF:</strong></td>
                </tr>
                <tr>
                    <td class="auto-style10" style="padding-right: 15px">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <div class="auto-style13" style="margin-right: 30px; margin-top: 30px;">
                            <asp:Image ID="Image1" runat="server" Height="171px" Width="380px" ImageUrl='<%# Eval("YemekResim") %>' />
                            <table class="auto-style4">
                                <tr>
                                    <td class="auto-style21"><strong>Puan:</strong>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                        </td>
                                    </tr>
                                <tr>
                                    <td ><strong>Eklenme Tarih:</strong>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                        </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                                    
                
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

