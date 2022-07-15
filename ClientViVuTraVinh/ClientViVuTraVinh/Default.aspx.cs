using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm1 : BaseUIPage
    {
        public List<serviceSlider.Slider> sliders;
        public List<serviceDiaDiem.DiaDiem> diadiems;

        protected void Page_Init(object sender, EventArgs e)
        {
            sliders = svSlider.index().Data.ToList();
            diadiems = svDiaDiem.get3DiaDiem().Data.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}