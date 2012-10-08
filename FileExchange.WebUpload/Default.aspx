<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FileExchange.WebUpload._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Azure File Exchange</h1>
            </hgroup>
            <p>
                This program enables the exchange of large files using Azure blob storage.
             </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <%--<form id="uploadform" runat="server" enctype="multipart/form-data">--%>
        <div>
            <input type="file" id="fileupload" runat="server" />
            <input type="submit"  runat="server"/>
        </div>

    <%--</form>--%>

        <asp:HyperLink ID="link" runat="server"></asp:HyperLink>


    <h3>Instruction go below:</h3>
    <ol class="round">
        <li class="one">
            <h5>Add File</h5>
            Click the Browse button to add the file you want to upload.
        </li>
        <li class="two">
            <h5>Upload the File</h5>
            Click the upload button to upload the file.
        </li>
        <li class="three">
            <h5>Share</h5>
            Once the file is upload a download link will appear, share this link with whomever you want to allow access to the file.
        </li>
    </ol>
</asp:Content>
