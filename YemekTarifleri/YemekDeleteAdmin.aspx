﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDeleteAdmin.aspx.cs" Inherits="YemekTarifleri.YemekDeleteAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style9 {
            width: 199px;
        }

        .auto-style18 {
            width: 438px;
        }
    
        .auto-style16 {
            width: 319px;
        }
        .auto-style17 {
            height: 26px;
            width: 319px;
        }
        
        .auto-style10 {
            width: 198px;
            text-align: center;
        }

        .auto-style19 {
            margin-top: 5px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel4" runat="server">
        <table>
            <tr>
                <td class="auto-style9">
                    <table class="auto-style18">
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Yemek Ad:</td>
                            <td class="auto-style16">
                                <asp:TextBox ID="TxtYemekName" runat="server" Width="308px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Malzemeler: </td>
                            <td class="auto-style17">
                                <asp:TextBox ID="TxtMalzemeler" runat="server" Width="307px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Yemek Tarifi</td>
                            <td class="auto-style17">
                                <asp:TextBox ID="TxtYemekTarif" runat="server" Width="307px" TextMode="MultiLine" Height="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Kategori: </td>
                            <td class="auto-style17" id="DrpDownCategories0">
                                <asp:DropDownList ID="DrpDownCategories" runat="server" Height="50px" Width="309px">
                                    <asp:ListItem>Eval</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2"><strong>
                                <asp:Button ID="BtnDelete" runat="server" CssClass="auto-style19" Height="50px" Text="Sil" Width="428px" OnClick="BtnDelete_Click" />
                                </strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
