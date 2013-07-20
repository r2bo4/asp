using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_urundetay : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        urundetay();
        //yorumlar();

    }
    public void urundetay()
    {
        var urn = from v in et.Urunlers
                  join v1 in et.Markalars on v.MarkaID equals v1.MarkID
                  where v.UrunID == Convert.ToInt32(Request.QueryString["id"].ToString())
                  select new { 
                  v.UrunAd,v.UrunFiyat,v.UrunDetay,v.UrunID,v.Taksit,v.Resim1,v.Resim2,v.Resim3,v.Video,v.Okunma,
                  v.YayinDumu,v.EklenmeTarihi,v.Kdv,v1.MarkaAd
                  };
        FormView1.DataSource = urn;
        FormView1.DataBind();
        //FormView2.DataSource = urn;
        //FormView2.DataBind();
        //FormView4.DataSource = urn;
        //FormView4.DataBind();
        //FormView5.DataSource = urn;
        //FormView5.DataBind();
    }
    //public void yorumlar()
    //{
    //    var yrm = from v in et.Yorumlars
    //              where v.urunad==Convert.ToInt32(Request.QueryString["id"].ToString())
    //              select v;
    //    DataList3.DataSource = yrm;
    //    DataList3.DataBind();
    //}
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    et.Yorumlars.InsertOnSubmit(new Yorumlar { urunad = Convert.ToInt32(Request.QueryString["id"].ToString()),Baslik=TextBox1.Text,Yorum=TextBox4.Text,Durum=0});
    //    et.SubmitChanges();
    //}
}