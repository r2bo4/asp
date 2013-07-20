<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_kategoriler, App_Web_ie1sxsqd" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">ANA KATEGORİ EKLE</td>
    </tr>
    <tr>
        <td class="auto-style2">Ana Kategori Adi:</td>
        <td>
            <asp:TextBox ID="txtAKAD" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnAEkle" runat="server" OnClick="btnAEkle_Click" Text="Ekle" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AKID" DataSourceID="LinqDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Admin/image/1368253094_42371.ico" EditImageUrl="~/Admin/image/1368253123_64935.ico" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="AKID" HeaderText="AKID" InsertVisible="False" ReadOnly="True" SortExpression="AKID" />
                    <asp:BoundField DataField="AKAD" HeaderText="AKAD" SortExpression="AKAD" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="eticaretDataContext" EnableDelete="True" EnableUpdate="True" TableName="AnaKategorilers">
            </asp:LinqDataSource>
        </td>
    </tr>
    </table>

