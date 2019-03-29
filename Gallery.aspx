<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <!--Shadow box-->
    <link rel="stylesheet" type="text/css" href="shadowbox/shadowbox.css" />
    <script type="text/javascript" src="shadowbox/shadowbox.js"></script>
    <script type="text/javascript">

        $(function () {
            Shadowbox.init({
                handleOversize: "drag",
                modal: true,
                continuous: true,
                counterType: "skip",
                handleOversize: "resize",
            });
        })
    </script>
    <!--Shadow box-->


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="content">
        <div class="bg_border">
            <img src="images/bg_borderpage.png" />
        </div>
        <h2>Gallery:</h2>
        <div id="gallery">
            <%foreach (var gallery in listGallery)
                {
                    if (gallery.Type == 1)
                    {
            %>
            <div class="gallery_video">
                <%=gallery.Name %><br />
                <iframe src="<%=gallery.Link %>" frameborder="0" allowfullscreen></iframe>
            </div>
            <%}
                else
                { %>
            <a href="<%=gallery.Link2 %>" rel="shadowbox">
                <img src="<%=gallery.Link %>" alt="img<%=gallery.ID %>"></a>
            <%}
                } %>
        </div>
    </div>--%>

     <div class="content">
            <div class="bg_border"></div>
                <h2>Gallery:</h2>
                <div style="text-align:center;">Coming soon...</div>
                
                        
          </div>
</asp:Content>

