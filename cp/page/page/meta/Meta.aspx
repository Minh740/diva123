<%@ Page Title="" Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true" CodeFile="Meta.aspx.cs" Inherits="cp_page_meta_Meta" %>

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
        <li class="breadcrumb-item active">Meta</li>
    </ol>

    <button class="btn btn-success" onclick="location.href='/cp/page/meta/Add.aspx'">Add New Meta</button>
    <p></p>

    <table class="table table-bordered">
        <tbody>
            <tr>
               
          
                <th class="text-center">Title</th>
                 <th class="text-center">Name</th>
                <th class="text-center">GroupCode</th>
                <th class="text-center">GroupName</th>
                <th class="text-center">IconURL</th>
                <th colspan="2" class="text-center">Action</th>
            </tr>

            <%for (int i = listMeta.Count - 1; i > -1; i--)
                { %>
            <tr>

              
            
                <td><%=listMeta[i].Title%></td>

                 <td><%=listMeta[i].Name%></td>
                <td><%=listMeta[i].GroupName%></td>
                <td><%=listMeta[i].GroupCode%></td>
                <td> 
                    <img  src="<%=listMeta[i].IconURL%>" width="100px" />
                </td>

                <td class="text-center">
                    <button type="button"><i class="fa fa-edit" style="font-size: 15px; right: 10px" onclick="Edit(<%=listMeta[i].Id%>)"></i></button>
                    <button type="button"><i class="fa fa-trash" style="font-size: 15px" onclick="clickdelete(<%=listMeta[i].Id%>)"></i></button>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>
    <script>
        function clickdelete(id) {
            alertify.confirm('Are you sure you want to DELETE this?', function () {
                $.post("/cp/do/meta/delete.aspx", {
                    id: id,

                }, function (data) {

                    if (data == 1) {
                        alertify.success('Deleted!');
                        // refresh page
                        location.reload();
                    } else {
                        alertify.alert(data);
                    }
                });
            })
        }
        function Edit(id) {
            location.href = "/cp/page/meta/Edit.aspx?id=" + id;
        }

    </script>

</asp:Content>

