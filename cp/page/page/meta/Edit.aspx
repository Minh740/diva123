<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="cp_page_meta_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item"><a href="Meta.aspx">Meta</a></li>
        <li class="breadcrumb-item active">Edit Meta</li>
    </ol>
    <form>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                    <div class="form-label-group">
                        <input type="text" id="txtName" class="form-control" placeholder="Name" value="<%=editmeta.Name %>" autofocus="autofocus" />
                        <label for="txtName">Name</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-label-group">
                        <input type="text" id="txtTitle" class="form-control" value="<%=editmeta.Title %>" placeholder="Title" />
                        <label for="txtTitle">Title</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <label for="txtDesc">Description</label>
                    <div class="form-label-group">
                        <textarea class="tinymce required" id="txtDesc"><%=editmeta.Description %></textarea>


                    </div>

                </div>

            </div>
        </div>
      
        
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <div class="form-label-group">
                        <input type="text" id="txtGroupName" class="form-control" placeholder="GroupName" value="<%=editmeta.GroupName %>" required="required" autofocus="autofocus" />
                        <label for="txtGroupName">GroupName</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <div class="col-md-12">
                    <label for="txtGroupCode">GroupCode</label>
                    <div class="form-label-group">
                     <textarea class="tinymce required" id="txtGroupCode"><%=editmeta.GroupCode %></textarea>
                        
                    </div>
                </div>
            </div>
        </div>

          <div class="form-group">
            <div class="form-row">
            <div class="col-md-12">
             <label  class="">IconURL</label>
                <div class="fileUpload btn btn-upload">
                 
                    <span style="color:aqua">+ Thêm ảnh</span>
                    <input type="file" onchange="Preview(event,this)" value="<%=editmeta.IconURL %>" accept="image/*" class="upload" />
                </div>
               <img  src="<%=editmeta.IconURL%>" id="preview" width="100px" />
            </div>
      </div>
            </div>

        <button type="button" class="btn btn-primary" onclick="Upload(<%=editmeta.Id%>,this)">Submit</button>
        <button type="button" class="btn btn-danger" onclick="Cancel()">Cancel</button>
    </form>
    <script>
          function Cancel() {
            location.href = "/cp/page/meta/Meta.aspx";
        } 
      
            var base64 = "";
        function Preview(event, ip) {
            var input = event.target;
            if (input.files) {
                var reader = new FileReader();
                reader.fileName = input.files[0].name;
                reader.onload = function (e) {
                    base64 = e.target.result.replace(/^data:image\/[a-z]+;base64,/, "");
                    $("#preview").attr("src", e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        } function Upload(id, input) {
            $(input).prop("disabled", true);
            
         var name = $("#txtName").val();
            var title = $("#txtTitle").val();
            var desc = tinymce.get("txtDesc").getContent();
            var groupcode = tinymce.get("txtGroupCode").getContent();
            var groupname = $("#txtGroupName").val();
            $.ajax({
                url: "/cp/do/meta/edit.aspx",
                method: "post",
                data: {
                    id: id,
                    base64: base64,
                    name: name,
                    title: title,
                    desc: desc,

                    groupname: groupname,
                    groupcode: groupcode,
                    

                },
                success: function (data) {
                    data = JSON.parse(data);
                    if (data.success == -1) {
                        console.log(data.error);
                        alertify.error("Error. Please try again");
                    } else {
                          alertify.alert("Success");
                        //location.href = "/cp/page/meta/Meta.aspx";
                      
                    }
                },
                error: function (error) {
                    console.log(error);
                    alertify.error("Error. Please try again");
                }
            })
        }

      
        

           
    </script>
</asp:Content>

