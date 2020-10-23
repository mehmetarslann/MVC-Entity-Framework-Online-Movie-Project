using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

namespace Proje_Odev
{
    public partial class Kaydet : System.Web.UI.Page
    {
        DBaglanti bg = new DBaglanti();//Sınıftan nesne türettik.
        protected void Page_Load(object sender, EventArgs e)
        {

            lblAd.Text = Session["ad"].ToString();
            lblSoyad.Text = Session["soyad"].ToString();
            lblEmail.Text = Session["email"].ToString();
            lblTel.Text = Session["telefon"].ToString();
            lblAdres.Text = Session["adres"].ToString();
            lblCinsiyet.Text = Session["cinsiyet"].ToString();
            lblUlke.Text = Session["ulke"].ToString();
            lblDurum.Text = Session["durum"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string isim = lblAd.Text;
            string soyisim = lblSoyad.Text;
            string email = lblEmail.Text;
            string telefon = lblTel.Text;
            string adres = lblAdres.Text;
            string cinsiyet = lblCinsiyet.Text;
            string durum = lblDurum.Text;
            string ulke = lblUlke.Text;
            int rows = bg.idu("insert into Users (user_ad,user_soyad,user_email,user_telefon,user_adres,user_cinsiyet,user_durum,user_ulke) Values ('" + isim + "','" + soyisim + "','" + email + "','" + telefon + "','" + adres + "','" + cinsiyet + "','" + durum + "','" + ulke + "')");
            Response.Redirect("Veriler.aspx");
        }
    }
}