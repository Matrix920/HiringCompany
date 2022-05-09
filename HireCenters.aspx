<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HireCenters.aspx.cs" Inherits="HireCompany.HireCenters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Hire Centers
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

     <div class="container-fluid pt-3">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Hire Centers Information</div>
        </div>
        <div>
                   <table id="customers">
  <tr>
    <th> Governorate</th>
      <th>Description</th>
      <th>Region</th>
  </tr>
  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  
                     </table>
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
