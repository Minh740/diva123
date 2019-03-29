<%@ Page Title="Diva Spa & Nail" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="groupbanner">
        <p hidden id="total-slider"><%=listSlider.Count %></p>
        <div class="bannerbox">
            <%foreach (var slider in listSlider)
                {%>
            <div class="banner" id="banner<%=slider.ID %>">
                <img src="<%=slider.URL %>" alt="banner" />
                <div class="bannertxt" id="bannertxt<%=slider.ID %>">
                    <%=slider.Title %><br />
                    <span><%=slider.ShortDesc %></span>
                </div>
            </div>
            <%} %>
            <div class="groupnext">
                <div class="next" id="bnext"></div>
                <div class="next" id="bback"></div>
            </div>
        </div>
    </div>
    <!-- group banner -->

    <div class="groupcontent">
        <div class="grouphomeservices">
            <div class="homeservicesbox">
     <div class="groupcontent">
        <div class="grouphomeservices">
            <div class="homeservicesbox">

                <div class="homeservices_l">
                    <h2>Manicure &amp; Pedicure</h2>
                    <div class="homeservicesimg">
                        <img src="images/homeservicesimg02.jpg" alt="Manicure &amp; Pedicure" />
                    </div>
                    <div class="homeservicestxt">At Dream Nails And Spa, we provide your hands and feet with the nurturing, attentive care they deserve. You will leave with hands and feet that are refreshed, smooth and accented with lasting color.</div>
                    <a href="services#manicure-pedicure" class="more">More</a>
                </div>
                <div class="homeservices_l">
                    <h2>Waxing Services</h2>
                    <div class="homeservicesimg">
                        <img src="images/images .jpg" alt="eyelash-extension" />
                    </div>
                    <div class="homeservicestxt">We customize every massage for the client based on your feedback at the beginning of your session. Often we incorporate various types of massage techniques into a single session.</div>
                    <a href="services#Massage-Treatment" class="more">More</a>
                </div>

                <div class="homeservices_r">
                    <h2>Eyelash Extension</h2>
                    <div class="homeservicesimg">
                        <img src="images/homeservicesimg03.jpg" alt="Waxing Services" />
                    </div>
                    <div class="homeservicestxt">Our facials are customized to fit the individual needs of our clients. We use only the highest quality products. We carefully evaluate your skin to determine the treatment that is best suited to you.</div>
                    <a href="services#Skin-Care-Treatment" class="more">More</a>
                </div>
            </div>
            <div class="bg_border">
                
            </div>
        </div>
         </div>
        <%=pageAbout.PageContent %>
            </div>    
                </div>
</div>
</asp:Content>


