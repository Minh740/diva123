<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="ImageCategory.aspx.cs" Inherits="cp_page_image_category_ImageCatgory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .fileUpload {
            position: relative;
            width: fit-content;
        }

            .fileUpload .upload {
                position: absolute;
                top: 0;
                left: 0;
                margin: 0;
                padding: 0;
                width: 100%;
                height: 100%;
                cursor: pointer;
                opacity: 0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Images</li>
    </ol>
     
    <table class="table table-bordered">
        <tbody>
            <tr>
                <th class="text-center">ID</th>
                <th class="text-center" width="150px">Link</th>
                <th class="text-center">CategoryId</th>            
                <th colspan="2" class="text-center">Action</th>
            </tr>
            <%foreach (var category in listImage)
                {
            %>
            <tr>
                <td><%=category.ID%></td>
                 <td>
                    <img id="preview-image" width="200px" src="<%=category.Link %>" />
                </td>
                <td><%=category.CategoryTBx.ID%>-<%=category.CategoryTBx.Name %></td>
               
                <td class="text-center">
                    <button class="btn btn-info" onclick="edit(<%=category.ID%>)">
                        <i class="fa fa-edit" style="font-size: 15px; right: 10px"></i>
                    </button>
                   
                </td>
            </tr>

            <%} %>
          
        </tbody>
    </table>
    <script>
        function Delete(id) {
            alertify.confirm("Are you Delete", function () {
                $.post("/cp/do/imagecategory/delete.aspx", {
                    id: id,
                }, function (data) {
                    if (data == 1) {
                        alertify.alert("Success");
                    }
                    else {
                        alertify.alert("Error", data);
                    }
                })


            }
            );

        }
        function edit(id) {
           
            location.href = "/cp/page/image-category/Edit.aspx?id=" + id;
        }
    </script>
</asp:Content>

