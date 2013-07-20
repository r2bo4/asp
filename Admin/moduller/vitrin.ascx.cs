using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_vitrin : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        doldur();

    }
    protected void btnvitrinekle_Click(object sender, EventArgs e)
    {

        try
        {
            et.VitrinEkle(FileUpload1.FileName, txturl.Text);
            FileUpload1.SaveAs(Server.MapPath("../urunler/" + FileUpload1.FileName));
            doldur();
        

        }
        catch 
        {

            lblhata.Text = "Bir Hata Oluştu";
        }
    }
    protected void VitrinSil(object sender, EventArgs e)
    {
        ImageButton btnSilme = sender as ImageButton;
        et.VitrinSil(Convert.ToInt32(btnSilme.CommandArgument));
        doldur();
 
    }
    public void doldur()
    {
        var vitrinler = et.VitrinGetir();
        grdvitrin.DataSource = vitrinler;
        grdvitrin.DataBind();

    }
}