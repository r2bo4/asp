<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_uyeler, App_Web_ie1sxsqd" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 296px;
    }
    .auto-style3 {
        width: 304px;
    }
    .auto-style4 {
        width: 242px;
    }
    .auto-style5 {
        width: 138px;
    }
</style>
<asp:Repeater ID="rptuyeler" runat="server">
    <HeaderTemplate>
        <table class="auto-style1">
    <tr>
        <td>Üye Ad Soyad</td>
        <td>Düzenle / Görüntüle</td>
        <td>Şifre Değiştir</td>
        <td>Sil</td>
        
    </tr>
</HeaderTemplate>
    <ItemTemplate>
        <tr>  
        <td><%#Eval("UyeAdSoyad") %></td>
        <td><a href="Default.aspx?ad=uyeler&islem=duzenle&id=<%#Eval("UyeID") %> "><img src="../image/1368253123_64935.ico" border="0" alt="Düzenle" /></a></td>
        <td><a href="Default.aspx?ad=uyeler&islem=sifredegistir&id=<%#Eval("UyeID") %> "><img src="../image/1368253123_64935.ico" border="0" alt="Şifre Değiştir" /></a></td>
        <td><a href="Default.aspx?ad=uyeler&islem=sil&id=<%#Eval("UyeID") %> "><img src="../image/1368253094_42371.ico" border="0" alt="Sil" /></a></td>
        
    </tr>
    </ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    
</asp:Repeater>




<asp:Panel ID="Panel1" runat="server" Visible="False">
    <table class="auto-style1">
        <tr>
            <td colspan="3">ÜYE DÜZENLEME / GÖRÜNTÜLEME</td>
        </tr>
        <tr>
            <td class="auto-style2">Üye Ad Soyad:</td>
            <td>
                <asp:TextBox ID="txtad_soyad" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Üye Eposta:</td>
            <td>
                <asp:TextBox ID="txtEposta" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Adres:</td>
            <td>
                <asp:TextBox ID="txtadres" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Telefon:</td>
            <td>
                <asp:TextBox ID="txttelefon" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Gsm:</td>
            <td>
                <asp:TextBox ID="txtgsm" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Ekleme Tarihi:</td>
            <td>
                <asp:TextBox ID="txteklemetarihi" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Onay:</td>
            <td>
                <asp:TextBox ID="txtonay" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Şehir:</td>
            <td>
                <asp:TextBox ID="txtsehir" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">İlçe:</td>
            <td>
                <asp:TextBox ID="txtilce" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btngüncelle" runat="server" Text="Güncelle" OnClick="btngüncelle_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Panel>





<asp:Panel ID="Panel2" runat="server" Visible="False">
    <table class="auto-style1">
        <tr>
            <td colspan="3">ÜYE ŞİFRE DEĞİŞTİRME</td>
        </tr>
        <tr>
            <td class="auto-style5">Üye Ad Soyad:</td>
            <td class="auto-style4">
                <asp:Label ID="lbladsoyad" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Şifre:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsifre1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Şifre Tekrar:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtsifre2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnsifredegistir" runat="server" OnClick="btnsifredegistir_Click" Text="Şifre Değiştir" />
            </td>
        </tr>
    </table>
</asp:Panel>






