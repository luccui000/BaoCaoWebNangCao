using ServerViVuTraVinh.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ServerViVuTraVinh.Services
{
    /// <summary>
    /// Summary description for SliderService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SliderService : BaseService
    {

        [WebMethod]
        public JsonResponse<List<Slider>> index()
        {
            return new JsonResponse<List<Slider>>()
            {
                Error = false,
                Message = "",
                Data = db.Sliders.ToList()
            };
        }
        [WebMethod]
        public JsonResponse<bool> store(String TieuDeChinh, String TieuDePhu, String AnhNen)
        {
            try
            {
                Slider sl = new Slider()
                {
                    TieuDeChinh = TieuDeChinh,
                    TieuDePhu = TieuDePhu,
                    AnhNen = AnhNen,
                    NgayTao = DateTime.Now
                };
                db.Sliders.InsertOnSubmit(sl);
                db.SubmitChanges();

                return new JsonResponse<bool>()
                {
                    Error = false,
                    Message = "Thêm mới thành công",
                    Data = true
                };
            } catch(Exception ex)
            {
                return new JsonResponse<bool>()
                {
                    Error = true,
                    Message = "Thêm mới khong thành công",
                    Data = false
                };
            }
        }
        public JsonResponse<bool> delete(int Id)
        {
            Slider sl = db.Sliders.Where(el => el.Id == Id).First();
            if(sl == null)
            {
                return new JsonResponse<bool>()
                {
                    Error = true,
                    Message = "Không tồn tại id",
                    Data = false
                };
            } else
            {
                db.Sliders.DeleteOnSubmit(sl);
                return new JsonResponse<bool>()
                {
                    Error = false,
                    Message = "Xóa thành công",
                    Data = true
                };
            }
        }
    }
}
