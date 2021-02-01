<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="UrunTakipSitesi.KategoriEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TxtAd" runat="server" Placeholder="Kategori Adı" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-primary" Text="Kategori Ekle" OnClick="BtnEkle_Click" />
        </div>
    </form>

</asp:Content>
