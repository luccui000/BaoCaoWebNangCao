using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm11 : BaseUIPage
    {
        public List<serviceDanhMuc.DanhMuc> danhmucs;

        protected void Page_Init(object sender, EventArgs e)
        {
            danhmucs = svDanhMuc.index().Data.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}