using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm10 : BaseUIPage
    {
        public List<serviceBinhLuan.BinhLuan> binhluans;

        protected void Page_Init(object sender, EventArgs e)
        {
            binhluans = svBinhLuan.index().Data.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gvBinhLuan.DataSource = binhluans;
            gvBinhLuan.DataBind();
        }
    }
}