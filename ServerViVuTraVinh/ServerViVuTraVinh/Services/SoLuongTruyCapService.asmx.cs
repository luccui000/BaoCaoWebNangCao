using ServerViVuTraVinh.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServerViVuTraVinh.Services
{
    /// <summary>
    /// Summary description for SoLuongTruyCapService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SoLuongTruyCapService : BaseService
    {

        [WebMethod]
        public string create(int Type, int Id)
        {
            switch(Type)
            {
                case 1:
                    DemTheoDiaDiem(Id);
                    break;
                case 2:
                    DemTheoTrang();
                    break;
                default:
                    break;
            }
            return "Hello World";
        } 
        [WebMethod]
        public JsonResponse<int> topBaiViet()
        {
            var count = db.SoLuongTruyCaps.Where(e => e.LoaiDem == "DiaDiem").Max(e => e.SoLuong);
            return new JsonResponse<int>()
            {
                Error = false,
                Message = "",
                Data = count ?? 0
            };
        }
        [WebMethod]
        public JsonResponse<int> soLuongTruycapTrang()
        {
            var count = db.SoLuongTruyCaps.Where(e => e.LoaiDem == "Trang").First();
            return new JsonResponse<int>()
            {
                Error = false,
                Message = "",
                Data = count.SoLuong ?? 0
            };
        }
        private void DemTheoDiaDiem(int Id)
        {
            SoLuongTruyCap sl = db.SoLuongTruyCaps.FirstOrDefault(el => el.DiemTheoId == Id && el.LoaiDem == "DiaDiem");
             
            if(sl == null)
            {
                SoLuongTruyCap s = new SoLuongTruyCap();
                s.LoaiDem = "DiaDiem";
                s.DiemTheoId = Id;
                s.NgayLap = DateTime.Now;
                s.SoLuong = 1;
                db.SoLuongTruyCaps.InsertOnSubmit(s);
            } else
            {
                sl.SoLuong = sl.SoLuong + 1; 
            }
            db.SubmitChanges();
        }
        private void DemTheoTrang()
        {
            SoLuongTruyCap sl = db.SoLuongTruyCaps.FirstOrDefault(el => el.LoaiDem == "Trang");
            if(sl == null)
            {
                SoLuongTruyCap s = new SoLuongTruyCap();
                s.LoaiDem = "Trang";
                s.SoLuong = 1;
                s.NgayLap = DateTime.Now;
                db.SoLuongTruyCaps.InsertOnSubmit(s);
            } else
            {
                sl.SoLuong = sl.SoLuong + 1;  
            }
            db.SubmitChanges();
        }
    }
}
