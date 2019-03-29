<%@ Page Title="E-Gift" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Egift.aspx.cs" Inherits="Egift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <%=eGift.PageContent %>
    </div>
</asp:Content>

