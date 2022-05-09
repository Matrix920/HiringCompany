<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddPicture.aspx.cs" Inherits="HireCompany.AddPicture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Upload Picture
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    
<div class="container-fluid mb-4">
    <div class="container">
        <div class="col-12 text-center contact_margin_svnit ">
            <div class="text-center fh5co_heading py-2">Upload Picture </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6">
                <form id="fh5co_contact_form" runat="server">
                  
                   
                    <div class="col-12 py-3">
    <asp:FileUpload ID="PictureFile" runat="server"  CssClass="form-control fh5co_contact_text_box" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="PictureFile"></asp:RequiredFieldValidator>  

                    </div>
                    
                    <div class="col-12 py-3 text-center">  
                        
                      <asp:Button ID="SavePictre" ValidationGroup="g" OnClick="SavePictre_Click" CssClass="btn contact_btn" runat="server" Text="Save" />
                    </div>


                      <div class="col-12 py-3 text-center">  <asp:label ID="UploadResult" runat="server"  CssClass="form-control fh5co_contact_text_box"></asp:label> </div>
                </form>
            </div>
            
        </div>
    </div>
</div>
</asp:Content>
