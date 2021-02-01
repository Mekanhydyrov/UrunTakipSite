<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="UrunTakipSitesi.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form runat="server" class="form-group">
        <div>
            <asp:TextBox ID="TxtAd" runat="server" Placeholder="Ürün Adı" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:TextBox ID="TxtMarka" runat="server" Placeholder="Marka Adı" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
             <asp:DropDownList id="DropDownList1" runat="server" cssClass="form-control"></asp:DropDownList>
        </div>
        <br />
         <div>
            <asp:TextBox ID="TxtFiyat" runat="server" Placeholder="Ürün Fiyatı" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:TextBox ID="TxtStok" runat="server" Placeholder="Stok Sayısı" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-primary" Text="Ürün Ekle" OnClick="BtnEkle_Click" />
        </div>
    </form>
</asp:Content>
