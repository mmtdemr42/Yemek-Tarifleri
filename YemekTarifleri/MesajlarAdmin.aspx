<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajlarAdmin.aspx.cs" Inherits="YemekTarifleri.MEsajlarAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style12 {
            width: 67px;
        }

        .auto-style11 {
            width: 50px;
        }

        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            width: 349px;
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
                    <asp:Button ID="BtnOff" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff_Click"/>
                </td>
                <td class="auto-style2">&nbsp;Mesaj Listesi</td>
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
                                    <td class="auto-style14">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style13">
                                        <a href="MesajDetayAdmin.aspx?MesajId=<%#Eval("MesajId") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/read.png" Width="30px" /></a>
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
