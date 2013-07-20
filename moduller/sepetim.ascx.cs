using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_sepetim : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["islem"] == "ekle" && Request.QueryString["id"] != null) sepeteekle();
        if (Request.QueryString["islem"] == "sil" && Request.QueryString["id"] != null) sepetsil();
        if (Request.QueryString["ad"] == "sepetim") sepetigetir();
        if (Session["UyeEposta"] == null)
        {
 
        }

    }
    public void sepeteekle()
    {
        int uyeid;
        if (Session["UyeEposta"] != null)
        {

            uyeid = (from v in et.Uyelers
                     where v.UyeEposta == Session["UyeEposta"].ToString()
                     select v.UyeID).FirstOrDefault();
            var sepet = et.sepeteekle(uyeid, int.Parse(Request.QueryString["id"].ToString()), Convert.ToDateTime(DateTime.Today.Date.ToShortDateString()), 1);

        }
        else
        {
            Response.Redirect("Default.aspx");
        }
        }
	
    public void sepetsil()
    {
        et.Sepetsil(int.Parse(Request.QueryString["id"].ToString()));
        Response.Redirect("Default.aspx?ad=sepetim");

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
            tp1=_sepetgetir2.Sum(s=>Convert.ToDouble(s.Adet * (s.UrunFiyat+(s.UrunFiyat / 100 * s.Kdv))));
            Label2.Text = tp1.ToString();


        }
    }
    protected void btndegisiklik_Click(object sender, EventArgs e)
    {
        int UyeID;
        if (Session["UyeEposta"] != null)
        {

            UyeID = (from v in et.Uyelers
                     where v.UyeEposta == Session["UyeEposta"].ToString()
                     select v.UyeID).FirstOrDefault();
            var sayi = et.sepetgetir(UyeID).Count();
            for (int i = 0; i < sayi; i++)
            {
                TextBox miktar = (TextBox)rpt.Items[i].FindControl("TextBox1");
                int adet = int.Parse(miktar.Text);
                Label sptid = (Label)rpt.Items[i].FindControl("Label1");
                int ids = int.Parse(sptid.Text);
                var guncl = et.Sepets.Single(s => s.SepetID == ids);
                guncl.Adet = adet;
                et.SubmitChanges();
            }

            sepetigetir();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }

    }
}