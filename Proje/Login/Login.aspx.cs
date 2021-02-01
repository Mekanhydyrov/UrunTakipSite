using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi.Login
{
    public partial class Login : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var deger = from x in dt.TblAdmin where x.Kullanici == TxtKullaniciAd.Text && x.Sifre == TxtSifre.Text select x;
            if (deger.Any())
            {
                Response.Redirect("/istatistik/LinqKartlar.aspx");
            }
            else
            {
                Response.Write("Hatalı Giriş Yaptınız ");
            }
        }
    }
}