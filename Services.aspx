<%@ Page Title="Services" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="groupcontent">
        <div class="content">
            <div class="bg_border">
                
            </div>
            <a name="services"></a>
            <h2>Our Services:</h2>

            <!-- #region Nail Enhancements-->
            <%foreach (var category in listCategoryService)
                {%>
            <a name="<%=UTIL.FormatLink(category.categoryName) %>"></a>
            <div class="groupservices">
                <div class="servicesbox">
                    <div class="groupservicesimg">
                        <%foreach (var image in category.listImageCategory)
                            {%>
                        <div class="servicesimg  groupservices_img">
                            <img src="<%=image.Link %>" alt="">
                            <img src="<%=image.Link2 %>" alt="" class="servicesimg2">
                        </div>
                        <%} %>
                    </div>
                    <div class="servicesbox_r">
                        <div class="servicestitle"><%=category.categoryName %></div>
                        <%if (category.listChildCategory.Count > 0)
                            {
                                foreach (var childCategory in category.listChildCategory)
                                {%>
                        
                        <div class="services_note"><%=childCategory.categoryName %></div>
                        <div class="grouprow">
                            <%foreach (var service in childCategory.listService)
                                {%>
                            <div class="grouprow_box">
                                <div class="row"><%=service.Name %></div>
                                <div class="price">$<%=service.Price %></div>
                            </div>
                            <%} %>
                        </div>
                        <%}
                            }
                            else
                            { %>
                        <div class="services_note"><%=category.categoryDescription %></div>
                        <div class="grouprow">
                            <div class="servicestitle_2">
                                <%foreach (var service in category.listService)
                                    {%>
                                <div class="grouprow_box">
                                    <div class="row">
                                        <%=service.Name %>
                                        <div class="row_note">
                                            <%=service.Description %>
                                        </div>
                                    </div>
                                    <div class="price">$<%=service.Price %> </div>
                                </div>
                                <%} %>
                            </div>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>
            <div class="borderservices">
                
            </div>

            <%  } %>
            <!-- #endregion Nail Enhancements-->

        </div>
    </div>
</asp:Content>

