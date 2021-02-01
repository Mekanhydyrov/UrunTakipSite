using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class Satislar : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            // var deger = dt.TblSatis.ToList();

            //tabloda sayılar yerine isimler gelmesi için
            var deger = (from x in dt.TblSatis
                         select new
                         {
                             x.Satisid,
                             x.TblUrunler.UrunAd,
                             x.TblPersonel.PersonelAdSoyad,
                             Musteri = x.TblMusteri.MusteriAd + " " + x.TblMusteri.MusteriSoyad,
                             x.Fiyat
                         }).ToList();
            Repeater1.DataSource = deger;
            Repeater1.DataBind();
        }
    }
}