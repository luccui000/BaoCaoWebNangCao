<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ClientViVuTraVinh.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12 d-flex justify-content-end">
                            <asp:HyperLink NavigateUrl="~/Admin/DiaDiem/Create.aspx" Text="Thêm mới" CssClass="btn btn-success" runat="server"></asp:HyperLink> 
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">  
                            <asp:GridView ID="grvDiaDiem" runat="server" CssClass="table table-bordered data-table" AutoGenerateColumns="false" > 
                                <Columns>
                                     <asp:BoundField DataField="Id" HeaderText="Mã địa điểm"/> 
                                     <asp:TemplateField HeaderText="Tên địa điểm">
                                         <ItemTemplate>
                                             <a href="/Admin/DiaDiem/ChiTiet.aspx?Id=<%# Eval("Id") %>"><%# Eval("TenDiaDiem") %></a>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:BoundField DataField="MoTa" HeaderText="Mô tả"/>  
                                     <asp:TemplateField HeaderText="Trạng thái">
                                         <ItemTemplate>
                                             <span class="badge <%# (Eval("TrangThai") != null && Eval("TrangThai")?.ToString() == "Đã công bố") ? "badge-success" : "badge-danger" %>" >
                                                 <%# Eval("TrangThai") %>
                                             </span>
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                    <asp:BoundField DataField="LuotXem" HeaderText="Lượt xem"/>  
                                    <asp:TemplateField HeaderText="Ngày tạo">
                                        <ItemTemplate>
                                            <%#Eval("NgayTao","{0:dd/MM/yyyy}")%>
                                        </ItemTemplate>
                                    </asp:TemplateField> 
                                     <asp:TemplateField HeaderText="Hành động">
                                        <ItemTemplate> 
                                            <a class="btn btn-primary btn-sm" href='/Admin/DiaDiem/Update.aspx?Id=<%# Eval("Id") %>'>
                                                <i class="fa fa-edit"></i>
                                                <span>Sửa</span>
                                            </a> 
                                            <a class="btn btn-danger btn-sm" href='/Admin/DiaDiem/Delete.aspx?Id=<%# Eval("Id") %>'>
                                                <i class="fa fa-trash"></i>
                                                <span>Xóa</span>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {  
            $("#content_grvDiaDiem").DataTable();
        })
    </script>
</asp:Content>
