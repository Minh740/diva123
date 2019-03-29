<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="cp_page_category_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Category</li>
    </ol>
    <a class="btn btn-success" href="/cp-add-category">Add New Category</a>
    <table class="table table-bordered">
        <tbody>
            <tr>
                <th class="text-center">ID</th>
                <th class="text-center">Name</th>
                <th class="text-center">Parent</th>
                <th colspan="2" class="text-center">Action</th>
            </tr>
            <%foreach (var category in listCategory)
                {
            %>
            <tr>

                <td><%=category.ID%></td>
                <td><%=category.Name%></td>
                <td><%=category.ParentID%></td>
                <td class="text-center">
                    <a class="btn btn-info" href="/cp-edit-category-<%=category.ID %>">
                        <i class="fa fa-edit" style="font-size: 15px; right: 10px"></i>
                    </a>
                    <button class="btn" onclick="Delete(<%=category.ID%>)">
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
                $.post("/cp/do/category/delete.aspx", {
                    id: id,
                }, function (data) {
                    if (data == 1) {
                        alertify.alert("Success");
                        location.href = "/cp/page/category/Category.aspx";
                    }
                    else {
                        alertify.alert("Error", data);
                    }
                })

            });

        }
    </script>
</asp:Content>

