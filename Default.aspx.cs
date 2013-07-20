using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (Request.QueryString["ad"] != null)
            {
                plchold.Controls.Clear();
                plchold.Controls.Add(LoadControl("Moduller/" + Request.QueryString["ad"].ToString() + ".ascx"));

            }
            else
            {
                plchold.Controls.Clear();
                plchold.Controls.Add(LoadControl("Bloklar/orta.ascx"));

            }


        }
        catch (Exception)
        {
            lbldurum.Visible = true;
            lbldurum.Text = "Aradığınız Sayfa Bulunmamaktatır...";

        }
        finally
        {
        }
       


    }
}