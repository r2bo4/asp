<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_altkategoriler, App_Web_ie1sxsqd" %>
<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">ALT KATEGORİ EKLE</td>
    </tr>
    <tr>
        <td class="auto-style2">Alt Kategori Adi:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" CssClass="d11" runat="server" DataSourceID="LinqDataSource1" DataTextField="AKAD" DataValueField="AKID" OnDataBound="DropDownList1_DataBound">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="eticaretDataContext" TableName="AnaKategorilers">
            </asp:LinqDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Alt Kategori Adi:</td>
        <td>
            <asp:TextBox ID="txtAKAD" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnAltEkle" runat="server" Text="Ekle" OnClick="btnAltEkle_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:GridView ID="grdaltkategoriler" runat="server" CellPadding="4" EnableModelValidation="True" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="grdaltkategoriler_RowCancelingEdit" OnRowEditing="grdaltkategoriler_RowEditing" OnRowUpdated="grdaltkategoriler_RowUpdated">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Alt Kategori ID">
                       
                        <ItemTemplate>

                            <asp:Label ID="lblID" runat="server" Text='<%#Eval("ALTID") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Alt Kategori Adı"> 
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAd" runat="server" Text=' <%#Eval("ALTAD") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:Label ID="lblAd" runat="server" Text=' <%#Eval("ALTAD") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="Ana Kategori Adı"> 
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource1" DataTextField="AKAD" DataValueField="AKID">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="eticaretDataContext" TableName="AnaKategorilers">
                            </asp:LinqDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>

                            <%#Eval("AKAD") %>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="Sil">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnSilme" ImageUrl="~/Admin/image/1368253094_42371.ico" runat="server" CommandArgument='<%#Eval("ALTID") %>' OnClick="AltKategoriSil" OnClientClick="return confirm('Silmek istiyormusunuz ...')" />

                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:CommandField ShowEditButton="true" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />



            </asp:GridView>
        </td>
    </tr>
    </table>


