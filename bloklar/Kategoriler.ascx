<%@ control language="C#" autoeventwireup="true" inherits="bloklar_Kategoriler, App_Web_ntcc1tsy" %>
<asp:Repeater ID="rptAnaKategoriler" runat="server" OnItemDataBound="rptAnaKategoriler_ItemCreated">
<HeaderTemplate><div class="title_box">Kategoriler</div></HeaderTemplate>
        <ItemTemplate>
<ul class="left_menu">
        <li class="odd"><a href="Default.aspx?ad=anaurunler&id=<%#Eval("AKID") %>"><b><%#Eval("AKAD")%></b> </a></li>
    </ul>
        <asp:Repeater ID="rptAltKategoriler" runat="server">
            <ItemTemplate>
<ul class="left_menu">
        <li class="even"><a href="Default.aspx?ad=alturunler&id=<%#Eval("ALTID") %>"><%#Eval("ALTAD") %></a></li>
    </ul>
    </ItemTemplate></asp:Repeater>
    </ItemTemplate></asp:Repeater>