<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifleri.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style12 {
            width: 67px;
        }

        .auto-style11 {
            width: 50px;
        }

        .auto-style7 {
            width: 204px;
            text-align: right;
        }

        .auto-style13 {
            width: 1594px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Gray">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="BtnOn" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn_Click"  />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="BtnOff" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff_Click" />
                </td>
                <td class="auto-style2">&nbsp; Yemek Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="441px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekAdminUpdate.aspx?YemekId=<%# Eval("YemekId") %>"> <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>
