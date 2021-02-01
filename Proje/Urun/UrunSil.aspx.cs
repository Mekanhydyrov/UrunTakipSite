using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class UrunSil : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Urunid"]);
            var deger = dt.TblUrunler.Find(id);
            deger.Durum = false;
            dt.SaveChanges();
            Response.Redirect("Urunler.aspx");
        }
    }
}