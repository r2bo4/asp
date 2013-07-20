using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_moduller_altkategoriler : System.Web.UI.UserControl
{
    eticaretDataContext et = new eticaretDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        AltKategorileriGetir();
    }

    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("Ana Kategori Seçiniz...", "0"));
    }
    protected void btnAltEkle_Click(object sender, EventArgs e)
    {
        et.AltKategorilers.InsertOnSubmit(new AltKategoriler { ALTAD = txtAKAD.Text, AKID = int.Parse(DropDownList1.SelectedValue) });
        et.SubmitChanges();
        grdaltkategoriler.DataBind();
    }
    public void AltKategorileriGetir()
    {
        var altkategori = from anav in et.AnaKategorilers
                          join altv in et.AltKategorilers on anav.AKID equals altv.AKID
                          select new { altv.ALTID, altv.ALTAD, anav.AKAD };
        grdaltkategoriler.DataSource = altkategori;
        grdaltkategoriler.DataBind();
    }
    protected void AltKategoriSil(object sender, EventArgs e)
    {
        ImageButton btnSilme = sender as ImageButton;
        et.AltKategorilers.DeleteOnSubmit(et.AltKategorilers.First(v => v.ALTID == Convert.ToInt32(btnSilme.CommandArgument)));
        et.SubmitChanges();
        AltKategorileriGetir();
    }

    protected void grdaltkategoriler_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdaltkategoriler.EditIndex = -1;
        AltKategorileriGetir();
    }
    protected void grdaltkategoriler_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdaltkategoriler.EditIndex = e.NewEditIndex;
        AltKategorileriGetir();

    }
    protected void grdaltkategoriler_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
       
        int AltKategoriID = Convert.ToInt32((this.grdaltkategoriler.Rows[e.AffectedRows].FindControl("lblID") as Label).Text);
        AltKategoriler altkat = et.AltKategorilers.Single(v => v.ALTID == AltKategoriID);
        altkat.ALTAD = (this.grdaltkategoriler.Rows[e.AffectedRows].FindControl("txtAd") as TextBox).Text;
        altkat.AKID = Convert.ToInt32((this.grdaltkategoriler.Rows[e.AffectedRows].FindControl("DropDownList2") as DropDownList).SelectedValue);
        et.SubmitChanges();
    }
}