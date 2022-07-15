<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ClientViVuTraVinh.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="gvBinhLuan" runat="server" AutoGenerateColumns="false" CssClass="table table-hover">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Mã bình luận" />
                            <asp:BoundField DataField="TaiKhoan.HoTen" HeaderText="Họ tên" />
                            <asp:BoundField DataField="NoiDung" HeaderText="Nội dung bình luận" />  
                            <asp:TemplateField HeaderText="Ngày gửi">
                                <ItemTemplate>
                                    <%#Eval("NgayBinhLuan","{0:dd/MM/yyyy}")%>
                                </ItemTemplate>
                            </asp:TemplateField> 
                            <asp:TemplateField HeaderText="Trạng thái">
                                <ItemTemplate>
                                    <span class="badge <%# (Eval("TrangThai") != null && Eval("TrangThai").ToString() == "1") ? "badge-success" : "badge-danger" %>" >
                                        <%# (Eval("TrangThai") != null && Eval("TrangThai").ToString() == "1") ? "Đã duyệt" : "Chưa duyệt" %>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ButtonField  runat="server" DataTextField="Id" DataTextFormatString="Duyệt" HeaderText="Hành động"  ControlStyle-CssClass="btn btn-success "/> 
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
