<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_urunler, App_Web_ie1sxsqd" %>


<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 225px;
    }
    .auto-style3 {
        width: 225px;
        height: 23px;
    }
    .auto-style4 {
        height: 23px;
    }
    #TextArea1 {
        height: 83px;
        width: 235px;
    }
    #TextArea2 {
        height: 83px;
        width: 235px;
    }
    #txtdetay {
        width: 184px;
        height: 83px;
    }
    #txttaksit {
        height: 136px;
        width: 183px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">ÜRÜN EKLEME</td>
    </tr>
    <tr>
        <td class="auto-style2">Ana KAtegori:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="AKAD" DataValueField="AKID" AutoPostBack="True">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="eticaretDataContext" TableName="AnaKategorilers">
            </asp:LinqDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Alt Kategori:</td>
        <td class="auto-style4">
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource2" DataTextField="ALTAD" DataValueField="ALTID">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="eticaretDataContext" TableName="AltKategorilers" Where="AKID == @AKID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="AKID" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style2">Marka:</td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="LinqDataSource3" DataTextField="MarkaAd" DataValueField="MarkID">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="eticaretDataContext" TableName="Markalars">
            </asp:LinqDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Ürün Ad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Ürün Detay:</td>
        <td>
            <asp:TextBox ID="txtdetay" runat="server" Height="22px" Width="192px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Ürün Fiyat:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="190px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">K.D.V.:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="190px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">İndiririm:</td>
        <td>
            <asp:CheckBox ID="chcindirim" runat="server" Text="İndirimli Ürün" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Taksit:</td>
        <td>
            
            <asp:TextBox ID="txttaksit" runat="server" Width="190px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Resim-1:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Resim-2:</td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Resim-3:</td>
        <td>
            <asp:FileUpload ID="FileUpload3" runat="server"  />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Video:</td>
        <td>
            <asp:FileUpload ID="FileUpload4" runat="server"  />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Yayın Durumu:</td>
        <td>
            <asp:CheckBox ID="chcyayın" runat="server" Text="Yayınlansın" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button ID="btnurunekle" runat="server" Text="Ürün Ekle" OnClick="btnurunekle_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

