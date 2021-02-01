using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["Urunid"]);
                var deger = dt.TblUrunler.Find(id);
                TxtAd.Text = deger.UrunAd;
                TxtMarka.Text = deger.UrunMarka.ToString();
                TxtFiyat.Text = deger.UrunFiyat.ToString();
                TxtStok.Text = deger.UrunStok.ToString();

                // DropDownListe ait Kategori getirmek
                DropDownList1.SelectedValue = deger.UrunKategori.ToString();

                //DropDownListe Verileri getirmek
                var veri = (from x in dt.TblKategori select new { x.Kategoriid, x.KategoriAd }).ToList();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = veri;
                DropDownList1.DataBind();

            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            //Güncelleme işlemi
            int id = Convert.ToInt32(Request.QueryString["Urunid"]);
            var deger = dt.TblUrunler.Find(id);
            deger.UrunAd = TxtAd.Text;
            deger.UrunMarka = TxtMarka.Text;
            deger.UrunFiyat =decimal.Parse(TxtFiyat.Text);
            deger.UrunStok =short.Parse(TxtStok.Text);
            deger.UrunKategori = byte.Parse(DropDownList1.SelectedValue.ToString());
            dt.SaveChanges();
            Response.Redirect("Urunler.aspx");
        }
    }
}