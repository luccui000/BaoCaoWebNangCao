using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm6 : BaseUIPage
    {
        protected List<serviceDiaDiem.DiaDiem> diadiems;

        protected void Page_Init()
        {
            var response = svDiaDiem.index();
            diadiems = response.Data.ToList<serviceDiaDiem.DiaDiem>();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            grvDiaDiem.DataSource = diadiems;
            grvDiaDiem.DataBind();
        }
    }
}