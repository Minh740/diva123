﻿<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="cp_page_slider_Add" %>

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
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item"><a href="/cp-slider">Slider</a></li>
        <li class="breadcrumb-item active">Add New Slider</li>
    </ol>
    <div class="col-md-6 form-group">
        <label>Slider</label>
        <img src="" id="preview" width="100%" />
        <div class="fileUpload btn btn-info btn-upload">
            <span>+ Add Image</span>
            <input type="file" onchange="Preview(event,this)" accept="image/*" class="upload" />
        </div>
    </div>

    <div class="col-md-6 form-group">
        <label>Title</label>
        <input type="text" id="txtTitle" class="form-control" />
    </div>
    <div class="col-md-12 form-group">
        <label>Short Description</label>
        <textarea class="form-control tinymce" id="txtDescription"></textarea>
    </div>
    <div class="form-group">
        <a class="btn btn-danger" href="/cp-slider">Cancel</a>
        <button class="btn btn-info" onclick="Submit(this)">Submit</button>
    </div>
    <script>
        var base64 = "";
        function Preview(event) {
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
        };
        function Submit(input) {
            $(input).prop("disabled", true);
            $(input).text("Submitting");
            ShowLoading();
            var title = $("#txtTitle").val();
            var shortDesc = tinymce.get("txtDescription").getContent();
            $.ajax({
                url: "/cp/do/slider/add.aspx",
                method: "post",
                data: {
                    base64: base64,
                    title: title,
                    shortDesc: shortDesc
                },
                success: function (data) {
                    data = JSON.parse(data);
                    if (data.success == -1) {
                        console.log(data.error);
                        alertify.error("Error. Please try again");
                    } else {
                        location.href = "/cp-slider";
                    }
                    $(input).prop("disabled", false);
                    $(input).text("Submit");
                    HideLoading();
                },
                error: function (error) {
                    $(input).prop("disabled", false);
                    $(input).text("Submit");
                    console.log(error);
                    HideLoading();
                    alertify.error("Error. Please try again");
                }
            })
        }
    </script>
</asp:Content>

