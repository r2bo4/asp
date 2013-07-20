<%@ control language="C#" autoeventwireup="true" inherits="moduller_satinal, App_Web_vuke25lm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 113px;
    }
    .auto-style3 {
        width: 380px;
    }
    .auto-style4 {
        text-align: right;
        width: 268px;
    }
    .auto-style5 {
        width: 268px;
    }
    .auto-style6 {
        text-align: center;
    }
    .auto-style8 {
    }
    .auto-style9 {
        width: 536px;
        text-align: center;
    }
    .auto-style10 {
        width: 134px;
    }
    .auto-style11 {
        width: 135px;
    }
    .auto-style12 {
        width: 500px;
    }
    .auto-style13 {
        width: 180px;
    }
    .auto-style14 {
        width: 180px;
        height: 26px;
    }
    .auto-style15 {
        height: 26px;
    }
    .auto-style16 {
        text-align: right;
    }
    .auto-style17 {
        height: 156px;
    }
</style>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<table class="blok_tablo_orta" width="100%">
    <tr><td><div class="title_box3"><b>SATIN ALMA AŞAMALARI</b></div></td></tr>
    <tr><td valign="top">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="pnlteslimat" runat="server">

               
                <table class="auto-style1">
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style3" colspan="3" style="text-align: center">
                                        <table class="auto-style1">
                                            <tr>
                                                <td colspan="3" style="text-align: center"><strong>Üye Bilgilerim</strong></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6">Ad Soyad:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Telefon:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>E-Posta:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style2">Adres:</td>
                                                <td class="auto-style2">
                                                    <asp:TextBox ID="TextBox2" runat="server" Height="89px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                                <td class="auto-style2">
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="auto-style1">
                                            <tr>
                                                <td colspan="3" style="font-weight: 700; text-align: center">Teslimat Bilgilerim</td>
                                            </tr>
                                            <tr>
                                                <td>AdresTanımAdı:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </td>
                                                <td style="font-weight: 700">
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>AdSoyad:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Adres:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server" Height="55px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Şehir:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TextBox10" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Semt/İlçe:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="TextBox11" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Telefon:</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="TextBox12" ErrorMessage="*"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">KargoNotu:</td>
                                    <td class="auto-style5">
                                        <asp:TextBox ID="TextBox13" runat="server" Height="89px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3">SiparişNotu:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server" Height="89px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td class="auto-style4">
                                        <asp:Button ID="btnteslimat" runat="server" Text="İleri Adım &gt;&gt;Ödeme Seçenekleri" OnClick="btnteslimat_Click" ValidationGroup="tes" />
                                        </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                     </asp:Panel>
                
                <asp:Panel ID="Panelsecenekler" runat="server" Visible="False">
                    <table class="auto-style1">
                    <tr>
                        <td class="auto-style17"><strong>Ödeme Seçenekleri<br /> Kredi kartı<br /> </strong>128 bit SSl üzerinden Visa ve Master Card ile güvenli alışveriş yapma imkanı tanır.<br /> Bankalar ile gerçekleştirilen antlaşmalar sayesinde. avantajlı taksit fırsatları sunar.<br />
                            <br />
                            <strong>Havale / EFT</strong>&nbsp;
                            <br />
                            * Havale / EFT ile yaptığınız alışverişte, teslimat süresinin başlangıcı,<br /> siparişi verdiğiniz zaman değil;sipariş tutarının havale ile hesaplarımıza geçtiği andır.</td>
                        <td class="auto-style17">
                            <asp:Image ID="Image1" ImageUrl="~/images/payment.gif" runat="server" Height="125px" Width="210px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Ödeme Seçenekleri:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="rdhavale" runat="server" Text="Havale" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rdkredikartı" runat="server" Text="Kredi Kartı" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="rdteslimtodeme" runat="server" Text="Teslimatta Ödeme" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style10">Kargo:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="KargoAdi" DataValueField="ID">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="eticaretDataContext" TableName="Kargolars">
                                        </asp:LinqDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style11">Banka Hesapları</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

                </asp:Panel>
            

                <asp:Panel ID="Panel1" runat="server">
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
<table class="auto-style1">
    <tr>
        <td class="auto-style12">Sepetinizde Bulunan Ürünlerin K.D.V Toplam ve Kargo Dahil Fiyatı :
            <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;TL</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            <asp:Button ID="btngeri" runat="server" Text="Teslimat &lt;&lt; Geri" />
        </td>
        <td>
            <asp:Button ID="btnodemeSekli" runat="server" Text="ileri &gt;&gt; Ödeme Tamamlama" />
        </td>
    </tr>
</table>
                </asp:Panel>
<asp:Panel ID="pnlkart" runat="server" Visible="False">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">Kart Türü:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Ödenecek Tutar:</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Ödeme Şekli:</td>
            <td>
                <asp:RadioButton ID="rdPesin" runat="server" Checked="True" Text="Peşin" />
                <asp:RadioButton ID="rdtaksitli" runat="server" Text="Taksitli" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Kart Üzerindeki İsim:</td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">Kart No:</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style13">Son Kullanma Tarihi:</td>
            <td>
                &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="98px">
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Güvenlik Kodu:</td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Button ID="btnGeriOdeme" runat="server" Text="Ödeme Şekli &lt;&lt; Geri" />
            </td>
            <td class="auto-style16">
                <asp:Label ID="Label6" runat="server"></asp:Label>
                <asp:Button ID="btnodemeTamla" runat="server" Text="Ödemeyi Tamamla" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Panel>
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <asp:Label ID="lblson" runat="server" Text="Label"></asp:Label>
                </asp:Panel>

</ContentTemplate>
            
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btngeri" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnodemeSekli" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnteslimat" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
            </Triggers>
            
        </asp:UpdatePanel>
        </td></tr></table>