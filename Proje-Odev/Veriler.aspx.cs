using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Proje_Odev
{
    public partial class Veriler : System.Web.UI.Page
    {
        DBaglanti bg = new DBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = bg.dtGetir("select * from Users");
            this.VeriGetir.DataSource = dt;
            this.VeriGetir.DataBind();
            
        }

        protected void btnGuncelle_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName=="guncelle")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                //DataTable dt = bg.dtGetir("select * from Users where user_id="+id);
                //this.VeriGetir.DataSource = dt;
                //this.VeriGetir.DataBind();
                Session.Add("id", id);
                Response.Redirect("Update.aspx?id");
                
            }
        }

        protected void btnSil_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sil")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                int sonuc = bg.idu("delete from users where user_id=" + id);
                VeriGetir.DataBind();
                Response.Redirect("Veriler.aspx");
                
            }
        }
    }
}