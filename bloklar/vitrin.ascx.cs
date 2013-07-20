using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bloklar_vitrin : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var vitrinimiz = et.VitrinGetir();
        rptVitrin.DataSource = vitrinimiz;
        rptVitrin.DataBind();

    }
}