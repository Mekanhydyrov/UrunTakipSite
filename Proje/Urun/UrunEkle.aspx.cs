using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                var deger = (from x in dt.TblKategori select new { x.Kategoriid, x.KategoriAd }).ToList();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = deger;
                DropDownList1.DataBind();
            }
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            TblUrunler x = new TblUrunler();
            x.UrunAd = TxtAd.Text;
            x.UrunMarka = TxtMarka.Text;
            x.UrunKategori =byte.Parse(DropDownList1.SelectedValue);
            x.UrunFiyat =decimal.Parse(TxtFiyat.Text);
            x.UrunStok =short.Parse(TxtStok.Text);
            dt.TblUrunler.Add(x);
            dt.SaveChanges();
            Response.Redirect("Urunler.aspx");
        }
    }
}