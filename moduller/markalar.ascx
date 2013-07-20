<%@ control language="C#" autoeventwireup="true" inherits="moduller_markalar, App_Web_vuke25lm" %>
<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<div class="center_title_bar"><asp:Label ID="lblbaslik" runat="server" Text="Label"></asp:Label> Markasına Ait Ürümler</div>


<asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
    <ItemTemplate>
        <div class="prod_box">
        	<div class="top_prod_box"></div>  
            <div class="center_prod_box">            
                 <div class="product_title"><a href="Default.aspx?ad=urundetay&id=<%#Eval("UrunID") %>"> <%#Eval("UrunAd")%></a></div>
                 <div class="product_img"><a href="Default.aspx?ad=urundetay&id=<%#Eval("UrunID")%>"><img src="../urunresimleri/<%#Eval("Resim1") %>" style="with:150px;height:120px; border:0;" /></a></div>
                 <div class="prod_price"><span class="reduce"></span> <span class="price"> Fiyat: <%#Convert.ToDouble( Eval("UrunFiyat")) %>(Kdv hariç)</span></div>                        
            </div>
            <div class="bottom_prod_box"></div>             
            <div class="prod_details_tab">
            <a href="Default.aspx?ad=sepetim&islem=ekle&id=<%#Eval("UrunID") %>"><img src="../images/cart.gif" alt="" title="" border="0" class="left_bt" /></a>
           <a href="Default.aspx?ad=urundetay&id=<%#Eval("UrunID") %>" class="prod_details">Detay</a>           
                     
            </div>                     
        </div>

    </ItemTemplate>
</asp:DataList>
<cc1:CollectionPager ID="CollectionPager1" runat="server" BackText="« Geri" FirstText="İlk" LabelText="Sayfa:" LastText="Son" NextText="İleri »" PageSize="3" QueryStringKey="Sayfa" ResultsFormat="Sonuçlar {0}-{1} (of {2})" ResultsLocation="None"></cc1:CollectionPager>
