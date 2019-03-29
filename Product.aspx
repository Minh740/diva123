<%@ Page Title="Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
        <div class="bg_border">
            
        </div>
        <h3 style="text-align: center; font-family: 'Courgette', cursive; font-size: 20px">We use organic products for pedicure, liners </h3>
        <div class="products">
            <%foreach (var product in listProduct)
                {%>
            <div class="progroup">
                <img src="/upload/product/product_<%=product.ID %>.jpg">
                <div class="proname"><%=product.Name %></div>
            </div>
            <%} %>
        </div>
    </div>
</asp:Content>

