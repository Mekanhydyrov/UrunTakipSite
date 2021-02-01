using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi.Urun
{
    public partial class Urunler : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // var deger = dt.TblUrunler.Where(x=>x.Durum==true).ToList();

            var deger = (from x in dt.TblUrunler
                         where x.Durum == true
                         select new
                         {
                             x.Urunid,
                             x.UrunAd,
                             x.UrunMarka,
                             x.TblKategori.KategoriAd,
                             x.UrunFiyat,
                             x.UrunStok
                         }).ToList();
            Repeater1.DataSource = deger;
            Repeater1.DataBind();

        }
    }
}