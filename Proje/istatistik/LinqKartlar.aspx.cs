using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class LinqKartlar : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Urun sayısı
            Label1.Text = dt.TblUrunler.Count().ToString();
            //Müşeteri sayısı
            Label2.Text = dt.TblMusteri.Count().ToString();
            //Toplam Fiyat
            Label3.Text = dt.TblSatis.Sum(x => x.Fiyat).ToString();
            //Kategori sayısı
            Label4.Text = dt.TblKategori.Count().ToString();
            // Görünen Urunler
            Label5.Text = dt.TblUrunler.Count(x => x.Durum == true).ToString();
            // Gürunmeyen yani silinen urunler
            Label6.Text = dt.TblUrunler.Count(x => x.Durum == false).ToString();
            //en fazla stokta bulunan urun
            Label7.Text = (from x in dt.TblUrunler orderby x.UrunStok descending select x.UrunAd).FirstOrDefault();
            Label8.Text = dt.TblPersonel.Count().ToString();
        }
    }
}