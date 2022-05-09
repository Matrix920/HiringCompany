<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCar.aspx.cs" Inherits="HireCompany.AddCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
New Car</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    
<div class="container-fluid mb-4">
    <div class="container">
        <div class="col-12 text-center contact_margin_svnit ">
            <div class="text-center fh5co_heading py-2">  Car Information </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-6">
                <form class="row" id="fh5co_contact_form" runat="server" method="post">
                    <div class="col-12 py-3">
                        <asp:TextBox ID="CarNumber" TextMode="Number"  placeholder="Car Number" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="CarNumber"></asp:RequiredFieldValidator>  
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="CarNumber" ValidationGroup="g" runat="server" ErrorMessage="type 6 digit number" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                    </div>
                    
                    <div class="col-12 py-3">
                        <asp:dropdownlist ID="GovernorateID" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:dropdownlist>
                    </div>

                    <div class="col-12 py-3">
                        <asp:dropdownlist ID="FactoryID" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:dropdownlist>
                    </div>
                    
                     <div class="col-12 py-3">
                        <asp:TextBox ID="Model" placeholder="Model" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Model"></asp:RequiredFieldValidator>  
                    </div>

                     <div class="col-12 py-3">
                        <asp:TextBox ID="Type" runat="server" placeholder="Type" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Type"></asp:RequiredFieldValidator>  
                    </div>

                     <div class="col-12 py-3">
                        <asp:TextBox ID="Color" runat="server" placeholder="Color" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Color"></asp:RequiredFieldValidator>  
                    </div>

                    <div class="col-12 py-3">
                        <asp:TextBox ID="Year"  TextMode="Number" placeholder="Year" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Year"></asp:RequiredFieldValidator>  
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Year" ValidationGroup="g" runat="server" ErrorMessage="type 4 digit number" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
                    </div>

                     <div class="col-12 py-3">
                        <asp:TextBox ID="Price" TextMode="Number"  placeholder="Price" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" empty field" ValidationGroup="g" ControlToValidate="Price"></asp:RequiredFieldValidator>  
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="Price" ValidationGroup="g" runat="server" ErrorMessage="type number" ValidationExpression="[0-9]*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-12 py-3 text-center"> <asp:button  runat="server" text="Save" ValidationGroup="g" CssClass="btn contact_btn" OnClick="SaveClick" />

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
