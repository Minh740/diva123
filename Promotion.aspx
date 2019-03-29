<%@ Page Title="Promotion" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Promotion.aspx.cs" Inherits="Promotion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
        <div class="bg_border">
            
        </div>
        <h2>Promotion:</h2>
        <%=promotion.PageContent %>
    </div>

</asp:Content>

