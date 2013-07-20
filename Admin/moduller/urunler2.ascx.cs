using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_urunler2 : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    string sayi = DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["islem"] == "duzenle" && Request.QueryString["id"] != null)
            bilgilerigetir();
        if (Request.QueryString["islem"] == "sil" && Request.QueryString["id"] != null)
            urunsil();
        {
            
        }
        var urunler = (from v1 in et.Urunlers
                       join v2 in et.Markalars on v1.MarkaID equals v2.MarkID
                       where v1.MarkaID == v2.MarkID
                       select new
                       {
                           v1.UrunID,
                           v1.UrunAd,
                           v2.MarkaAd,
                           v1.Resim1
                       }).ToList();
        CollectionPager1.DataSource = urunler;
        CollectionPager1.BindToControl = DataList1;

        DataList1.DataSource = CollectionPager1.DataSource;


                      
        
    }
    public void urunsil()
    {
        Urunler ur= et.Urunlers.Where(v => v.UrunID == int.Parse(Request.QueryString["id"])).FirstOrDefault();
        et.Urunlers.DeleteOnSubmit(ur);
        et.SubmitChanges();
        Response.Redirect("Default.aspx?ad=urunler2"); 

    }
    public void bilgilerigetir()
    {
        Panel1.Visible = true;
        var guncelle = et.Urunlers.Where(v => v.UrunID == int.Parse(Request.QueryString["id"]));
        var urn=guncelle.FirstOrDefault();
        DropDownList1.SelectedValue = urn.AKID.ToString();
        DropDownList2.SelectedValue = urn.ALTID.ToString();
        DropDownList3.SelectedValue = urn.MarkaID.ToString();
        TextBox1.Text = urn.UrunAd;
        txtdetay.Text = urn.UrunDetay;
        TextBox2.Text = urn.UrunFiyat.ToString();
        TextBox3.Text = urn.Kdv.ToString();
        if (urn.indirim == true) chcindirim.Checked = true;
        else chcindirim.Checked = false;
        txttaksit.Text = urn.Taksit;
        if (urn.YayinDumu == true) chcyayın.Checked = true;
        else chcyayın.Checked = false;

    }

    protected void btnurunekle_Click(object sender, EventArgs e)
    {
        var guncelle = et.Urunlers.Where(v => v.UrunID == int.Parse(Request.QueryString["id"]));
        var urn = guncelle.FirstOrDefault();
        Boolean indirim1;
        if (chcindirim.Checked) indirim1 = true;
        else indirim1 = false;
        Boolean yayin1;
        if (chcyayın.Checked) yayin1 = true;
        else yayin1 = false;
        string resim11, resim22, resim33, video1;
        if (FileUpload1.HasFile && (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/pjpeg")) resim11 = sayi + "1.jpg";
        else resim11 = urn.Resim1;
        if (FileUpload2.HasFile && (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/pjpeg")) resim22 = sayi + "2.jpg";
        else resim22 = urn.Resim2;
        if (FileUpload3.HasFile && (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/pjpeg")) resim33 = sayi + "3.jpg";
        else resim33 = urn.Resim3;
        if (FileUpload4.HasFile && FileUpload4.PostedFile.ContentType == "video/x-ms-wmv") video1 = sayi + "v.wmv";
        else video1 = urn.Video;
        et.urunguncelle(int.Parse(Request.QueryString["id"]), TextBox1.Text,txtdetay.Text,Convert.ToDecimal(TextBox2.Text),Convert.ToDecimal(TextBox3.Text), indirim1, txttaksit.Text, resim11, resim22, resim33, video1,int.Parse(DropDownList1.SelectedValue),int.Parse(DropDownList2.SelectedValue),int.Parse(DropDownList3.SelectedValue), yayin1);
        Response.Redirect("Default.aspx?ad=urunler2");

    }
}