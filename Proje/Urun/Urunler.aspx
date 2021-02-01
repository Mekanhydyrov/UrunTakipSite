<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="UrunTakipSitesi.Urun.Urunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">
        <table class="table table-bordered">
        <tr>
            <th>URUN İD</th>
            <th>URUN AD</th>
            <th>MARKA</th>
            <th>KATEGORİ</th>
            <th>FİYAT</th>
            <th>STOK</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Urunid") %></td>
                    <td><%# Eval("UrunAd") %></td>
                    <td><%# Eval("UrunMarka") %></td>
                    <td><%# Eval("KategoriAd") %></td>
                    <td><%# Eval("UrunFiyat") %></td>
                    <td><%# Eval("UrunStok") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Urun/UrunSil.aspx?Urunid="+ Eval("Urunid")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/Urun/UrunGuncelle.aspx?Urunid="+Eval("Urunid") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="/Urun/UrunEkle.aspx" class="btn btn-info">Yeni Ürun</a>
    </form>
    

</asp:Content>
