<%@ control language="C#" autoeventwireup="true" inherits="moduller_sepetim, App_Web_vuke25lm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 100%;
        font-weight: bold;
        text-decoration: underline;
    }
    .auto-style3 {
        width: 652px;
    }
    .auto-style4 {
        width: 945px;
    }
</style>
<div class="center_title_bar">Sepetim Bilgisi</div>
<table class="auto-style1">
    <tr>
        
        <td class="auto-style4">
            <asp:Repeater ID="rpt" runat="server">
                <HeaderTemplate>

                    <table>
                        <tr>
                            <td class="auto-style2">ÜrünResmi</td>
                            <td class="auto-style2">ÜrünAdi</td>
                            <td class="auto-style2">Fiyat</td>
                            <td class="auto-style2">Adet</td>
                            <td class="auto-style2">SepettenKaldır</td>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
            <tr>
                <td>
                    <img src="../urunresimleri/<%#Eval("Resim1") %>"width="100px" height="100px" /></td>
                <td><%#Eval("UrunAd") %></td>
                <td><%#Convert.ToDouble(Eval("UrunFiyat")) %></td>
                <td>
                    <asp:TextBox ID="TextBox1" Text='<%#Eval("Adet") %>' Width="20px" runat="server"></asp:TextBox><asp:Label ID="Label1" Text='<%#Eval("SepetID")%>' runat="server" Visible="False"></asp:Label>
                </td>
                <td><a onclick="return confirm('Seçili ürünü sepetinizden kaldirmak İstiyormusunuz?')" href="?ad=sepetim&islem=sil&id=<%#Eval("SepetID")%>">
                    <img src="../Admin/image/1368253094_42371.ico" style="border: 0;" /></a></td>
            </tr>
    </ItemTemplate>
                <FooterTemplate>
                    <tr>
                        <td colspan="5"></td>
                    </tr>
                </FooterTemplate>
            </asp:Repeater>
                
</table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btndegisiklik" runat="server" OnClick="btndegisiklik_Click" Text="Ürün Adet Değişikliğini Kaydet" />
<table width="100%" height="25" bgcolor="e9eef2"><tr><td class="auto-style3">Septinizde Bulunan Ürünlerin K.D.V Toplam Fiyatı :<b><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b>TL</td>
    <td><a href="Default.aspx?ad=satinal">
        <asp:Image ID="Image1" ImageUrl="~/images/satial.jpg" Height="50" runat="server" /></a></td></tr></table>
        </td>
    </tr>
    <tr>
        <td>
            <div>Sepet Hakkında?</div>
            <ul>
                <li>Ürün adetini arttırdığında veya ürünü silmek istediğinizde <strong>"Ürün Adet Değişikliklerini Kaydet" veya "Sepetten Kaldır"
                                                                               </strong>
                    butonuna basınız.
                </li>
                <li>Sepetteki ürünleri satın almak için <strong>"Üye Olmalısınz."</strong></li>
                <li>Alışverişinize Kaldığınız yerden devam edebilirsiniz.</li>
            </ul>
        </td>
    </tr>
</table>

