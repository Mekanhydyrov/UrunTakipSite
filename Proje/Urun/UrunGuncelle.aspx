<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="UrunTakipSitesi.UrunGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <strong>
                <asp:Label ID="Label1" runat="server" Text="Ürün Adı"></asp:Label>
            </strong>
            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <strong>
                <asp:Label ID="Label2" runat="server" Text="Marka Adı"></asp:Label>
            </strong>
            <asp:TextBox ID="TxtMarka" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <strong>
                <asp:Label ID="Label3" runat="server" Text="Kategori"></asp:Label>
            </strong>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <strong>
                <asp:Label ID="Label4" runat="server" Text="Ürün Fiyatı"></asp:Label>
            </strong>
            <asp:TextBox ID="TxtFiyat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <strong>
                <asp:Label ID="Label5" runat="server" Text="Stok Sayısı"></asp:Label>
            </strong>
            <asp:TextBox ID="TxtStok" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn btn-primary" Text="Ürün Güncelle" OnClick="BtnGuncelle_Click" />
        </div>
    </form>

</asp:Content>
