<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifAdmin.aspx.cs" Inherits="YemekTarifleri.TarifAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 22px;
        }

        .auto-style6 {
            margin-left: 0px;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style8 {
            width: 354px;
        }

        .auto-style9 {
            width: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Gray">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="BtnOn" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="BtnOff" runat="server" Height="40px" Text="Kapat" Width="60px" CssClass="auto-style6" OnClick="BtnOff_Click" />
                </td>
                <td class="auto-style2">Onaylı Tarif Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:DataList ID="DataList1" runat="server" Width="434px">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style7">
                                        <a href="TarifDetayAdmin.aspx?TarifId=<%#Eval("TarifId") %>">
                                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/git.png" Width="30px" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" BackColor="Gray">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style9">
                                <asp:Button ID="BtnOn0" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn0_Click" />
                            </td>
                            <td class="auto-style5">
                                <asp:Button ID="BtnOff0" runat="server" CssClass="auto-style6" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff0_Click" />
                            </td>
                            <td class="auto-style2">Onaysız Listesi</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel4" runat="server">
                    <asp:DataList ID="DataList2" runat="server" Width="434px">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style7">
                                        <a href="TarifDetayAdmin.aspx?TarifId=<%#Eval("TarifId") %>">
                                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Assets/git.png" Width="30px" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
