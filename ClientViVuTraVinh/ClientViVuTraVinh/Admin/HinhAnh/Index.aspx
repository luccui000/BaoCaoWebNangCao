<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ClientViVuTraVinh.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server"> 
    <div class="row">
        <div class="col-12 d-flex justify-content-end">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#add">Thêm mới</button>
            <button class="btn btn-danger ml-2">Xóa</button>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <% foreach (var hinhanh in hinhanhs)  { %>
                            <div class="col-2">
                                <img src="<% Response.Write(hinhanh.DuongDan); %>" alt="Alternate Text" class="w-100" />
                            </div>
                        <%} %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="add" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Thêm mới hình ảnh</h3>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <asp:Label Text="Chọn hình ảnh" runat="server" />
                                <asp:FileUpload ID="fileUpload" runat="server" />
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 d-flex justify-content-end">
                            <asp:Button ID="btnUpload" Text="Thêm mới" CssClass="btn btn-primary" runat="server" OnClick="btnUpload_Click" />
                        </div>
                    </div> 
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
