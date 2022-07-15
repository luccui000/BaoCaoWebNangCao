using ServerViVuTraVinh.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Services;

namespace ServerViVuTraVinh.Services
{
    /// <summary>
    /// Summary description for HelperService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class HelperService : BaseService
    {
        NetworkCredential login;
        SmtpClient client;
        MailMessage msg;

        [WebMethod] 
        public JsonResponse<List<GopY>> gopys()
        {
            return new JsonResponse<List<GopY>>()
            {
                Error = false,
                Message = "Lay thanh cong",
                Data = db.Gopies.ToList()
            };
        }
        [WebMethod] 
        public JsonResponse<String> GopY(String HoTen, String Email, String NoiDung, String NgayLap)
        {
            GopY gy = new GopY()
            {
                HoTen = HoTen,
                Email = Email,
                NoiDung = NoiDung,
                NgayLap = DateTime.Parse(NgayLap)
            };
            db.Gopies.InsertOnSubmit(gy);
            db.SubmitChanges();

            return new JsonResponse<string>()
            { 
                Error = false,
                Message = "",
                Data = "Thêm mới thành công"
            };
        }
        [WebMethod]
        public JsonResponse<String> phanHoi(String Email, String NoiDung)
        {
            String HOST = "smtp.mailtrap.io";
            int PORT = 2525;
            String USERNAME = "88c070d679981f";
            String PASSWORD = "3a58d16549b7b6";
            // String TLS = "STARTTLS";
            // String EMAIL_ADDRESS = "admin@vivutravinh.com";

            login = new NetworkCredential(USERNAME, PASSWORD);
            client = new SmtpClient(HOST);
            client.Port = PORT;
            client.EnableSsl = false;
            client.Credentials = login; 

            msg = new MailMessage { From = new MailAddress(USERNAME + HOST.Replace("smtp.", "@"), "Minh Luc", Encoding.UTF8) };
            msg.To.Add(new MailAddress(Email.Trim()));
            msg.Subject = "Phản hồi góp ý từ ViVuTraVinh";
            msg.Body = NoiDung;
            msg.BodyEncoding = Encoding.UTF8;
            msg.IsBodyHtml = true;
            msg.Priority = MailPriority.Normal;
            msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure; 
            client.Send(msg);
            // client.SendCompleted += new SendCompletedEventHandler((object sender, AsyncCompletedEventArgs e) => {  });

            return new JsonResponse<string>()
            {
                Error = false,
                Message = "",
                Data = "",
            };
        }
    }
}
