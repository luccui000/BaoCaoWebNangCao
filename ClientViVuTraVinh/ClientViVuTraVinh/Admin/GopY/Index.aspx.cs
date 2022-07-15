using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm9 : BaseUIPage
    {
        public List<serviceGopY.GopY> gopys;
        
        protected void Page_Init(object sender, EventArgs e)
        {
            gopys = svGopY.gopys().Data.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gvGopY.DataSource = gopys;
            gvGopY.DataBind();
        }
        protected void btnPhanHoi_Click(object sender, EventArgs e)
        {
            String Email = txtEmail.Value;
            String NoiDung = txtNoiDung.Text;
            var response = svGopY.phanHoi(Email, NoiDung);
            if (response.Error)
            {
                Response.Write(String.Format("<script>alert('{0}')</script>", response.Message));
            }
            else
            {
                Response.Write(String.Format("<script>alert('{0}')</script>", "Email đã gửi thành công đến mail " + Email));
            }
        }
        
    }
}