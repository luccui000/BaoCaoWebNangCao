using ServerViVuTraVinh.Enums;
using ServerViVuTraVinh.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServerViVuTraVinh.Interfaces
{
    interface IGDriveApiV3Wrapper
    {
        string UploadFile(string filePath, string gDriveUploadDestinationFolderId = null); 
        bool SetFilePermissions(string fileId, GDriveFileRole gDriveRole, GDriveFileType gDriveType); 
        GDriveFile GetFileInfo(string fileId); 
    }
}
