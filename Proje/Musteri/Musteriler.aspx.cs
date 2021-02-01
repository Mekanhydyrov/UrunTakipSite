using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakipSitesi.Entity;

namespace UrunTakipSitesi
{
    public partial class Musteriler : System.Web.UI.Page
    {
        UrunTakipEntities dt = new UrunTakipEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var deger = dt.TblMusteri.ToList();
            Repeater1.DataSource = deger;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TblMusteri x = new TblMusteri();
            x.MusteriAd = TextBox1.Text;
            x.MusteriSoyad = TextBox2.Text;
            dt.TblMusteri.Add(x);
            dt.SaveChanges();

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}