using Google.Apis.Auth.OAuth2;
using Google.Apis.Drive.v3;
using Google.Apis.Services;
using Google.Apis.Util.Store;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;

namespace ServerViVuTraVinh.Helpers
{
    public class GoogleDrive
    {
        public void uploadFile(string fileName)
        {
            try
            {
                var service = this.Authorize();
                var response = process(service, fileName, "");
            } catch(Exception ex)
            { 
            }
        }
        private DriveService Authorize()
        {
            string[] scopes = new string[] {
                DriveService.Scope.Drive, 
                DriveService.Scope.DriveFile,
            };
            var clientId = "12345678-kiwwjelkrklsjdkljklaflkjsdjasdkhw.apps.googleusercontent.com";      // From https://console.developers.google.com  
            var clientSecret = "ksdklfklas2lskj_asdklfjaskla-";          // From https://console.developers.google.com  
                                                                         // here is where we Request the user to give us access, or use the Refresh Token that was previously stored in %AppData%  
            var credential = GoogleWebAuthorizationBroker.AuthorizeAsync(new ClientSecrets
            {
                ClientId = clientId,
                ClientSecret = clientSecret
            }, scopes,
            Environment.UserName, CancellationToken.None, new FileDataStore("MyAppsToken")).Result; 

            DriveService service = new DriveService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = "MyAppName", 
            });
            service.HttpClient.Timeout = TimeSpan.FromMinutes(100);
             
            return service;
        }
        public Google.Apis.Drive.v3.Data.File process(DriveService _service, string _uploadFile, string _parent, string _descrp = "Uploaded with .NET!")
        {
            if (System.IO.File.Exists(_uploadFile))
            {
                Google.Apis.Drive.v3.Data.File body = new Google.Apis.Drive.v3.Data.File();
                body.Name = System.IO.Path.GetFileName(_uploadFile);
                body.Description = _descrp;
                body.MimeType = MimeMapping.GetMimeMapping(_uploadFile); 
                byte[] byteArray = System.IO.File.ReadAllBytes(_uploadFile);
                System.IO.MemoryStream stream = new System.IO.MemoryStream(byteArray);
                try
                {
                    FilesResource.CreateMediaUpload request = _service.Files.Create(body, stream, MimeMapping.GetMimeMapping(_uploadFile));
                    request.SupportsTeamDrives = true; 
                    request.Upload();
                    return request.ResponseBody;
                }
                catch (Exception e)
                {
                    throw new Exception("Có lỗi xảy ra"); 
                }
            }
            else
            { 
                throw new Exception("File không tồn tại"); 
            }
        }
    }
}