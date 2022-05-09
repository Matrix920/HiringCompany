<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="HireCompany.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Search
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <div class="container-fluid pt-3">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Search</div>
        </div>
        <div>
    <div class="s003">
                 <form runat="server">
        <div class="inner-form">
            <table id="customers">
                <tr>
                    <td>
          <div class="input-field first-wrap">
              
            <div class="input-select">
         <asp:DropDownList ID="SearchType" runat="server" CssClass="form-control fh5co_contact_text_box" AutoPostBack="true" OnSelectedIndexChanged="SearchType_SelectedIndexChanged">
             <asp:ListItem Text="Color" Value="Color"></asp:ListItem>
             <asp:ListItem Text="Type" Value="Type"></asp:ListItem>
             <asp:ListItem Text="Model" Value="Model"></asp:ListItem>
             <asp:ListItem Text="Producer" Value="Produer"></asp:ListItem>
              <asp:ListItem Text="Governorate" Value="Governorate"></asp:ListItem>
             <asp:ListItem Text="Year" Value="Year"></asp:ListItem>
         </asp:DropDownList>
            
            </div>
          </div>
                    </td>
                    <td>
           <div class="input-select"> 
              
                 <asp:TextBox ID="Model" Visible="false"  placeholder="Model" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
               <asp:TextBox ID="Type" Visible="false"  placeholder="Type" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
               <asp:TextBox ID="Color" Visible="true"  placeholder="Color" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
               <asp:TextBox ID="Year" Visible="false"  placeholder="Year" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:TextBox>
                <asp:dropdownlist Visible="false" AutoPostBack="true" ID="GovernorateID" OnSelectedIndexChanged="GovernorateID_SelectedIndexChanged" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:dropdownlist>
                <asp:dropdownlist Visible="false" AutoPostBack="true" OnSelectedIndexChanged="FactoryID_SelectedIndexChanged" ID="FactoryID" runat="server" CssClass="form-control fh5co_contact_text_box"></asp:dropdownlist>

                  
          </div>
                    </td>
                  
                    <td>
                            <div class="col-12 py-3 text-center"> <asp:button  runat="server" ID="SearchButton" text="Searc"   CssClass="btn btn-info" OnClick="Search_Click" />

                    </div>
            </tr>
            </table>
        </div>
      </form>
             </div>
        </div>
    </div>
    </div>
  <div class="container-fluid pt-3">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">cars</div>
        </div>
        <div>
                   <table id="customers">
  <tr>
    <th> Producer</th>
      <th>Model</th>
      <th>Type</th>
       <th>Price per Day</th>
    <th>   Details</th>
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
