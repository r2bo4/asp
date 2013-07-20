using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bloklar_Kategoriler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    eticaretDataContext te2 = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        var AK = from v in et.AnaKategorilers
                 select v;
        rptAnaKategoriler.DataSource = AK;
        rptAnaKategoriler.DataBind();

    }
    protected void rptAnaKategoriler_ItemCreated(object sender, RepeaterItemEventArgs e)
    { 
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Repeater rp = (Repeater)e.Item.FindControl("rptAltKategoriler");
            int Id = int.Parse(DataBinder.Eval(e.Item.DataItem, "AKID").ToString());
            rp.DataSource = et.AltKategorilers.Where(v => v.AKID == Id).OrderBy(s => s.ALTAD);
            rp.DataBind();
        }
        
    }
    
}