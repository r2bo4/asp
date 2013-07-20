using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_satinal : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UyeEposta"] == null)
            Response.Redirect("Default.aspx");
        bilgigetir();
       

        

    }
    public void bilgigetir()
    {
        var _uyeler = et.UyeleriGetir().Where(v =>v.UyeEposta == Session["UyeEposya"]);
        var _uye = _uyeler.FirstOrDefault();
        TextBox1.Text = _uye.UyeAdSoyad;
        TextBox3.Text = _uye.Telefon;
        TextBox4.Text = _uye.UyeEposta;
        TextBox2.Text = _uye.Adres;
        TextBox6.Text = _uye.UyeAdSoyad;
        TextBox7.Text = _uye.Adres;
        TextBox10.Text = _uye.Sehir;
        TextBox11.Text = _uye.Ilce;
        TextBox12.Text = _uye.Telefon;
        //DropDownList2.Items.Clear();
        //var _bankalar = et.hesapnumaralaris;
        //foreach (var item in _bankalar)
        //{
        //    DropDownList2.Items.Add(new ListItem(item.Banka + " - Şube Adı:" + item.SubeAdı + " - Şube Kodu:" + item.SubeKodu + " - Hesap Tipi:" +
        //        item.HesapTuru + " - Hesap No:" + item.HesapNo + " - IBAN:" + item.IBAn));
        //}
        
 
    }
    protected void btnteslimat_Click(object sender, EventArgs e)
    {
        pnlteslimat.Visible = false;
        Panelsecenekler.Visible = true;
        sepetigetir();
    }
    public void sepetigetir()
    {

        int UyeID;
        if (Session["UyeEposta"] != null)
        {

            UyeID = (from v in et.Uyelers
                     where v.UyeEposta == Session["UyeEposta"].ToString()
                     select v.UyeID).FirstOrDefault();


            var _sepetgetir = from t1 in et.sepetgetir(UyeID)
                              join t2 in et.Urunlers on t1.UrunID equals t2.UrunID
                              where t1.UrunID == t2.UrunID
                              select new
                              {
                                  t2.UrunAd,
                                  t2.Resim1,
                                  t2.UrunFiyat,
                                  t1.Adet,
                                  t1.SepetID
                              };
            rpt.DataSource = _sepetgetir;
            rpt.DataBind();
            var _sepetgetir2 = from t1 in et.sepetgetir(UyeID)
                               join t2 in et.Urunlers on t1.UrunID equals t2.UrunID
                               where t1.UrunID == t2.UrunID
                               select new
                               {
                                   t2.UrunAd,
                                   t2.Resim1,
                                   t2.UrunFiyat,
                                   t1.Adet,
                                   t1.SepetID,
                                   t2.Kdv
                               };
            double tp1 = 0;
            tp1 = _sepetgetir2.Sum(s => Convert.ToDouble(s.Adet * (s.UrunFiyat + (s.UrunFiyat / 100 * s.Kdv))));
            Label2.Text = tp1.ToString();


        }
    }
}