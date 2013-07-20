using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_kategoriler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAEkle_Click(object sender, EventArgs e)
    {
        et.AnaKategorilers.InsertOnSubmit(new AnaKategoriler { AKAD = txtAKAD.Text });
        et.SubmitChanges();

    }
}