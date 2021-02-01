<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="LinqKartlar.aspx.cs" Inherits="UrunTakipSitesi.LinqKartlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!DOCTYPE html>
    <html lang="zxx">
    <head>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
               function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme -->
        <link href="/Linq/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/Linq/css/component.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/Linq/css/export.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/Linq/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
        <link href="/Linq/css/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- font-awesome-icons -->
        <link href="/Linq/css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    </head>
    <body>
        <!-- banner -->
        <div class="clearfix"></div>

        <ul class="ca-menu">
            <li>
                <a href="/Urun/Urunler.aspx">
                    <i class="fa fa-pie-chart" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub">Ürün Sayımız</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="/Musteri/Musteriler.aspx">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub one">Müşteri Sayımız</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-money" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main two">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub two">Kasadaki Tutar</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="/Kategori/Kategoriler.aspx">
                    <i class="fa fa-apple" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main three">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub three">Kategori Sayımız</h3>
                    </div>
                </a>
            </li>

        </ul>

        <ul class="ca-menu">
            <li>
                <a href="/Urun/Urunler.aspx">
                    <i class="fa fa-list" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub">Aktif Ürün Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-language" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main one">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub one">Pasif Ürün Sayısı</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="/Urun/Urunler.aspx">
                    <i class="fa fa-database" aria-hidden="true"></i>
                    <div class="ca-content">
                        <h4 class="ca-main two">
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h4>
                        <h3 class="ca-sub two">En Fazla Stoklu Ürün</h3>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-sticky-note" aria-hidden="true"></i>
                    <div class="ca-content">

                        <h4 class="ca-main three">
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h4>

                        <h3 class="ca-sub three">Aktif Personel Sayısı</h3>
                    </div>
                </a>
            </li>
        </ul>
    </body>
    </html>

</asp:Content>
