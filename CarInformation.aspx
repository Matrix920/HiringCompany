<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="CarInformation.aspx.cs" Inherits="HireCompany.CarInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Car Information
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="container-fluid pt-3">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">car Information</div>
        </div>
        <div>
                   <table id="customers">
  <tr>
    <th> Property</th>
      <th>Value</th>
  </tr>
 <tr>
     <td>
         Car Number
     </td>
     <td>
         <asp:label ID="CarNumber" runat="server" text="Label"></asp:label>
     </td>
 </tr>
  
                       <tr>
     <td>
          Producer
     </td>
     <td>
         <asp:label ID="Producer" runat="server" text="Label"></asp:label>
     </td>
 </tr>
                       <tr>
     <td>
         Governorate
     </td>
     <td>
         <asp:label ID="Governorate" runat="server" text="Label"></asp:label>
     </td>
 </tr>

                       <tr>
     <td>
       Model
     </td>
     <td>
         <asp:label ID="Model" runat="server" text="Label"></asp:label>
     </td>
 </tr>

                       <tr>
     <td>
        Type
     </td>
     <td>
         <asp:label ID="Type" runat="server" text="Label"></asp:label>
     </td>
 </tr>

                       <tr>
     <td>
      Color
     </td>
     <td>
         <asp:label ID="Color" runat="server" text="Label"></asp:label>
     </td>
 </tr>

                       <tr>
     <td>
        Year
     </td>
     <td>
         <asp:label ID="Year" runat="server" text="Label"></asp:label>
     </td>
 </tr>

                       <tr>
     <td>
        Price Per Day
     </td>
     <td>
         <asp:label ID="Price" runat="server" text="Label"></asp:label>
     </td>
 </tr>

                     </table>
                </div>
            
            </div>
        </div>

    <div class="container-fluid pb-4 pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Pictures</div>
        </div>
        
            <!---->
           <asp:label runat="server" ID="UploadedPictures" text="No Pictures"></asp:label>
        <!---->
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
