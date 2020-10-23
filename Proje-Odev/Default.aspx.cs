using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Proje_Odev
{
    public partial class Default : System.Web.UI.Page
    {
        DBaglanti bg = new DBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Add("ad", txtAd.Text);
            Session.Add("soyad", txtSoyad.Text);
            Session.Add("email", txtEmail.Text);
            Session.Add("telefon", txtTel.Text);
            Session.Add("adres", TxtAdres.Text);
            if(rdErkek.Checked == true)
            {
                Session.Add("cinsiyet", rdErkek.Text);
            }
            else
            {
                Session.Add("cinsiyet", rdKadin.Text);
            }
            //Session.Add("ulke", DropDownList1.SelectedItem.Text);
            Session.Add("durum",CheckBoxList1.SelectedItem.Text);
            string ulke_adi = DropDownList1.SelectedItem.Text;
            Session.Add("ulke", ulke_adi);
            


            Response.Redirect("Kaydet.aspx");
            Response.Redirect("Veriler.aspx");

        }
    }
}