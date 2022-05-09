<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCarFactory.aspx.cs" Inherits="HireCompany.AddCarFactory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
New Car Producer</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    
<div class="container-fluid mb-4">
    <div class="container">
        <div class="col-12 text-center contact_margin_svnit ">
            <div class="text-center fh5co_heading py-2"> Car Producer Information </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6">
                <form class="row" id="fh5co_contact_form" runat="server" method="post">
                    <div class="col-12 py-3">
                        <asp:TextBox ID="ProducerName"  placeholder="Producer Name" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="ProducerName"></asp:RequiredFieldValidator>  
                    </div>
                    
                    

                     
                    <div class="col-12 py-3 text-center"> <asp:button  runat="server" ID="Save" text="Save" ValidationGroup="g" CssClass="btn contact_btn" OnClick="Save_Click" />

                    </div>
                </form>
            </div>
            
        </div>
    </div>
</div>

 <div class="container-fluid pt-3">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4"></div>
        </div>
        
    </div>
 </div>
</asp:Content>
