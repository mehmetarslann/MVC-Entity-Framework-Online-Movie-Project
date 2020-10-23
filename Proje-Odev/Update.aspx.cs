using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Proje_Odev
{
    public partial class Update : System.Web.UI.Page
    {
        DBaglanti bg = new DBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(Session["id"]);
                SqlDataReader dr = bg.VeriGetir(id);

                while (dr.Read())
                {
                    txtAd.Text = dr[1].ToString();
                    txtSoyad.Text = dr[2].ToString();
                    txtEmail.Text = dr[3].ToString();
                    txtTel.Text = dr[4].ToString();
                    TxtAdres.Text = dr[5].ToString();
                    if (dr[6].ToString() == "Erkek")
                    {
                        rdErkek.Checked = true;

                    }
                    else
                    {
                        rdKadin.Checked = true;
                    }

                    string durum = dr[7].ToString();
                    //string durumm = "";
                    //lbltut.Text = dr[7].ToString(); Veritabanından gelen veri label'a yazıldı.

                    //Session.Add("durum_", durum);

                    string ulke_adi = dr[8].ToString();
                    DropDownList1.SelectedValue = ulke_adi;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string cinsiyet = "";

            if (rdErkek.Checked == true)
            {
                cinsiyet = rdErkek.Text;
            }
            if (rdKadin.Checked == true)
            {
                cinsiyet = rdKadin.Text;
            }
            int usid = Convert.ToInt32(Session["id"]);
            string durum_sonuc = lbltut.Text;
            bg.idu("Update Users SET user_ad = '" + txtAd.Text + "',user_soyad ='" + txtSoyad.Text + "',user_email ='" + txtEmail.Text + "',user_telefon ='" + txtTel.Text + "',user_adres ='" + TxtAdres.Text + "', user_cinsiyet ='" + cinsiyet + "', user_durum ='" + durum_sonuc + "', user_ulke ='" + DropDownList1.SelectedValue.ToString() + "' where user_id = '" + usid + "'");

            Response.Redirect("Veriler.aspx");
        }
    }
}