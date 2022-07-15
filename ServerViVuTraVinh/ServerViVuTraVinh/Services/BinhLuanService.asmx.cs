using ServerViVuTraVinh.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServerViVuTraVinh.Services
{
    /// <summary>
    /// Summary description for BinhLuanService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class BinhLuanService : BaseService
    {

        [WebMethod]
        public JsonResponse<List<BinhLuan>> index()
        {
            try
            {  
                return new JsonResponse<List<BinhLuan>>()
                {
                    Error = false,
                    Message = "Lấy danh sách bình luận thành công",
                    Data = db.BinhLuans.ToList()
                }; 
            } catch(Exception ex)
            {
                return new JsonResponse<List<BinhLuan>>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = null
                };
            }
        }
        [WebMethod]
        public JsonResponse<String> store(int DiaDiemId, int TaiKhoanId, String NoiDung)
        {
            try
            {
                BinhLuan bl = new BinhLuan()
                {
                    DiaDiemId = DiaDiemId,
                    TaiKhoanId = TaiKhoanId,
                    NoiDung = NoiDung,
                    NgayBinhLuan = DateTime.Now,
                    TrangThai = 0
                };

                db.BinhLuans.InsertOnSubmit(bl);
                db.SubmitChanges();

                return new JsonResponse<String>()
                {
                    Error = false,
                    Message = "Thêm bình luận thành công",
                    Data = "Thêm bình luận thành công"
                };
            } catch(Exception ex)
            {
                return new JsonResponse<String>()
                {
                    Error = false,
                    Message = ex.Message,
                    Data = null
                };
            }
        } 
        [WebMethod]
        public JsonResponse<String> approve(int BinhLuanId)
        {
            try
            {
                var bl = db.BinhLuans.Single(el => el.Id == BinhLuanId);
                bl.TrangThai = 1;
                db.SubmitChanges();
                return new JsonResponse<string>()
                {
                    Error = false,
                    Message = "Duyệt thành công",
                    Data = "Duyệt thành công"
                };
            }
            catch (Exception ex)
            {
                return new JsonResponse<string>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = null
                };
            }
        }
        [WebMethod]
        public JsonResponse<List<BinhLuan>> findByDiaDiem(int DiaDiemId)
        {
            try
            {
                var binhluans = db.BinhLuans.Where(el => el.DiaDiemId == DiaDiemId).ToList();

                return new JsonResponse<List<BinhLuan>>()
                {
                    Error = false,
                    Message = "Lây danh sách bình luận thành công",
                    Data = binhluans
                };
            }
            catch (Exception ex)
            {
                return new JsonResponse<List<BinhLuan>>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = null
                };
            }
        }
        [WebMethod]
        public JsonResponse<String> delete(int BinhLuanId)
        {
            try
            {
                var bl = db.BinhLuans.Single(el => el.Id == BinhLuanId);
                db.BinhLuans.DeleteOnSubmit(bl);
                db.SubmitChanges();
                return new JsonResponse<string>()
                {
                    Error = false,
                    Message = "Xóa thành công",
                    Data = "Xóa thành công"
                };
            }
            catch (Exception ex)
            {
                return new JsonResponse<string>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = null
                };
            }
        }
    }
}
