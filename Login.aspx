<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HireCompany.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
      <div class="container-fluid mb-4">
    <div class="container">
        <div class="col-12 text-center contact_margin_svnit ">
            <div class="text-center fh5co_heading py-2"> </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6">
                <form class="row" id="fh5co_contact_form" runat="server">
                    <div class="col-12 py-3">
                        <asp:TextBox ID="Username"  CssClass="form-control fh5co_contact_text_box" placeholder="Usrename" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Username"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-12 py-3">
                        <asp:TextBox ID="Password"  CssClass="form-control fh5co_contact_text_box" placeholder=" password " TextMode="Password" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-12 py-3 text-center"> <asp:Button ValidationGroup="g" runat="server" ID="login" OnClick="login_Click" Text=" Login"  CssClass="btn contact_btn"></asp:Button> </div>
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
