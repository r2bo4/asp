using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_SifremiUnuttum : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["aktivasyon"]!=null)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            var uyelerim3 = et.Uyelers.Where(v => v.Sifre == Request.QueryString["aktivasyon"].ToString());
            var uye = uyelerim3.FirstOrDefault();
            lblUyeAd.Text = uye.UyeAdSoyad;

        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

    }
    protected void btnSifreDgistir_Click(object sender, EventArgs e)
    {
        var uyelerim = et.Uyelers.Where(v => v.UyeAdSoyad == txtadSoyad.Text && v.UyeEposta == txtEposta.Text);
        var uye = uyelerim.FirstOrDefault();
        if (uye !=null)
        {
            MailAddress alici = new MailAddress(uye.UyeEposta);
            MailAddress gonderen = new MailAddress("asd@asd.com", "Görsel Egitim");
            MailMessage mesaj = new MailMessage(gonderen, alici);
            mesaj.Subject = "Şifremi Unuttum";
            mesaj.IsBodyHtml = true;
            mesaj.Body="Sayin "+""+uye.UyeAdSoyad +"<br>Görsel egitimden gelen şifre yenilemek için <br>Aktivasyon Koduna Tıklayiniz:<a href'http://localhost:4211/Default.aspx ad=SifremiUnuttum&aktivasyon=" +uye.Sifre+ "'>"+uye.Sifre+"</a>";
            SmtpClient client = new SmtpClient();
            client.Send(mesaj);
            lblSonuc.Text = "Epostanıza Aktivasyon gonderilmiştir" + "<meta http-equiv='refresh' content='3;url=Default.aspx'>";
            
        }
    }
    protected void btndegistir_Click(object sender, EventArgs e)
    {
        var uyelerim2 = et.Uyelers.Where(v => v.Sifre == Request.QueryString["aktivasyon"].ToString());
        var uye = uyelerim2.FirstOrDefault();
        if (uye!=null)
        {
            uye.Sifre = txtnewsifre.Text;
            et.Uyelers.InsertOnSubmit(uye);
            et.SubmitChanges();
            lblsonuc2.Text = "Şifreniz Değişmiştir .." + "<meta http-equiv='refresh' content='3;url=Default.aspx'>";
            
        }
        else
        {
            lblsonuc2.Text = "Şifreniz Değiştirimedi";
        }

    }
}