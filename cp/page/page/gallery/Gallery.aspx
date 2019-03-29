<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="cp_page_gallery_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Gallery</li>
    </ol>
    <a class="btn btn-success" href="/cp-add-gallery">Add New Gallery</a>
    <table class="table table-bordered">
        <tbody>
            <tr>
                <th class="text-center">ID</th>
                <th class="text-center">Type</th>
                <th class="text-center">Link 1</th>
                <th class="text-center">Link 2</th>
                <th colspan="2" class="text-center">Action</th>
            </tr>
            <%foreach (var gallery in listGallery)
                {
            %>
            <tr>
                <td><%=gallery.ID%></td>
                <td><%=gallery.Type%></td>
                <td><%=gallery.Link%></td>
                <td><%=gallery.Link2%></td>
                <td class="text-center">
                    <a class="btn btn-info" href="/cp-edit-gallery-<%=gallery.ID %>">
                        <i class="fa fa-edit" style="font-size: 15px; right: 10px"></i>
                    </a>
                    <button class="btn" onclick="Delete(<%=gallery.ID%>)">
                        <i class="fa fa-trash" style="font-size: 15px"></i>
                    </button>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>
    <script>
        function Delete(id) {
            alertify.confirm("Are you sure Delete", function () {
                $.post("/cp/do/gallery/delete.aspx", {
                    id: id,
                }, function (data) {
                    if (data == 1) {
                        alertify.alert("Success");
                        location.href = "/cp/page/gallery/gallery.aspx";
                    }
                    else {
                        alertify.alert("Error", data);
                    }
                })

            });
        }
    </script>
</asp:Content>

