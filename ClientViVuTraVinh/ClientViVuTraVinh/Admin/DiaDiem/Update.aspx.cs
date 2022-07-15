using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm12 : BaseUIPage
    {
        public List<serviceDanhMuc.DanhMuc> danhmucs;
        public List<serviceHinhAnh.HinhAnh> hinhanhs;

        protected void Page_Init(object sender, EventArgs e)
        {
            int DiaDiemId = int.Parse(Request.QueryString["Id"]);
            danhmucs = svDanhMuc.index().Data.ToList<serviceDanhMuc.DanhMuc>();
            hinhanhs = svHinhAnh.index().Data.ToList<serviceHinhAnh.HinhAnh>();

            var responseData = svDiaDiem.show(DiaDiemId).Data;
            txtTenDiaDiem.Text = responseData.TenDiaDiem;
            txtMoTa.Text = responseData.MoTa;
            txtDiaChi.Text = responseData.DiaChi;
            txtIframe.Text = responseData.Iframe;
            txtNoiDung.Text = responseData.NoiDung;
            txtHinhAnh.Value = responseData.HinhAnh;
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ddDanhMuc.DataSource = danhmucs;
            ddDanhMuc.DataTextField = "TenDanhMuc";
            ddDanhMuc.DataValueField = "Id";
            ddDanhMuc.DataBind();
        }
        protected void btnLuu_OnClick(object sender, EventArgs e)
        {
            String TenDiaDiem = txtTenDiaDiem.Text;
            String MoTa = txtMoTa.Text;
            String NoiDung = txtNoiDung.Text;
            String DiaChi = txtDiaChi.Text;
            String Iframe = txtIframe.Text;
            String HinhAnh = txtHinhAnh.Value;
            int DanhMucId = int.Parse(ddDanhMuc.SelectedValue);
            String NgayTao = DateTime.Now.ToString();
            var response = svDiaDiem.store(HinhAnh, DanhMucId, DiaChi, TenDiaDiem, 1, MoTa, NoiDung, NgayTao, "Đã công bố");
            if (response.Error)
            {
                Response.Write(String.Format("<script>alert({0})</script>", response.Message));
            }
            else
            {
                Response.Redirect("/Admin/DiaDiem/Index.aspx");
            }
        }
    }
}