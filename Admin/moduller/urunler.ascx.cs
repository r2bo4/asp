using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_urunler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    string sayi = DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnurunekle_Click(object sender, EventArgs e)
    {
        Boolean indirim1;
        if (chcindirim.Checked) indirim1=true;
        else indirim1=false;
        Boolean yayin1;
        if (chcyayın.Checked) yayin1=true;
        else yayin1=false;
        string resim11,resim22,resim33,video1;
        if (FileUpload1.HasFile && (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/pjpeg")) resim11 = sayi + "1.jpg";
        else resim11="resimyok.jpg";
        if (FileUpload2.HasFile && (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/pjpeg")) resim22 = sayi + "2.jpg";
        else resim22="resimyok.jpg";
        if (FileUpload3.HasFile && (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/pjpeg")) resim33 = sayi + "3.jpg";
        else resim33="resimyok.jpg";
        if(FileUpload4.HasFile &&FileUpload4.PostedFile.ContentType=="video/x-ms-wmv") video1=sayi+"v.wmv";
        else video1="videoyok.wmv";
        et.Urunlers.InsertOnSubmit(new Urunler{AKID=int.Parse(DropDownList1.SelectedValue),
        ALTID=int.Parse(DropDownList2.SelectedValue),MarkaID=int.Parse(DropDownList3.SelectedValue),
        UrunAd=TextBox1.Text,UrunDetay=txtdetay.Text,UrunFiyat=Convert.ToDecimal(TextBox2.Text),Kdv=Convert.ToDecimal(TextBox3.Text),
        EklenmeTarihi=Convert.ToDateTime(DateTime.Now.ToShortDateString()),indirim=indirim1,Taksit=txttaksit.Text,
        Resim1=resim11,Resim2=resim22,Resim3=resim33,Video=video1,YayinDumu=yayin1,Okunma=0,Puan=0
        });
        if (FileUpload1.HasFile) FileUpload1.SaveAs(Server.MapPath("~/urunresimleri/" + resim11));
        if (FileUpload1.HasFile) FileUpload2.SaveAs(Server.MapPath("~/urunresimleri/" + resim22));
        if (FileUpload1.HasFile) FileUpload3.SaveAs(Server.MapPath("~/urunresimleri/" + resim33));
        if (FileUpload1.HasFile) FileUpload4.SaveAs(Server.MapPath("~/urunresimleri/" + video1));
        et.SubmitChanges();
        Response.Redirect("Default.aspx?ad=urunler");
    }
}