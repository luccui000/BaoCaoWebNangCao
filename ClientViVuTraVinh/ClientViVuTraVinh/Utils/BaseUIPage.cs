using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClientViVuTraVinh.Utils
{
    public class BaseUIPage: System.Web.UI.Page
    {
        protected serviceHinhAnh.HinhAnhServiceSoapClient svHinhAnh = new serviceHinhAnh.HinhAnhServiceSoapClient();
        protected serviceDiaDiem.DiaDiemServiceSoapClient svDiaDiem = new serviceDiaDiem.DiaDiemServiceSoapClient();
        protected serviceDanhMuc.DanhMucServieSoapClient svDanhMuc = new serviceDanhMuc.DanhMucServieSoapClient();
        protected serviceGopY.HelperServiceSoapClient svGopY = new serviceGopY.HelperServiceSoapClient();
        protected serviceBinhLuan.BinhLuanServiceSoapClient svBinhLuan = new serviceBinhLuan.BinhLuanServiceSoapClient();
        protected serviceSlider.SliderServiceSoapClient svSlider = new serviceSlider.SliderServiceSoapClient();
    }
}