<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SatisYeni.aspx.cs" Inherits="UrunTakipSitesi.SatisYeni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server" class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ürün Seçin"></asp:Label>
            <asp:DropDownList id="DropDownList1" runat="server" cssClass="form-control"></asp:DropDownList>
        </div>
        <br />
         <div>
              <asp:Label ID="Label2" runat="server" Text="Müşteri Seçin"></asp:Label>
           <asp:DropDownList id="DropDownList2" runat="server" cssClass="form-control"></asp:DropDownList>
        </div>
        <br />
         <div>
              <asp:Label ID="Label3" runat="server" Text="Personel Seçin"></asp:Label>
             <asp:DropDownList id="DropDownList3" runat="server" cssClass="form-control"></asp:DropDownList>
        </div>
        <br />
         <div>
              <asp:Label ID="Label4" runat="server" Text="Fiyat"></asp:Label>
            <asp:TextBox ID="TxtFiyat" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="BtnEkle" runat="server" CssClass="btn btn-primary" Text="Satış Ekle" OnClick="BtnEkle_Click" />
        </div>
    </form>

</asp:Content>
