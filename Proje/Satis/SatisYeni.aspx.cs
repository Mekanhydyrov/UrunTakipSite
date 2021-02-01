using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class SatisYeni : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                // DropDownliste bilgileri getirme
                var urun = (from x in dt.TblUrunler
                            select new
                            {
                                x.Urunid,
                                x.UrunAd
                            }).ToList();
                DropDownList1.DataTextField = "UrunAd";
                DropDownList1.DataValueField = "Urunid";
                DropDownList1.DataSource = urun;
                DropDownList1.DataBind();

                // DropDownList Müşteri Kısmı
                var mus = (from x in dt.TblMusteri
                           select new
                           {
                               x.Musteriid,
                               AdSoyad = x.MusteriAd + " " + x.MusteriSoyad
                           }).ToList();
                DropDownList2.DataTextField = "AdSoyad";
                DropDownList2.DataValueField = "Musteriid";
                DropDownList2.DataSource = mus;
                DropDownList2.DataBind();

                // DropDownList personel Kısmı
                var per = (from x in dt.TblPersonel
                           select new
                           {
                               x.Personelid,
                               x.PersonelAdSoyad
                           }).ToList();
                DropDownList3.DataTextField = "PersonelAdSoyad";
                DropDownList3.DataValueField = "Personelid";
                DropDownList3.DataSource = per;
                DropDownList3.DataBind();
            }

        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            TblSatis deger = new TblSatis();
            deger.Urun = int.Parse(DropDownList1.SelectedValue);
            deger.Musteri = int.Parse(DropDownList2.SelectedValue);
            deger.Personel = byte.Parse(DropDownList3.SelectedValue);
            deger.Fiyat = decimal.Parse(TxtFiyat.Text);
            dt.TblSatis.Add(deger);
            dt.SaveChanges();
            Response.Redirect("Satislar.aspx");
        }
    }
}