using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServerViVuTraVinh.Helpers
{
    public class GDriveTokenInfo
    {
        public GDriveTokenInfo(String accessToken, int expiresIn, String tokenType)
        {
            this.AccessToken = accessToken;
            this.ExpiresIn = expiresIn;
            this.TokenType = tokenType;
        }
        public String AccessToken { get; set; }
        public int ExpiresIn { get; set; }
        public String TokenType { get; set; }

        public bool IsExpired()
        {
            return false;
        }
    }
}