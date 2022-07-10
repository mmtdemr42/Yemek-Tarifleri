<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekEkleAdmin.aspx.cs" Inherits="YemekTarifleri.YemekEkleAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 204px;
            text-align: right;
        }

        .auto-style8 {
            width: 1550px;
        }

        .auto-style9 {
            width: 199px;
        }

        .auto-style10 {
            width: 198px;
            text-align: center;
        }

        .auto-style11 {
            width: 50px;
        }

        .auto-style12 {
            width: 64px;
        }

        .auto-style13 {
            width: 62px;
        }

        .auto-style14 {
            width: 61px;
        }

        .auto-style16 {
            width: 319px;
        }
        .auto-style17 {
            height: 26px;
            width: 319px;
        }
        .auto-style18 {
            width: 438px;
        }
        .auto-style19 {
            width: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Gray">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="BtnOn" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="BtnOff" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff_Click" />
                </td>
                <td class="auto-style2">&nbsp; Yemek Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="442px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDeleteAdmin.aspx?YemekId=<%# Eval("YemekId") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Assets/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekAdminUpdate.aspx?YemekId=<%# Eval("YemekId") %>">
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
                <td class="auto-style13">
                    <asp:Button ID="BtnOn0" runat="server" Height="40px" Text="Aç" Width="60px" OnClick="BtnOn0_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="BtnOff0" runat="server" Height="40px" Text="Kapat" Width="60px" OnClick="BtnOff0_Click" />
                </td>
                <td class="auto-style2">&nbsp; Yemek Ekleme</td>
            </tr>
        </table>
    </asp:Panel>
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
                            <td class="auto-style17" id="DrpDownCategories">
                                <asp:DropDownList ID="DrpDownCategories" runat="server" Height="50px" Width="309px">
                                    <asp:ListItem>Eval</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                          <tr>
                            <td class="auto-style4">Resim: </td>
                            <td class="auto-style17" id="DrpDownCategories">
                                <asp:FileUpload ID="FileImageYemek" runat="server" Width="313px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">
                                <asp:Button ID="BtnEkle" runat="server" CssClass="margin-btn" Height="50px" Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10" colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
