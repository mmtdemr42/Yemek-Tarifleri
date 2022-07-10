<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumlarAdmin.aspx.cs" Inherits="YemekTarifleri.YorumlarAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style12 {
            width: 67px;
        }

        .auto-style11 {
            width: 50px;
        }

        .auto-style8 {
            width: 1550px;
        }

        .auto-style7 {
            width: 204px;
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Gray">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="BtnOn" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn_Click"/>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="BtnOff" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff_Click" />
                </td>
                <td class="auto-style2">&nbsp;Onaylanan Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDeleteAdmin.aspx?YemekId=<%# Eval("YemekId") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="YorumDetayAdmin.aspx?YorumId=<%# Eval("YorumId") %>">
                                <asp:Image ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/Assets/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="Gray">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style2">&nbsp;Onaylanmayan Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDeleteAdmin.aspx?YemekId=<%# Eval("YemekId") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="YorumDetayAdmin.aspx?YorumId=<%# Eval("YorumId") %>">
                                <asp:Image ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/Assets/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>
