using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlobFu;

namespace FileExchange.WebUpload {
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (IsPostBack && Request.Files.Keys.Count > 0) {

                BlobFuHelper.SaveFileToBlobStorage(
                    new BlobStorageRequest {
                        ConnectionStringName = "Blobs",
                        StreamOfDataToStore = Request.Files[0].InputStream,
                        Container = "FileUploads",
                        BlobSavedCallback = (x) => {
                            link.Text = string.Format("File uploaded to {0}", x.AbsoluteUri);
                            link.NavigateUrl = x.AbsoluteUri;

                        },

                        Filename = Path.GetFileName(Request.Files[0].FileName)

                    });

            }
        }

        protected void upload_Click(object sender, EventArgs e) {

        }
    }
}