<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="cp_page_image_category_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Images</li>
    </ol>
      <div class="col-md-12">
        <div class="col-md-4">
            <label>Image</label>
            <div class="fileUpload btn btn-upload">
                <span>+ Thêm ảnh</span>
                <input type="file" onchange="Preview(event,this)" accept="image/*" class="upload" />
            </div>
        </div>
            <div class="col-md-12">
            <img src="<%=image.Link%>" id="preview" width="300px" />
        </div>
    </div>
     <div class="col-md-12 form-group">
        <label>Category</label>
       
    </div>
      
        <%--  <div>
                   <select id="txtCatId">
                       <%for (int i = 0; i < listCat.Count; i++)
                           {%>
                       <option value="<%=listCat[i].ID %>"><%=listCat[i].Name %> </option>
                         <%  } %>
                   </select>
                 </div>--%>
      <div class="col-md-12">
        <button class="btn btn-info" onclick="UploadBanner(this,<%=image.ID %>)">Submit</button>
        <a class="btn btn-danger" href="/cp/page/image-category/ImageCategory.aspx">Cancel</a>
    </div>

   <script>
        var base64 = "";


        function Preview(event, ip) {
            var input = event.target;
            if (input.files) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    base64 = e.target.result.replace(/^data:image\/[a-z]+;base64,/, "");
                    $("#preview").attr("src", e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        function UploadBanner(input, id) {
            var cat = $("#txtCatId").val();
            

            if (base64 == "") {
                alert("Please choose the image ");
            } else {
                $(input).text("Loading...");
                $(input).prop("disabled", true);
                try {
                    $.post("/cp/do/imagecategory/edit.aspx", {
                        base64: base64,
                        cat: cat,
                       id:id,
                    }, function (data) {
                        data = JSON.parse(data);
                        if (data.success == -1) {
                            alert("Error");
                            console.log(data.error);
                        } else {
                            location.href="/cp/page/image-category/ImageCategory.aspx";
                        }
                        $(input).text("Upload");
                        $(input).prop("disabled", false);
                    })
                } catch (e) {
                    alert("Success");
                    console.log(e);
                    $(input).text("Upload");
                    $(input).prop("disabled", false);
                }
            }
        }
    </script>

</asp:Content>

