<%@ Page Title="" Language="C#" MasterPageFile="~/App.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClientViVuTraVinh.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
      <div id="content-wrap">
                    <div id="site-content" class="site-content clearfix">
                        <div id="inner-content" class="inner-content-wrap">
                           <div class="page-content">
                               <!-- SLIDER -->
                                <div class="rev_slider_wrapper fullwidthbanner-container">
                                    <div id="rev-slider1" class="rev_slider fullwidthabanner">
                                        <ul> 
                                            <% foreach (var slider in sliders)  { %>
                                                <li data-transition="random">
                                                    <!-- Main Image -->
                                                    <img src="<% Response.Write(slider.AnhNen); %>" alt="" data-bgposition="center center" data-no-retina>
                                           
                                                    <!-- Layers -->
                                                    <div class="tp-caption tp-resizeme text-white font-heading font-weight-600"
                                                        data-x="['left','left','left','center']" data-hoffset="['34','34','34','0']"
                                                        data-y="['middle','middle','middle','middle']" data-voffset="['-134','-134','-134','-134']"
                                                        data-fontsize="['20','20','20','16']"
                                                        data-lineheight="['70','70','40','24']"
                                                        data-width="full"
                                                        data-height="none"
                                                        data-whitespace="normal"
                                                        data-transform_idle="o:1;"
                                                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                                        data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                                        data-mask_in="x:0px;y:[100%];" 
                                                        data-mask_out="x:inherit;y:inherit;" 
                                                        data-start="700" 
                                                        data-splitin="none" 
                                                        data-splitout="none" 
                                                        data-responsive_offset="on">
                                                        <% Response.Write(slider.TieuDePhu); %>
                                                    </div>

                                                    <div class="tp-caption tp-resizeme text-white font-heading font-weight-700"
                                                        data-x="['left','left','left','center']" data-hoffset="['34','34','34','0']"
                                                        data-y="['middle','middle','middle','middle']" data-voffset="['-63','-63','-63','-63']"
                                                        data-fontsize="['52','52','42','32']"
                                                        data-lineheight="['65','65','45','35']"
                                                        data-width="full"
                                                        data-height="none"
                                                        data-whitespace="normal"
                                                        data-transform_idle="o:1;"
                                                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                                        data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                                        data-mask_in="x:0px;y:[100%];" 
                                                        data-mask_out="x:inherit;y:inherit;" 
                                                        data-start="1000" 
                                                        data-splitin="none" 
                                                        data-splitout="none" 
                                                        data-responsive_offset="on">
                                                        <% Response.Write(slider.TieuDeChinh); %>
                                                    </div> 

                                                    <div class="tp-caption"
                                                        data-x="['left','left','left','center']" data-hoffset="['34','34','34','0']"
                                                        data-y="['middle','middle','middle','middle']" data-voffset="['106','106','106','106']"
                                                        data-width="full"
                                                        data-height="none"
                                                        data-whitespace="normal"
                                                        data-transform_idle="o:1;"
                                                        data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
                                                        data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                                                        data-mask_in="x:0px;y:[100%];" 
                                                        data-mask_out="x:inherit;y:inherit;" 
                                                        data-start="1000" 
                                                        data-splitin="none" 
                                                        data-splitout="none" 
                                                        data-responsive_offset="on">
                                                        <a href="#" class="themesflat-button bg-accent big"><span>Xem thêm</span></a>
                                                    </div>
                                                </li>
                                            <%} %> 
                                        </ul>
                                    </div> 
                                </div>
                                <!-- END SLIDER -->

                                <!-- ICONBOX -->
                                <div class="row-iconbox">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="themesflat-spacer clearfix" data-desktop="60" data-mobile="60" data-smobile="60"></div>
                                                <div class="themesflat-headings style-1 text-center clearfix">
                                                    <h2 class="heading">Những gì người ta nói về Trà Vinh</h2>
                                                    <div class="sep has-icon width-125 clearfix">
                                                        <div class="sep-icon">
                                                            <span class="sep-icon-before sep-center sep-solid"></span>
                                                            <span class="icon-wrap"><i class="autora-icon-build"></i></span>
                                                            <span class="sep-icon-after sep-center sep-solid"></span>
                                                        </div>
                                                    </div>
                                                    <p class="sub-heading"></p>
                                                </div>
                                                <div class="themesflat-spacer clearfix" data-desktop="42" data-mobile="35" data-smobile="35"></div>
                                            </div><!-- /.col-md-12 -->
                                        </div><!-- /.row -->

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="themesflat-content-box clearfix" data-margin="0 5px 0 5px" data-mobilemargin="0 0 0 0">
                                                    <div class="themesflat-icon-box icon-top align-center has-width w95 circle light-bg accent-color style-1 clearfix">
                                                        <div class="icon-wrap">
                                                            <i class="autora-icon-quality"></i>
                                                        </div>
                                                        <div class="text-wrap">
                                                            <h5 class="heading"><a href="#">THÂN THIỆN</a></h5>
                                                            <div class="sep clearfix"></div>
                                                            <p class="sub-heading">Autora Construction Services are committed to meeting the highest quality standards without compromising our safety culture..</p>
                                                        </div>
                                                    </div><!-- /.themesflat-icon-box -->
                                                </div><!-- /.themesflat-content-box -->                                         
                                            </div><!-- /.col-md-4 -->
                                            <div class="col-md-4">
                                                <div class="themesflat-spacer clearfix" data-desktop="0" data-mobile="0" data-smobile="35"></div>
                                                <div class="themesflat-content-box clearfix" data-margin="0 5px 0 5px" data-mobilemargin="0 0 0 0">
                                                    <div class="themesflat-icon-box icon-top align-center has-width w95 circle light-bg accent-color style-1 clearfix">
                                                        <div class="icon-wrap">
                                                            <i class="autora-icon-time"></i>
                                                        </div>
                                                        <div class="text-wrap">
                                                            <h5 class="heading"><a href="#">HIẾU KHÁCH</a></h5>
                                                            <div class="sep clearfix"></div>
                                                            <p class="sub-heading">At our company, we respect the customer’s time and schedule and always complete the projects on timely fashion way.</p>
                                                        </div>
                                                    </div><!-- /.themesflat-icon-box -->
                                                </div><!-- /.themesflat-content-box -->
                                            </div><!-- /.col-md-4 -->
                                            <div class="col-md-4">
                                                <div class="themesflat-spacer clearfix" data-desktop="0" data-mobile="0" data-smobile="35"></div>
                                                <div class="themesflat-content-box clearfix" data-margin="0 5px 0 5px" data-mobilemargin="0 0 0 0">
                                                    <div class="themesflat-icon-box icon-top align-center has-width w95 circle light-bg accent-color style-1 clearfix">
                                                        <div class="icon-wrap">
                                                            <i class="autora-icon-author"></i>
                                                        </div>
                                                        <div class="text-wrap">
                                                            <h5 class="heading"><a href="#">DỄ THƯƠNG</a></h5>
                                                            <div class="sep clearfix"></div>
                                                            <p class="sub-heading">As the saying goes practice makes perfect. With our years of experience you can bet on us to get the job done exactly to your specifications.</p>
                                                        </div>
                                                    </div><!-- /.themesflat-icon-box -->
                                                </div><!-- /.themesflat-content-box -->
                                            </div><!-- /.col-md-4 -->
                                        </div><!-- /.row -->

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="themesflat-spacer clearfix" data-desktop="41" data-mobile="35" data-smobile="35"></div>
                                                <div class="elm-button text-center">
                                                    <a href="#" class="themesflat-button bg-accent">ABOUT US</a>
                                                </div>
                                                <div class="themesflat-spacer clearfix" data-desktop="73" data-mobile="60" data-smobile="60"></div>
                                            </div><!-- /.col-md-12 -->
                                        </div><!-- /.row -->
                                    </div><!-- /.container -->
                                </div>
                                <!-- END ICONBOX -->
                            
                                <!-- ABOUT -->
                                <div class="row-about">
                                    <div class="container-fluid">
                                        <div class="row equalize sm-equalize-auto">
                                            <div class="col-md-6 half-background style-1">
                                            
                                            </div><!-- /.col-md-6 -->
                                            <div class="col-md-6 bg-light-grey">
                                                <div class="themesflat-spacer clearfix" data-desktop="64" data-mobile="60" data-smobile="60"></div>
                                                <div class="themesflat-content-box clearfix" data-margin="0 25% 0 4.5%" data-mobilemargin="0 0 0 4.5%">
                                                    <div class="themesflat-headings style-1 clearfix">
                                                        <h2 class="heading">CHÀO MỪNG BẠN ĐẾN VỚI TRÀ VINH</h2>
                                                        <div class="sep has-width w80 accent-bg margin-top-11 clearfix"></div>                                               
                                                        <p class="sub-heading margin-top-30">Vùng đất “Chín Rồng” nổi tiếng với khung cảnh miền quê sông nước trong lành, mát mẻ và mỗi tỉnh miền tây lại có một nét riêng mới là điều đặc biệt. Trà Vinh được biết đến với đặc sản bánh tét Trà Cuôn nổi tiếng. Là tỉnh miền Tây được bao bọc bởi hai con sông Cổ Chiên, sông Hậu và một mặt giáp biển, chắc chắn những địa điểm du lịch Trà Vinh sẽ rất thú vị và độc đáo đúng không?</p>
                                                    </div> 
                                                     
                                                    <div class="themesflat-spacer clearfix" data-desktop="42" data-mobile="35" data-smobile="35"></div>
                                                    <div class="elm-button">
                                                        <a href="#"  class="themesflat-button bg-white">Khám phá ngay</a>
                                                    </div>
                                                </div><!-- /.themesflat-content-box --> 
                                                <div class="themesflat-spacer clearfix" data-desktop="75" data-mobile="60" data-smobile="60"></div>
                                            </div><!-- /.col-md-6 -->
                                        </div><!-- /.row -->
                                    </div><!-- /.container-fluid -->
                                </div>
                                <!-- END ABOUT -->

                                <!-- SERVICES -->
                                <div class="row-services">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="themesflat-spacer clearfix" data-desktop="60" data-mobile="60" data-smobile="60"></div>
                                                <div class="themesflat-headings style-1 text-center clearfix">
                                                    <h2 class="heading">MỘT SỐ ĐỊA ĐIỂM NỔI BẬT</h2>
                                                    <div class="sep has-icon width-125 clearfix">
                                                        <div class="sep-icon">
                                                            <span class="sep-icon-before sep-center sep-solid"></span>
                                                            <span class="icon-wrap"><i class="autora-icon-build"></i></span>
                                                            <span class="sep-icon-after sep-center sep-solid"></span>
                                                        </div>
                                                    </div>
                                                    <p class="sub-heading">Không chỉ là thiên nhiên độc đáo mà Trà Vinh còn mang nét văn hóa đặc sặc bởi ba dân tộc người Kinh, Khmer và Hoa.</p>
                                                </div>
                                                <div class="themesflat-spacer clearfix" data-desktop="39" data-mobile="35" data-smobile="35"></div>
                                                <div class="themesflat-carousel-box data-effect clearfix" data-gap="30" data-column="3" data-column2="2" data-column3="1" data-auto="false">
                                                    <div class="owl-carousel owl-theme">
                                                        <% foreach (var diadiem in diadiems) { %>
                                                            <div class="themesflat-image-box style-1 has-icon icon-right w65 clearfix">
                                                                <div class="image-box-item">
                                                                    <div class="inner">
                                                                        <div class="thumb data-effect-item">
                                                                            <img src="<% Response.Write(diadiem.HinhAnh); %>" alt="Image">
                                                                            <div class="overlay-effect bg-color-accent"></div>
                                                                        </div>
                                                                        <div class="text-wrap">
                                                                            <h5 class="heading"><a href="#"><% Response.Write(diadiem.TenDiaDiem); %></a></h5>
                                                                            <span class="icon-wrap">
                                                                                <i class="fa fa-angle-right"></i>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                        <% } %>  
                                                    </div>
                                                </div><!-- /.themesflat-carousel-box -->
                                                <div class="themesflat-spacer clearfix" data-desktop="50" data-mobile="35" data-smobile="35"></div>
                                                <div class="elm-button text-center">
                                                    <a href="#" class="themesflat-button bg-accent">Tất cả địa điểm</a>
                                                </div>
                                                <div class="themesflat-spacer clearfix" data-desktop="73" data-mobile="60" data-smobile="60"></div>
                                            </div><!-- /.col-md-12 -->
                                        </div><!-- /.row -->
                                    </div><!-- /.container -->
                                </div>
                                <!-- END SERVICES --> 
                                <!-- PARTNER -->
                                <div class="row-partner">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="themesflat-spacer clearfix" data-desktop="83" data-mobile="60" data-smobile="60"></div>
                                                <div class="themesflat-carousel-box clearfix" data-gap="5" data-column="5" data-column2="3" data-column3="2" data-auto="true">
                                                    <div class="owl-carousel owl-theme">
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-tra-vinh-3.jpg?tr=dpr-2,w-675" alt="Image" class="partner-default">
                                                                        <img src="https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-tra-vinh-6.jpg?tr=dpr-2,w-675" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-tra-vinh-7.jpg?tr=dpr-2,w-675" alt="Image" class="partner-default">
                                                                        <img src="https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-tra-vinh-8.jpg?tr=dpr-2,w-675" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1  align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://ik.imagekit.io/tvlk/blog/2022/02/dia-diem-du-lich-tra-vinh-9.jpg?tr=dpr-2,w-675" alt="Image" class="partner-default">
                                                                        <img src="assets/img/partners/partner-3-color.png" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2018/08/ao-ba-om-2.png" alt="Image" class="partner-default">
                                                                        <img src="https://danangaz.com/wp-content/uploads/2020/02/Du-lich-tra-vinh-15-min.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="http://top10vietnam.top/wp-content/uploads/2020/10/bao-tang.jpg" alt="Image" class="partner-default">
                                                                        <img src="https://live.staticflickr.com/4107/35541322921_055034f23a_b.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://campingviet.vn/wp-content/uploads/bien-ba-dong-1-1024x723.jpg" alt="Image" class="partner-default">
                                                                        <img src="https://trithuchay.com/wp-content/uploads/2017/04/top-10-dia-diem-du-lich-noi-tieng-o-tra-vinh.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://nucuoimekong.com/wp-content/uploads/bien-ba-dong-o-tra-vinh.jpg" alt="Image" class="partner-default">
                                                                        <img src="https://media2.gody.vn/public/qblog/images/minhdang65786576/152ceb92727e6b39625d654cb3f6dbf7.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1  align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://cdnimg.vietnamplus.vn/uploaded/ifysv/2015_05_18/a11.jpg" alt="Image" class="partner-default">
                                                                        <img src="https://cattour.vn/images/upload/images/Mien%20Tay/dia-diem-du-lich-tra-vinh/bien-ba-dong.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://topxephang.com/wp-content/uploads/2017/11/nuoi-tom.jpg" alt="Image" class="partner-default">
                                                                        <img src="https://hoiantrip.org/wp-content/uploads/2021/01/diem-chup-hinh-dep-o-tra-vinh-cho-team-song-ao-4.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->
                                                        <div class="themesflat-partner style-1 align-center clearfix">
                                                            <div class="partner-item">
                                                                <div class="inner">
                                                                    <div class="thumb">
                                                                        <img src="https://cdn.tgdd.vn/Files/2021/07/03/1365402/12-dia-diem-du-lich-tra-vinh-dep-hut-hon-check-in-het-say-202203221148255709.jpg" alt="Image" class="partner-default">
                                                                        <img src="https://tikibook.com/upload/news/062021/chua-ong-met-0.jpg" alt="Image" class="partner-color">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /themesflat-partner -->                                                      
                                                    </div>
                                                </div><!-- /.themesflat-carousel-box -->
                                                <div class="themesflat-spacer clearfix" data-desktop="66" data-mobile="60" data-smobile="60"></div>
                                            </div><!-- /.col-md-12 -->
                                        </div><!-- /.row -->
                                    </div><!-- /.container -->
                                </div>
                                <!-- END PARTNER -->
                           </div><!-- /.page-content -->
                        </div><!-- /#inner-content -->
                    </div><!-- /#site-content -->
                </div><!-- /#content-wrap -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content> 
