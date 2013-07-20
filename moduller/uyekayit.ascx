<%@ control language="C#" autoeventwireup="true" inherits="moduller_uyekayit, App_Web_vuke25lm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<div class="center_title_bar">Üye Kayit Paneli</div>
<table class="auto-style1">
    <tr>
        <td>Üye Eposta :</td>
        <td>
            <asp:TextBox ID="txtEposta" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEposta" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtEposta" ErrorMessage="Epostanız Doğru Değil" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Şifre :</td>
        <td>
            <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtsifre" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Şifre Tekrar :</td>
        <td>
            <asp:TextBox ID="txtsifre2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtsifre2" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtsifre" ControlToValidate="txtsifre2" ErrorMessage="Şifreler Aynı Değil"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Üye Ad Soyad :</td>
        <td>
            <asp:TextBox ID="txtadsoyad" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtadsoyad" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Adres :</td>
        <td>
            <asp:TextBox ID="txtadres" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtadres" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Telefon : </td>
        <td>
            <asp:TextBox ID="txttelefon" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txttelefon" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Gsm :</td>
        <td>
            <asp:TextBox ID="txtgsm" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtgsm" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Şehir :</td>
        <td>
            <asp:DropDownList ID="drbsehir" runat="server" Width="121px" DataSourceID="LinqDataSource1" DataTextField="Ad" DataValueField="IlID">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="eticaretDataContext" TableName="illers">
            </asp:LinqDataSource>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="drbsehir" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>İlçe :</td>
        <td>
            <asp:DropDownList ID="drbilce" runat="server" Width="121px" DataSourceID="LinqDataSource3" DataTextField="Ad" DataValueField="IlceID">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="eticaretDataContext" TableName="ilcelers" Where="IlID == @IlID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="drbsehir" Name="IlID" PropertyName="SelectedValue" Type="Byte" />
                </WhereParameters>
            </asp:LinqDataSource>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="drbilce" ErrorMessage="* Boş Geçmeyiniz"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="64px" ImageUrl="~/images/save.png" Width="76px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
