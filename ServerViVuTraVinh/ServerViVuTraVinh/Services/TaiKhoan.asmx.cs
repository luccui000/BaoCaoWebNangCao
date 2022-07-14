using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace ServerViVuTraVinh.Services
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class TaiKhoan : System.Web.Services.WebService
    {
        private const string GOOGLE_OAUTH = "https://accounts.google.com/o/oauth2/token";
        private const string GOOGLE_CLIENT_ID = "1045507496301-l771ajrdprcf8i7nmqt9sho4ta48t5nm.apps.googleusercontent.com";
        private const string GOOGLE_CLIENT_SECRET = "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";
        private const string GOOGLE_REDIRECT_URI = "http://localhost:49219/Auth/Google/Callback.aspx";

        [WebMethod]
        public String getGoogleAuthUrl()
        {
            return this.getGoogleOAuth();
        }
        [WebMethod]
        public UserInfo loginWithGoogle(string code)
        {
            string token = this.getToken(code);
            return this.getUserInfo(token);
        }

        public string getGoogleOAuth()
        {
            return String.Format("https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri={0}&response_type=code&client_id={1}", GOOGLE_REDIRECT_URI, GOOGLE_CLIENT_ID);
        }
        public string getToken(string code)
        {
            string poststring = String.Format("grant_type=authorization_code&code={0}&client_id={1}&client_secret={2}&redirect_uri={3}",
                code, GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET, GOOGLE_REDIRECT_URI);
            var request = (HttpWebRequest)WebRequest.Create(GOOGLE_OAUTH);
            request.ContentType = "application/x-www-form-urlencoded";
            request.Method = "POST";
            UTF8Encoding utfenc = new UTF8Encoding();
            byte[] bytes = utfenc.GetBytes(poststring);
            Stream outputstream = null;
            try
            {
                request.ContentLength = bytes.Length;
                outputstream = request.GetRequestStream();
                outputstream.Write(bytes, 0, bytes.Length);
            }
            catch { }
            var response = (HttpWebResponse)request.GetResponse();
            var streamReader = new StreamReader(response.GetResponseStream());
            string responseFromServer = streamReader.ReadToEnd();
            JavaScriptSerializer js = new JavaScriptSerializer();
            GoogleToken obj = js.Deserialize<GoogleToken>(responseFromServer);
            return obj.access_token;
        }
        public UserInfo getUserInfo(string accessToken)
        {
            string url = String.Format("https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token={0}", accessToken);
            WebRequest request = WebRequest.Create(url);
            request.Credentials = CredentialCache.DefaultCredentials;
            WebResponse response = request.GetResponse();
            Stream dataStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string responseFromServer = reader.ReadToEnd();
            reader.Close();
            response.Close();
            JavaScriptSerializer js = new JavaScriptSerializer();
            UserInfo userinfo = js.Deserialize<UserInfo>(responseFromServer);
            return userinfo;
        }
    }
    public class GoogleToken
    {
        public string access_token
        {
            get;
            set;
        }
        public string token_type
        {
            get;
            set;
        }
        public int expires_in
        {
            get;
            set;
        }
        public string refresh_token
        {
            get;
            set;
        }
    }
    public class UserInfo
    {
        public string id
        {
            get;
            set;
        }
        public string name
        {
            get;
            set;
        }
        public string given_name
        {
            get;
            set;
        }
        public string family_name
        {
            get;
            set;
        }
        public string link
        {
            get;
            set;
        }
        public string picture
        {
            get;
            set;
        }
        public string gender
        {
            get;
            set;
        }
        public string locale
        {
            get;
            set;
        }
    }
}
