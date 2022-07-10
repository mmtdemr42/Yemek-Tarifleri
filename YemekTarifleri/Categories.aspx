<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="YemekTarifleri.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 65px;
        }
        .auto-style6 {
            width: 58px;
        }
        .auto-style7 {
            width: 65px;
            text-align: right;
        }
        .auto-style8 {
            width: 457px;
        }
        .auto-style9 {
            width: 448px;
        }
        .auto-style10 {
            height: 26px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server"  BackColor="Gray">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="BtnOn" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="BtnOff" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff_Click" />
                </td>
                <td class="auto-style2">&nbsp; Kategori Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="CategoryAdminDelete.aspx?CategoryId=<%# Eval("CategoryId") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="CategoryAdminUpdate.aspx?CategoryId=<%# Eval("CategoryId") %>"><asp:image ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/Assets/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="Gray">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="BtnOn0" runat="server" Height="40px" OnClick="BtnOn0_Click" Text="Aç" Width="60px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="BtnOff0" runat="server" Height="40px" OnClick="BtnOff0_Click" Text="Kapat" Width="60px" />
                    </td>
                    <td class="auto-style2">&nbsp; Kategori Ekleme</td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table>
                <tr>
                    <td class="auto-style9">
                        <table class="auto-style1">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Kategori Ad:</td>
                                <td>
                                    <asp:TextBox ID="TxtCategoryName" runat="server" Width="308px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Kategori İcon:</td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="TxtCategoryIcon" runat="server" Width="308px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10" colspan="2">
                                    <asp:Button ID="BtnEkle" runat="server" CssClass="margin-btn" Height="50px" Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>
