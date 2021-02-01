using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
                Txtid.Text = id.ToString();
                var deger = dt.TblKategori.Find(id);
                TxtAd.Text = deger.KategoriAd;
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            var deger = dt.TblKategori.Find(id);
            deger.KategoriAd = TxtAd.Text;
            dt.SaveChanges();
            Response.Redirect("Kategoriler.aspx");
        }
    }
}