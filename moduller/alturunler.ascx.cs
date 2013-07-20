using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_alturunler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var ana = et.AltKategorilers.Where(v => v.ALTID == int.Parse(Request.QueryString["id"])).FirstOrDefault();
        lblbaslik.Text = ana.ALTAD;
        Label1.Text = ana.ALTAD;
        doldur();
        markadoldur();
    }
    public void doldur()
    {
        var alturun = et.Urunlers.Where(v => v.ALTID == int.Parse(Request.QueryString["id"])).ToList();
        CollectionPager1.DataSource = alturun;
        CollectionPager1.BindToControl = DataList1;

        DataList1.DataSource = CollectionPager1.DataSource;

    }
    public void markadoldur()
    {
        var marks = (from v in et.Markalars
                     where v.ALTID == int.Parse(Request.QueryString["id"])
                     select new { v.MarkaAd, v.MarkID }).ToList();
        
        DataList2.DataSource = marks;
        DataList2.DataBind();
    }
}