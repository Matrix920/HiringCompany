<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HireCompany.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Rent Cars Company
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="container-fluid paddding mb-5">
    <div class="row mx-0">
        <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
            <div class="fh5co_suceefh5co_height"><img src="images/hire1.png" alt="img"/>
                <div class="fh5co_suceefh5co_height_position_absolute"></div>
                <div class="fh5co_suceefh5co_height_position_absolute_font">
                    <div class=""><a href="#" class="color_fff">
                    </a></div>
                    <div class=""><a href="single.html" class="fh5co_good_font"> </a></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/hire2.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"></a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/hire3.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"> </a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/hire4.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"></a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/hire5.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff">
                                 </a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2">  </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

 
<div class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4"> Company Information</div>
                </div>
                <div class="row pb-4">
                    <div class="col-md-5">
                        <div class="fh5co_hover_news_img">
                            <div class="fh5co_news_img"><img src="images/hire7.jpg" alt=""/></div>
                            <div></div>
                        </div>
                    </div>

                    <div class="col-md-7 animate-box">
                        <div class="fh5co_magna py-2">
                            <asp:Label ID="CompanyName" runat="server" Text="Label"></asp:Label>
                        </div> 
                        <div class="fh5co_mini_time py-3"> <asp:Label ID="Address" runat="server" Text="Label"></asp:Label> </div>
                        <div class="fh5co_consectetur"> <asp:Label ID="Phone" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
       
    </div>
</div>

    
<div class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Hire Centers Information</div>
                </div>
                <div class="row pb-4">
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
       
    </div>
</div>
</asp:Content>
