<%@ control language="C#" autoeventwireup="true" inherits="moduller_SifremiUnuttum, App_Web_vuke25lm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 128px;
        height: 128px;
    }
    .auto-style4 {
        width: 326px;
    }
    .auto-style5 {
        width: 264px;
    }
</style>
<div class="center_title_bar">Şifre Değiştirme Bölümü</div>
<asp:Panel ID="Panel1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp; &nbsp;<img alt="Şifremi Unuttum." class="auto-style2" src="../images/user_pass.png" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Üye Ad Soyad:</td>
            <td class="auto-style4">
                <asp:Label ID="lblUyeAd" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Yeni Şifre:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtnewsifre" runat="server" Width="172px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Şifre Tekrar:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtnewSifre2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewsifre" ControlToValidate="txtnewSifre2" ErrorMessage="Şifreler Aynı Değil ..."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btndegistir" runat="server" OnClick="btndegistir_Click" Text="Şifremi Değistir." />
                <asp:Label ID="lblsonuc2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp; &nbsp;<img alt="Şifremi Unuttum." class="auto-style2" src="../images/user_pass.png" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Üye Ad Soyad:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtadSoyad" runat="server" Width="172px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadSoyad" ErrorMessage="Boş Geçmeyiniz..."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Üye Eposta:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtEposta" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEposta" ErrorMessage="Boş Geçmeyiniz..."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnSifreDgistir" runat="server" OnClick="btnSifreDgistir_Click" Text="Şifremi Değiştir" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lblSonuc" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Panel>  
