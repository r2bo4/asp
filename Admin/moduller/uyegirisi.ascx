<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_uyegirisi, App_Web_ie1sxsqd" %>
<style type="text/css">
    .auto-style1 {
        width: 75px;
    }
</style>

<asp:Panel ID="pnlUyeGiris" runat="server">
    <div class="title_box">Üye Giriş paneli</div>
<div class="border_box">
    <div class="product_title">
    Üye Eposta </div>
        <asp:TextBox ID="txtEposta" runat="server" onblur="if(this.value=='') this.value='Üye Eposta';" onfocus="if(this.value=='Üye Eposta') this.value=='';"></asp:TextBox>
        
    
         <div class="product_title">
    Üye Şifre </div>
        <asp:TextBox ID="txtSifre" TextMode="Password" runat="server" onblur="if(this.value=='') this.value='Şifre';" onfocus="if(this.value=='Şifre') this.value=='';"></asp:TextBox>
        
    
    <div class="product_title">
    
        <asp:Button ID="btnGiris" runat="server" Text="Üye Giriş" OnClick="btnGiris_Click" />
        <asp:Label ID="lblSonuc" runat="server" Visible="false" Text=""></asp:Label>
    </div>
        <div class="product_title"><a href="Default.aspx?ad=uyekayit">Üye OL </a> |<a href="Default.aspx?ad=SifremiUnuttum"> Şifremi Unuttum </a> </div>

         </div>
    
</div>
</asp:Panel>
<asp:Panel ID="pnlUye" runat="server">
    <div class="title_box">Üye paneli</div>
    <div class="border_box">
    <div class="product_title">
        <asp:Label ID="lblisim" runat="server"></asp:Label>
    </div>
    <div class="product_title">Üyelik Bilgilerim</div>
    <div class="product_title"><a href="Default.aspx?ad=sepetim">Sepetim</a></div>
    <div class="product_title">Siparişlerim</div>
    <div class="product_title">Ödeme Formu</div>
    <div class="product_title">
        <asp:Button ID="btnCıkıs" runat="server" Text="Güvenli Çıkış" OnClick="btnCıkıs_Click" /></div>
        </div>
</asp:Panel>

