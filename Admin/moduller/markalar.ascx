<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_markalar, App_Web_ie1sxsqd" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 178px;
    }
</style>
<p>
&nbsp;</p>
<table class="auto-style1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MarkID" DataSourceID="LinqDataSource3" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="İşlemler" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="MarkID" HeaderText="MarkID" InsertVisible="False" ReadOnly="True" SortExpression="MarkID" />
                    <asp:BoundField DataField="MarkaAd" HeaderText="MarkaAd" SortExpression="MarkaAd" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="eticaretDataContext" EnableDelete="True" EnableUpdate="True" TableName="Markalars">
            </asp:LinqDataSource>
        </td>
    </tr>
</table>
<table class="auto-style1">
    <tr>
        <td colspan="3">MARKA EKLE</td>
    </tr>
    <tr>
        <td class="auto-style2">Ana Kategori:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="AKAD" DataValueField="AKID" AutoPostBack="True">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="eticaretDataContext" TableName="AnaKategorilers" >
            </asp:LinqDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Alt Kategori:</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource2" DataTextField="ALTAD" DataValueField="ALTID">
            </asp:DropDownList>
            <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="eticaretDataContext" TableName="AltKategorilers" Where="AKID == @AKID">
                <WhereParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="AKID" PropertyName="SelectedValue" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Marka Adi:</td>
        <td>
            <asp:TextBox ID="txtmarka" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnMarka" runat="server" OnClick="btnMarka_Click" Text="Marka Ekle" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

