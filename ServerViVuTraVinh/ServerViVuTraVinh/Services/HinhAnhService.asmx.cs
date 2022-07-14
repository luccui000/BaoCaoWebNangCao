using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using GroupDocs.Watermark;
using GroupDocs.Watermark.Watermarks;
using ServerViVuTraVinh.Helpers;  
using System.Drawing.Imaging;

namespace ServerViVuTraVinh.Services
{ 
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)] 
    public class HinhAnhService : BaseService
    { 
        [WebMethod]
        public JsonResponse<List<HinhAnh>> index()
        {
            var hinhanhs = db.HinhAnhs.ToList();
            var result = new List<HinhAnh>();
            foreach(var hinhanh in hinhanhs)
            { 
                result.Add(new HinhAnh()
                {
                    Id = hinhanh.Id,
                    DuongDan = this.getBaseUri() + hinhanh.DuongDan,
                    NgayTao = hinhanh.NgayTao,
                    NguoiTao = hinhanh.NguoiTao
                });
            }
            return new JsonResponse<List<HinhAnh>>()
            {
                Error = false,
                Message = "Lấy dữ liệu thành công",
                Data = result,
                StatusCode = 200
            };
        }
        private String getBaseUri()
        {
            return HttpContext.Current.Request.Url.Scheme + "://" +
                HttpContext.Current.Request.Url.Authority + 
                HttpContext.Current.Request.ApplicationPath.TrimEnd('/');
        }
        [WebMethod]
        public JsonResponse<string> store(string DuongDan, int NguoiTao)
        {
            try
            {
                db.HinhAnhs.InsertOnSubmit(
                    new HinhAnh() {
                        DuongDan = DuongDan,
                        NguoiTao = NguoiTao,
                        NgayTao = DateTime.Today
                    });
                db.SubmitChanges();
                return new JsonResponse<string>()
                {
                    Error = false,
                    Message = "Thêm hình ảnh thành công",
                    Data = "",
                    StatusCode = 200
                };
            } catch(Exception ex)
            {
                return new JsonResponse<string>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = "",
                    StatusCode = 200
                };
            } 
        }
        [WebMethod]
        public JsonResponse<String>uploadFile(byte[] f, string fileName)
        {
            try
            {
                MemoryStream ms = new MemoryStream(f);
                string fullPath = System.Web.Hosting.HostingEnvironment.MapPath("~/Resources/Upload/") + DateTime.Now.ToString("ddMMyyyy_HHmmss") + "_" + fileName; 
                FileStream fs = new FileStream(fullPath, FileMode.Create);
                ms.WriteTo(fs);
                ms.Close();
                fs.Close();
                fs.Dispose();  

                string FileName = "/Resources/Upload/" + Path.GetFileName(fs.Name);
                string targetImagepath = Path.GetDirectoryName(fs.Name);
                targetImagepath += "\\";
                targetImagepath += Path.GetFileNameWithoutExtension(fs.Name) + "_watermarked";
                targetImagepath += Path.GetExtension(fs.Name);
                // Save to Databjkjkjkk
                this.store(FileName, 1);
                return new JsonResponse<string>()
                {
                    Error = false,
                    Message = "Upload thành công",
                    Data = FileName
                };
            } catch(Exception ex)
            {
                return new JsonResponse<string>()
                {
                    Error = true,
                    Message = "Upload không thành công",
                    Data = ex.Message
                };
            }
        } 
        [WebMethod]
        public JsonResponse<bool> update(int Id, string DuongDan, int NguoiTao, string NgayTao = null)
        {
            try
            {
                HinhAnh ha = db.HinhAnhs.Single(h => h.Id == Id);
                ha.DuongDan = DuongDan;
                if (!string.IsNullOrEmpty(NgayTao))
                    ha.NgayTao = DateTime.Parse(NgayTao);
                ha.NguoiTao = NguoiTao;
                db.SubmitChanges();
                return new JsonResponse<bool>()
                {
                    Error = false,
                    Message = "Cập nhật hình ảnh thành công",
                    Data = true,
                    StatusCode = 200
                };
            }
            catch (Exception ex)
            {
                return new JsonResponse<bool>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = false,
                    StatusCode = 200
                };
            }
        }
        [WebMethod]
        public JsonResponse<bool> delete(int Id)
        {
            try
            {
                HinhAnh ha = db.HinhAnhs.FirstOrDefault(h => h.Id == Id);
                db.HinhAnhs.DeleteOnSubmit(ha);
                db.SubmitChanges();
                return new JsonResponse<bool>()
                {
                    Error = false,
                    Message = "Xoá hình ảnh thành công",
                    Data = true,
                    StatusCode = 200
                };
            }
            catch (Exception ex)
            {
                return new JsonResponse<bool>()
                {
                    Error = true,
                    Message = ex.Message,
                    Data = false,
                    StatusCode = 200
                };
            }
        }
    }
}
