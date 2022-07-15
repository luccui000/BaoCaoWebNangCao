<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ClientViVuTraVinh.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="gvGopY" runat="server" AutoGenerateColumns="false" CssClass="table table-hover">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Mã góp ý" />
                            <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
                            <asp:BoundField DataField="NoiDung" HeaderText="Nội dung góp ý" /> 
                            <asp:BoundField DataField="Email" HeaderText="Email" /> 
                            <asp:TemplateField HeaderText="Ngày gửi">
                                <ItemTemplate>
                                    <%#Eval("NgayLap","{0:dd/MM/yyyy}")%>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <asp:TemplateField HeaderText="Hành động">
                                <ItemTemplate> 
                                    <a 
                                        class="btn btn-primary btn-sm text-white btn-sendmail" 
                                        data-mail="<%# Eval("Email") %>" 
                                        data-hoten="<%# Eval("HoTen") %>"
                                        data-noidung="<%# Eval("NoiDung") %>"
                                        data-id="<%# Eval("Id") %>"
                                        data-toggle="modal" 
                                        data-target="#phanhoi"
                                        >
                                        <i class="fa fa-mail"></i>
                                        <span>Phản hồi</span>
                                    </a>  
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="modal fade" id="phanhoi" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document" style="min-width: 600px">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  <div class="row">
                      <div class="col-12">
                          <div class="form-group">
                              <asp:Label Text="Nội dung góp ý" runat="server" />
                              <p id="noidunggoy"></p>
                          </div>
                          <div class="form-group">
                              <asp:Label Text="Nội dung phản hồi" runat="server" />
                              <asp:HiddenField ID="txtEmail" runat="server" />
                              <asp:TextBox runat="server" ID="txtNoiDung" TextMode="MultiLine" CssClass="form-control" />
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-12 d-flex justify-content-end">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button> 
                          <asp:Button ID="btnPhanHoi" Text="Gửi phản hồi" runat="server" CssClass="btn btn-success ml-2" OnClick="btnPhanHoi_Click" />
                      </div>
                  </div>
              </div> 
            </div>
          </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script>
        $(document).ready(function() {
            document.querySelectorAll(".btn-sendmail")
                .forEach(el => {
                    el.addEventListener("click", function () {
                        const { id, mail, hoten, noidung } = $(el).data();
                        $("#exampleModalLabel").text("Phản hồi email #" + mail);
                        $("#noidunggoy").text(noidung)
                        $("#content_txtEmail").val(mail)
                    })
                })
        })
    </script>
</asp:Content>
