using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_uyegirisi : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UyeEposta"] !=null)
        {
            pnlUyeGiris.Visible = false;
            pnlUye.Visible = true;
            var uyeler=et.Uyelers.Where(v=>v.UyeEposta==Session["UyeEposta"].ToString());
            string uyemiz=uyeler.Select(s=>s.UyeAdSoyad).SingleOrDefault();
            lblisim.Text = "Hoş Geldiniz:" + uyemiz;
        }
        else
        {
            pnlUyeGiris.Visible = true;
            pnlUye.Visible = false;

        }

    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        string sifre = FormsAuthentication.HashPasswordForStoringInConfigFile(txtSifre.Text, "sha1");
       
        var uyelerim = et.Uyelers.Where(v => v.UyeEposta == txtEposta.Text && v.Sifre == txtSifre.Text);
        var uye = uyelerim.FirstOrDefault();
        
        if (uye != null)
        {
            Session["UyeEposta"] = uye.UyeEposta;
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblSonuc.Visible = true;
            lblSonuc.Text = "Yanlış Girildi...";
        }
    }
    protected void btnCıkıs_Click(object sender, EventArgs e)
    {
        Session["UyeEposta"] = null;
    }
}