<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="UrunTakipSitesi.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="Txtid" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TxtAd" runat="server" Placeholder="Kategori Adı" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn btn-info" Text="Kategori Güncelle" OnClick="BtnGuncelle_Click" />
        </div>
    </form>

</asp:Content>
