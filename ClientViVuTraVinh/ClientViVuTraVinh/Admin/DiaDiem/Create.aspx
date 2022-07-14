<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="ClientViVuTraVinh.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-8">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:Label Text="Tên địa điểm" runat="server" />
                                        <asp:TextBox ID="txtTenDiaDiem" runat="server" placeholder="Nhập vào tên địa điểm" CssClass="form-control" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="vldtxtTenDiaDiem" runat="server" ErrorMessage="Vui lòng nhập vào tên địa điểm" ControlToValidate="txtTenDiaDiem" CssClass="text-danger text-sm"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:Label Text="Chọn danh mục" runat="server" />
                                        <asp:DropDownList runat="server" ID="ddDanhMuc" CssClass="form-control"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="vldddDanhMuc" runat="server" ErrorMessage="Vui lòng chọn danh mục" ControlToValidate="ddDanhMuc" CssClass="text-danger text-sm"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label Text="Mô tả" runat="server" />
                                <asp:TextBox ID="txtMoTa" runat="server" placeholder="Nhập vào mô tả" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vldtxtMoTa" runat="server" ErrorMessage="Vui lòng nhập vào mô tả" ControlToValidate="txtMoTa" CssClass="text-danger text-sm"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label Text="Địa chỉ bản đồ" runat="server" />
                                <asp:TextBox ID="txtIframe" runat="server" placeholder="Nhập vào iframe địa điểm trên google map" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label Text="Địa chỉ" runat="server" />
                                <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Nhập vào địa chỉ" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="vldtxtDiaChi" runat="server" ErrorMessage="Vui lòng nhập vào địa chỉ" ControlToValidate="txtDiaChi" CssClass="text-danger text-sm"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label Text="Mô tả địa điểm" runat="server" />
                                <asp:TextBox placeholder="Mô tả địa điểm" TextMode="MultiLine" ID="txtNoiDung" Rows="10" CssClass="form-control editor" runat="server"></asp:TextBox>
                            </div>
                            <asp:HiddenField runat="server" ID="txtHinhAnh" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body"> 
                            <h4>Hành động</h4>
                            <hr />
                            <asp:Button Text="Lưu" CssClass="btn btn-success" Width="100" runat="server" ID="btnLuu" OnClick="btnLuu_OnClick" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body"> 
                            <h4>Thêm ảnh bìa</h4>
                            <hr />
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#chonHinh">Chọn ảnh</button>
                            <div class="preview"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="chonHinh" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document" style="min-width: 1000px;">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Chọn hình ảnh</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body"> 
                  <div class="row">
                      <div class="col-12">
                          <div class="row">
                              <% foreach (var hinhanh in hinhanhs) { %> 
                                <div class="col-3">
                                    <img src="<% Response.Write(hinhanh.DuongDan); %>" class="w-100 hinhanh" />
                                </div> 
                              <% } %>
                          </div> 
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-12 d-flex justify-content-end">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                          <button type="button" class="btn btn-primary ml-2">Lưu</button>
                      </div>
                  </div>
              </div> 
            </div>
          </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script src="https://cdn.ckeditor.com/ckeditor5/33.0.0/classic/ckeditor.js"></script>
    <script>
        $(document).ready(function () {
            const editor = document.querySelector("#content_txtNoiDung")
            ClassicEditor
                .create(editor)
                .then(el => { 
                    console.log(el)
                })
                .catch(error => {
                    console.error( error );
                });
            document.querySelectorAll(".hinhanh")
                .forEach(el => {
                    el.addEventListener('click', function () {
                        if (window.confirm("Bạn đã chọn ảnh nảy làm ảnh bìa ?")) {
                            $("#content_txtHinhAnh").val($(el).attr('src'));
                            $(".preview").css({
                                'background-image': `url(${$(el).attr('src')})`,
                                'width': '100%',
                                'height': '200px',
                                'object-fit': 'cover',
                                'object-position': 'center',
                                'margin-top': '20px'
                            })
                            $("#chonHinh").modal("hide");
                        }
                    })
                })
        })
    </script>
</asp:Content>
