using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_markalar : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnMarka_Click(object sender, EventArgs e)
    {
        et.Markalars.InsertOnSubmit(new Markalar { ALTID=int.Parse(DropDownList2.SelectedValue),MarkaAd=txtmarka.Text});
        et.SubmitChanges();
        Response.Redirect("Default.aspx?ad=markalar");

    }
    
}