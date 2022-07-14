using ClientViVuTraVinh.Utils;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientViVuTraVinh
{
    public partial class WebForm5 : BaseUIPage
    {
        public List<serviceHinhAnh.HinhAnh> hinhanhs;

        protected void Page_Init(object sender, EventArgs e)
        {
            hinhanhs = svHinhAnh.index().Data.ToList();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {  
            var response = this.svHinhAnh.uploadFile(fileUpload.FileBytes, fileUpload.FileName);
            Response.Write(
                String.Format("<script>alert('{0}')</script>", response.Data)
            );
        } 
    }
}