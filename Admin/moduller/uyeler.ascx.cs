using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_uyeler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var uyelerimiz = et.Uyelers;
        rptuyeler.DataSource = uyelerimiz;
        rptuyeler.DataBind();
        if (Request.QueryString["islem"] == "duzenle" && Request.QueryString["id"] != null) Duzenle();
        if (Request.QueryString["islem"] == "sil" && Request.QueryString["id"] != null) Sil();
        if (Request.QueryString["islem"] == "sifredegistir" && Request.QueryString["id"] != null) SifreDegistir();
        

    }
    public void Sil()
    {
        Uyeler uye = et.Uyelers.First(v => v.UyeID == int.Parse(Request.QueryString["id"]));
        et.Uyelers.DeleteOnSubmit(uye);
        et.SubmitChanges();
        Response.Redirect("Default.aspx?ad=uyeler");

    }
    public void SifreDegistir()
    {
        Panel2.Visible = true;
        Uyeler uye = et.Uyelers.First(v => v.UyeID == int.Parse(Request.QueryString["id"]));
        lbladsoyad.Text = uye.UyeAdSoyad;
        uye.Sifre = FormsAuthentication.HashPasswordForStoringInConfigFile(txtsifre1.Text,"sha1");
        et.Uyelers.InsertOnSubmit(uye);
        et.SubmitChanges();
        

    }
    public void Duzenle()
    {
        Panel1.Visible = true;
        var uyelerimiz = et.Uyelers.Where(v => v.UyeID == int.Parse(Request.QueryString["id"]));
        var uye = uyelerimiz.FirstOrDefault();
        txtad_soyad.Text = uye.UyeAdSoyad;
        txtEposta.Text = uye.UyeEposta;
        txtadres.Text = uye.Adres;
        txttelefon.Text = uye.Telefon;
        txtgsm.Text = uye.Gsm;
        txteklemetarihi.Text =uye.EklemeTarihi.ToString();
        txtonay.Text = uye.Onay.ToString();
        txtsehir.Text = uye.Sehir;
        txtilce.Text = uye.Ilce;



    }
    protected void btngüncelle_Click(object sender, EventArgs e)
    {
        Uyeler uye = et.Uyelers.First(v => v.UyeID == int.Parse(Request.QueryString["id"]));
        uye.UyeAdSoyad = txtad_soyad.Text;
        uye.UyeEposta=txtEposta.Text;
        uye.Adres = txtadres.Text;
        uye.Telefon=txttelefon.Text;
        uye.Gsm = txtgsm.Text;
        uye.EklemeTarihi= Convert.ToDateTime(txteklemetarihi.Text);
        uye.Onay=Convert.ToInt32(txtonay.Text);
        uye.Sehir = txtsehir.Text;
        uye.Ilce = txtilce.Text;
        et.Uyelers.InsertOnSubmit(uye);
        et.SubmitChanges();
        Response.Redirect("Default.aspx?ad=uyeler");

    }
    protected void btnsifredegistir_Click(object sender, EventArgs e)
    {
        SifreDegistir();
        Response.Redirect("Default.aspx?ad=uyeler");
        
    }
}