<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ClientViVuTraVinh.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="row">
        <div class="col-4">
            <a class="btn btn-success text-white" data-toggle="modal" data-target="#danhmuc">Thêm mới</a>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <ul class="list-group">
                        <% foreach (var danhmuc in danhmucs) {%>
                            <li class="list-group-item"><% Response.Write(danhmuc.TenDanhMuc); %></li>
                        <% } %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="danhmuc" tabindex="-1" role="dialog" >
      <div class="modal-dialog" role="document" style="min-width: 700px;">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Thêm mới danh mục</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-12">
                      <div class="form-group">
                          <asp:Label Text="Tên danh mục" runat="server" />
                          <asp:TextBox ID="txtTenDanhMuc" runat="server" CssClass="form-control" />
                      </div>
                      <div class="form-group">
                          <asp:Label Text="Mô tả" runat="server" />
                          <asp:TextBox ID="txtMoTa" runat="server" TextMode="MultiLine" CssClass="form-control" />
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-12 d-flex justify-content-end"> 
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                      <asp:Button Text="Lưu" runat="server" CssClass="btn btn-success ml-2" />
                  </div>
              </div>
          </div> 
        </div>
      </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
