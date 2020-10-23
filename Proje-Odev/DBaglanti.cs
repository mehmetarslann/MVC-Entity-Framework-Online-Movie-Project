using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Proje_Odev
{

    public class DBaglanti
    {
        public SqlConnection baglan()
        {
            string bag = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection baglanti = new SqlConnection(bag);
            baglanti.Open();
            return (baglanti);
        }
        public int idu(string komut)//insert-delete-update bu fonksiyon ile yapılacak.
        {
            SqlConnection baglan = this.baglan();
            SqlCommand sorgu = new SqlCommand(komut, baglan);
            int sonuc = 0;
            try
            {
                sonuc = sorgu.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
            sorgu.Dispose();
            baglan.Close();
            baglan.Dispose();
            return (sonuc);
        }

        public DataTable dtGetir(string sql)
        {
            SqlConnection baglan = this.baglan();
            SqlDataAdapter adapter = new SqlDataAdapter(sql, baglan);
            DataTable dt = new DataTable();
            try
            {
                adapter.Fill(dt);
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
            adapter.Dispose();
            baglan.Close();
            baglan.Dispose();
            return dt;
        }

        public SqlDataReader VeriGetir(int id)
        {
            SqlCommand komut = new SqlCommand("Select * from Users where user_id=@p1", baglan());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            return dr;
        }
    }
}