using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_anaurunler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var ana = et.AnaKategorilers.Where(v => v.AKID == int.Parse(Request.QueryString["id"])).FirstOrDefault();
        lblbaslik.Text = ana.AKAD;
        doldur();
    }
    public void doldur()
    {
        var aurun = et.Urunlers.Where(v => v.AKID == int.Parse(Request.QueryString["id"])).ToList();
        CollectionPager1.DataSource = aurun;
        CollectionPager1.BindToControl = DataList1;

        DataList1.DataSource = CollectionPager1.DataSource;
        
    }
}