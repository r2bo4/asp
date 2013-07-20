<%@ control language="C#" autoeventwireup="true" inherits="moduller_urundetay, App_Web_vuke25lm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 152px;
    }
    .auto-style2 {}
</style>
<script type="text/javascript">
    hs.graphicsDir = 'highslide/graphics/';
    hs.wrapperClassName = 'wide-border';
</script>
<script type="text/javascript" src="../js/highslide.js">
    
</script>


<div class="center_title_bar"><asp:Label ID="lblbaslik" runat="server" Text="Label"></asp:Label> &nbsp;Adlı Ürünün Detaylı Bilgisi</div>
<table style="width:100%;">
    <tr>
        <td valign="top">
            <asp:FormView ID="FormView1" runat="server">
                <ItemTemplate>

            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="6"><img src='../urunresimleri/<%#Eval("Resim1") %>' class='highslide' onclick='return hs.expand(this)' style="border:0; width:250px;" />
                        <br /><img src='../urunresimleri/<%#Eval("Resim2") %>' class='highslide' onclick='return hs.expand(this)' style="border:0; width:100px;" />
                        <img src='../urunresimleri/<%#Eval("Resim3") %>' class='highslide' onclick='return hs.expand(this)' style="border:0; width:100px;" />
                    </td>
                    <td>Ürün Adi:</td>
                    <td><%#Eval("UrunAd") %></td>
                </tr>
                <tr>
                    <td>Marka:</td>
                    <td><%#Eval("MarkaAd") %></td>
                </tr>
                <tr>
                    <td>Ziyaret:</td>
                    <td><%#Eval("Okunma") %></td>
                </tr>
                <tr>
                    <td>Fiyat:</td>
                    <td><%#Convert.ToDouble(Eval("UrunFiyat")) %></td>
                </tr>
                <tr>
                    <td>Fiyat(KdvDahil):</td>
                    <td><%#Convert.ToDouble(Eval("UrunFiyat")) + Convert.ToDouble(Eval("UrunFiyat")) /100* Convert.ToInt32(Eval("Kdv"))%>TL </td>
                </tr>
                <tr>
                    <td><a href="Default.aspx?ad=sepetim&islem=ekle&id=<%#Eval("UrunID") %>">Sepete At</a> <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.gif" />
                    </td>
                    <td>&nbsp;</td>  
                </tr>
            </table>
        </ItemTemplate></asp:FormView>
                    </td>
    </tr>
</table>
<%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="3" CssClass="auto-style2" Width="364px">
    <asp:TabPanel runat="server" HeaderText="Ürün Bilgi" ID="TabPanel1">
        <ContentTemplate>
             <asp:FormView ID="FormView2" runat="server">
                <ItemTemplate>
                    <%#Eval("UrunDetay") %>
                </ItemTemplate></asp:FormView>
        </ContentTemplate>
    </asp:TabPanel>
    <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Yorumlar">
        <ContentTemplate>
            <table style="width:100%; background-color:#ffffff;">
                <tr>
                    <td class="title_box3">
                                   <strong>
                                       Ürüne Ait Yorumlar<br />
                                       <br />
                                   </strong>
                        <asp:DataList ID="DataList3" runat="server" Width="100%">
                            <ItemTemplate>
                                <fieldset>
                                    <legend>
                                        <%#Eval("Baslik") %>
                                    </legend>
                                    <%#Eval("Yorum") %>
                                </fieldset>
                            </ItemTemplate>

                        </asp:DataList>

                    </td>
                    <td><hr /><hr /></td>
                </tr><tr>
                <td></td></tr><tr>
                    <td>
                        <table style="width:471px">
                            <tr>
                                <td colspan="3" style="text-align:center">
                                    <strong>
                                        Ürüne Yorum Ekle
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:115px">Yorum Başlığı:</td>
                                <td style="width:228px">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
                                     </td>
                                <td>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ValidationGroup="as"></asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td style="width:115px">Yorumlar</td>
                                 <td style="width:228px">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1" Height="94px" TextMode="MultiLine"></asp:TextBox>
                                     </td>
                                <td>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ValidationGroup="as"></asp:RequiredFieldValidator>

                                </td>

                                
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align:center">
                                    
                                    <asp:Button ID="Button2" runat="server" OnClientClick="return confirm('Yarumunuzu Admin onayladıktan sonra Aktif olacaktır...')" Text="Gönder" BackColor="#065F8A" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" style="height: 26px" ValidationGroup="as" />
                                </td>
                            </tr>

                        </table>
                    </td>
                              </tr>

            </table>
           
        </ContentTemplate>
    </asp:TabPanel>
    <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Taksitlendirme">
        <ContentTemplate>
            <asp:FormView ID="FormView4" runat="server">
                <ItemTemplate>
                    <%#Eval("Taksit") %>
                </ItemTemplate></asp:FormView>
        </ContentTemplate>
    </asp:TabPanel>
    <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Ürünün Videosu">
        <ContentTemplate>
            <asp:FormView ID="FormView5" runat="server">
                <ItemTemplate>
                    <object id="media1" height="200" type="video/x-ms-wmv" width="200">
                     <param name="filename" value='urunresimleri/<%#Eval("Video")%>' />
                     <param name="autoStart" value="0">
                        </object>
                </ItemTemplate></asp:FormView>
        </ContentTemplate>
    </asp:TabPanel>
    
</asp:TabContainer>--%>




