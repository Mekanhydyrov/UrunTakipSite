using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            TblKategori deger = new TblKategori();
            deger.KategoriAd = TxtAd.Text;
            dt.TblKategori.Add(deger);
            dt.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}