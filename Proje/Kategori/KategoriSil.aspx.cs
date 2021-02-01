using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["Kategoriid"]);
            var degSil = dt.TblKategori.Find(x);
            dt.TblKategori.Remove(degSil);
            dt.SaveChanges();

            Response.Redirect("Kategoriler.aspx");
        }
    }
}