<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Satislar.aspx.cs" Inherits="UrunTakipSitesi.Satislar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form runat="server">
        <table class="table table-bordered">
        <tr>
            <th>SATIŞ İD</th>
            <th>ÜRÜN ADI</th>
            <th>PERSONEL</th>
            <th>MÜŞTERİ</th>
            <th>FİYAT</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Satisid") %></td>
                    <td><%# Eval("UrunAd") %></td>
                    <td><%# Eval("PersonelAdSoyad") %></td>
                    <td><%# Eval("Musteri") %></td>
                    <td><%# Eval("Fiyat") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="SatisYeni.aspx" class="btn btn-info">Yeni Satış</a>
    </form>

</asp:Content>
