using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moduller_markalar : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var ana = et.Markalars.Where(v => v.MarkID == int.Parse(Request.QueryString["id"])).FirstOrDefault();
        lblbaslik.Text = ana.MarkaAd;

        doldur();
       
    }
    public void doldur()
    {
        var markurun = et.Urunlers.Where(v => v.MarkaID == int.Parse(Request.QueryString["id"])).ToList();
        CollectionPager1.DataSource = markurun;
        CollectionPager1.BindToControl = DataList1;
        DataList1.DataSource = CollectionPager1.DataSource;

    }
   
}