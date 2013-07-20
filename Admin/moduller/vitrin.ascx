<%@ control language="C#" autoeventwireup="true" inherits="Admin_moduller_vitrin, App_Web_ie1sxsqd" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">VİTRİN EKLE / SİL BÖLÜM</td>
    </tr>
    <tr>
        <td>Vitrin Resim :</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Vitrin Url :</td>
        <td>
            <asp:TextBox ID="txturl" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnvitrinekle" runat="server" OnClick="btnvitrinekle_Click" Text="Vitrin Ekle" />
        </td>
        <td>
            <asp:Label ID="lblhata" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="grdvitrin" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                     <ItemTemplate>
                         <asp:Label ID="lblID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                     </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Resim">
                    <ItemTemplate>
                       
                        <img src="../urunler/<%#Eval("VitrinResim") %>" Width="250px" Height="150px" />
                    </ItemTemplate>   
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Url">
                     <ItemTemplate>
                         <asp:Label ID="lblUrl" runat="server" Text='<%#Eval("VitrinUrl") %>'></asp:Label>
                     </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sil">
                    <ItemTemplate>
                            <asp:ImageButton ID="btnSilme" ImageUrl="~/Admin/image/1368253094_42371.ico" runat="server" CommandArgument='<%#Eval("ID") %>' OnClick="VitrinSil" OnClientClick="return confirm('Silmek istiyormusunuz ...')" />

                            
                        </ItemTemplate>
                    </asp:TemplateField>
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

