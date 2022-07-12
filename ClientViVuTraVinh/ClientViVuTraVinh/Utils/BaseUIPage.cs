using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClientViVuTraVinh.Utils
{
    public class BaseUIPage: System.Web.UI.Page
    {
        protected serviceHinhAnh.HinhAnhServiceSoapClient svHinhAnh = new serviceHinhAnh.HinhAnhServiceSoapClient();
    }
}