<%@ control language="C#" autoeventwireup="true" inherits="bloklar_vitrin, App_Web_ntcc1tsy" %>


<!--Make sure page contains valid doctype at the very top!-->

<script type="text/javascript" src="../js/jquary.min.js"></script>

<script type="text/javascript" src="../js/stepcarousel.js">

/***********************************************
* Step Carousel Viewer script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/

</script>


<style type="text/css">

.stepcarousel{
position: relative; /*leave this value alone*/
border: 10px solid black;
overflow: scroll; /*leave this value alone*/
width: 575px; /*Width of Carousel Viewer itself*/
height: 250px; /*Height should enough to fit largest content's height*/
}

.stepcarousel .belt{
position: absolute; /*leave this value alone*/
left: 0;
top: 0;
}

.stepcarousel .panel{
float: left; /*leave this value alone*/
overflow: hidden; /*clip content that go outside dimensions of holding panel DIV*/
width: 575px; /*Width of each panel holding each content. If removed, widths should be individually defined on each content DIV then. */
}

    .auto-style1 {
        width: 100%;
    }

</style>



<script type="text/javascript">

    stepcarousel.setup({
        galleryid: 'mygallery', //id of carousel DIV
        beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
        panelclass: 'panel', //class of panel DIVs each holding content
        autostep: { enable: true, moveby: 1, pause: 3000 },
        panelbehavior: { speed: 500, wraparound: false, wrapbehavior: 'slide', persist: true },
        defaultbuttons: { enable: true, moveby: 1, leftnav: ['http://i34.tinypic.com/317e0s5.gif', -5, 80], rightnav: ['http://i38.tinypic.com/33o7di8.gif', -20, 80] },
        statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
        contenttype: ['inline'] //content setting ['inline'] or ['ajax', 'path_to_external_file']
    })

</script>
<div class="center_title_bar">Vitrindeki Ürünler</div>
<<div id="mygallery" class="stepcarousel" style="width:575px">
<table class="auto-style1">
    <asp:Repeater ID="rptVitrin" runat="server">
        <ItemTemplate>
    <tr>
        <td>
            <div class="belt">
                <div class="panel">
                <a href="<%#Eval("VitrinUrl") %>"><img src="urunler/<%#Eval("VitrinResim") %>" border="0" alt="Vitrindeki Ürünler" /></a>                
                </div>
            </div>
        </td>
    </tr></ItemTemplate> </asp:Repeater>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table></div>

