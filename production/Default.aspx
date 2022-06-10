﻿<%@ Page Title="Careers" Language="C#" MasterPageFile="~/templates/siteTemplateResponsive2017nocont.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Careers_production_Default" %>





<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     
    <meta name="Keywords" content="Syngenta, agribusiness">
    <meta name="Description" content="As your global agribusiness partner, Syngenta US uses innovative research and technology to help crops reach their full potential.">


    
	<link rel="stylesheet" type="text/css" href="/careers/css/career-style.css">

  

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleTagPlaceHolderScript" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleTagPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="mainBody" Runat="Server">

            <div id="home" class="full-width-hero production">

            <div class="container">
              <div class="row">


              </div>
            </div>
          </div>


            <!-- GRAY NAVIGATION -->
                  <nav id="in-page-nav" class="">
            <div class="container">
              <div class="row">
                <div class="nav-col">

     
                   <a href='<%= ResolveUrl("../Default.aspx")%>'  class="">Home</a>
                  <a href='<%= ResolveUrl("../students/Default.aspx")%>' class="current">Students</a>
                  <a href='<%= ResolveUrl("../professionals/Default.aspx")%>' class="">Professionals</a>
          

                </div>
              </div>
            </div>
          </nav>

                <script>
                    $(function () {

                        var winWidth = $(window).width(),
                            winHeight = $(window).height(),
                            lastScrollTop = 0,
                            navPos = $('#in-page-nav').offset().top,
                            navStickPoint = navPos - 72,
                            winHostName = window.location.hostname,
                            getUrl = window.location,
                            baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[0],
                            baseURLHost = getUrl.host;

                        var secPDoff = $('#whyWork').offset().top;

                        // in-page navigation click events
                        $(".nav-col a").click(function (e) {
                            if (e.target.id == "find_a_job") { return };
                            e.preventDefault();
                            $(".nav-col a").each(function () {
                                this.classList.remove('current');
                            });
                            this.classList.add('current');
                            var scrolltoEle = $(this).attr('href');
                            var scrollPoint = $(scrolltoEle).offset().top;
                            scrollPoint = scrollPoint - 170;
                            $('html, body').animate({
                                scrollTop: scrollPoint
                            }, 750);
                        });



                        // scroll functions for main header
                        $(window).scroll(function (e) {
                            var st = $(this).scrollTop();
                            if (st > lastScrollTop && lastScrollTop > 115) {
                                $('html').addClass('mini-nav');
                            } else {
                                $('html').removeClass('mini-nav');
                            }
                            // in page nav scroll bar
                            if (st >= navStickPoint) {
                                $('html').addClass('ipn-fixed');
                            } else {
                                $('html').removeClass('ipn-fixed');
                            }
                            setActiveIPN(st);
                            lastScrollTop = st;
                        });

                        // in-page nave check to see if element is in view at 200px from top
                        function setActiveIPN(st) {
                            $('.ipn-ele').each(function () {
                                var elTop = $(this).offset().top;
                                elTop = elTop - 200;
                                var elBTN = elTop + $(this).height();
                                var elID = $(this).attr('id');
                                $(this).attr('data-top', elTop).attr('data-btm', elBTN);
                                if (st > $(this).attr('data-top') && st < $(this).attr('data-btm')) {
                                    $('.nav-col a[href="#' + elID + '"]').addClass('current');
                                } else {
                                    $('.nav-col a[href="#' + elID + '"]').removeClass('current');
                                }
                            });
                        }
                    });
                </script>
          <div class="container ipn-ele prod">
            <div class="row">

              <div class="col-md-10 col-md-push-1 col-sm-12">
                <h2 class="text-center black">Production and Supply Development Program</h2>
                <p class="production">The Syngenta Production and Supply Development Program (PSDP) offers you the chance to build a career in our Production and Supply organization. This new graduate development program includes a broad range of activities such as: chemical processing and manufacturing, seed production and technology transfer, and supply chain business operations.</p>
                 <p class="mb-5 production">Through PSDP you are part of ensuring an efficient production line and bringing new innovations to current processes. Some focus areas include how to source raw materials and intermediate products or how to build a safe production line. You also will learn how to plan production based on sales forecasts and integrate emerging technologies into processes to make Syngenta more effective.</p>

                <div class="blueQuote mt-5">
                  <img src="https://assets.syngentaebiz.com/images/media/taylor_rowland@2x.png" class="img-responsive abso6" alt="Taylor Rowland">

                  <div class="row">



                    <div class="col-lg-9 col-lg-offset-3 col-sm-8 col-sm-offset-4 col-xs-12">
                      <img src="https://assets.syngentaebiz.com/images/media/quotes.png" class="img-responsive abso7" alt="">
                      <p class="white">If you’re considering a position with Syngenta, always be open to accepting new opportunities and challenges. Syngenta values unique employee feedback and collaboration across multiple group functions. Syngenta’s position as a top global competitor in the agriculture industry provides invaluable learning opportunities and critical project experience early on in your career.</p>



                      <p class="white strong mb-0">Taylor Rowland</p>

                      <p class="white mt-0">Production and Supply Associate</p>

                    </div>

                  </div>
                </div>
              </div>


            </div>


            <div class="row mt-5">

              <div class="col-md-10 col-md-push-1 col-sm-12">

                <div class="mb-5">

                  <p class="strong mb-0 large">About the program</p>
                  <p class="mt-0">The Production and Supply Development Program provides three rotations in various geographical areas. You are exposed to diverse experiences and extensive networking opportunities within the organization that will help develop and refine your business acumen.</p>
                  <p class="strong pl-3 mb-0">Agronomy or Seed Operations track</p>
                  <p class="pl-3">Focused on seed field production and processing. Activities include field operations, facility maintenance, conditioning, treating and packaging, re-work activities and continuous process improvement.</p>
                  <p class="pl-3">Specific roles may include:</p>

                  <p>
                    <ul class="pl-4">
                      <li>Field production</li>
                      <li>Seed processing</li>
                      <li>Parent seed characterization</li>
                      <li>Parent seed technology</li>
                      <li>Quality control</li>
                      <li>You may work to develop and maintain field programs or work to improve process efficiencies to increase throughput</li>

                    </ul>
                  </p>



                  <p class="strong mb-0 mt-5 pl-3">Engineering track</p>
                  <p class="pl-3">Focused on production optimization using lean tools and concepts, pilot scale-up and full manufacturing of Syngenta products.</p>

                  <p class="pl-3">Specific roles may include:</p>

                  <p>
                    <ul class="pl-4">
                      <li>Production engineer (active ingredients and formulations)</li>
                      <li>Process engineer (active ingredients and formulations)</li>
                      <li>Toll-manufacturing supervision</li>
                      <li>Technology and projects</li>
                      <li>Capital projects</li>
                      <li>Design and/or maintenance engineer</li>

                    </ul>
                  </p>

                  <p class="strong pl-3 mb-0">Supply Operations track</p>
                  <p class="pl-3">Focused on supply chain operations.</p>

                  <p class="pl-3">Specific roles may include:</p>


                  <p>
                    <ul class="pl-4">
                      <li>Logistics</li>
                      <li>Procurement</li>
                      <li>Supply chain regional planning</li>
                      <li>Supply chain global planning</li>
                      <li>Lean operations</li>


                    </ul>
                  </p>

                  <p class="strong mb-0 large mt-5">Maximize your career potential</p>
                  <p>We believe in growing talent from the inside. We strive to provide a setting where you can demonstrate your full potential. By joining our team, your talents will be leveraged on complex projects to accelerate learning and develop leadership potential. The PSDP is designed to grow existing skills while enabling you to develop new ones and proficiencies. Our program is customized based on areas of interest to help build a career based on what’s important to you.</p>

                </div>
              </div>


            </div>
          </div>





        <div class="container-fluid pl-0 pr-0 d-flex justify-content-center mt-3 mb-4 flex-column align-items-center content-box" id="job">
          <div class="row page-break">

            <p class="text-center black strong">Find Production and Supply Internships</p>

            <a target="_blank" href="http://www.syngentajobs.com" class="shadow-link smallerLink">Search Now</a>


          </div>
        </div>


     <div class="social mt-5" id="contact">

            <div class="container">
              <div class="d-flex justify-content-center align-items-center">

           
                <a href="https://www.facebook.com/SyngentaUS/" target="_blank" title="Facebook icon">
                  <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
                      <path d="M50,25.15A25,25,0,1,0,21.09,50V32.42H14.75V25.15h6.34V19.61c0-6.3,3.74-9.78,9.45-9.78a38.27,38.27,0,0,1,5.59.49v6.19H33c-3.11,0-4.07,1.94-4.07,3.92v4.72h6.93l-1.11,7.27H28.91V50A25.11,25.11,0,0,0,50,25.15Z"></path>

                  </svg>
                 </a>


                <a href="https://twitter.com/SyngentaUS?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank" title="Twitter icon">
               <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 40.64"><path d="M15.72,40.64c18.87,0,29.19-15.64,29.19-29.19,0-.45,0-.89,0-1.33A20.68,20.68,0,0,0,50,4.81a20.48,20.48,0,0,1-5.89,1.62A10.29,10.29,0,0,0,48.62.75a20.45,20.45,0,0,1-6.51,2.49,10.27,10.27,0,0,0-17.75,7,10.62,10.62,0,0,0,.26,2.34A29.12,29.12,0,0,1,3.48,1.88,10.25,10.25,0,0,0,6.66,15.57,10.13,10.13,0,0,1,2,14.29v.13a10.26,10.26,0,0,0,8.23,10.06,10.49,10.49,0,0,1-2.71.36,10.27,10.27,0,0,1-1.93-.19,10.28,10.28,0,0,0,9.59,7.13A20.6,20.6,0,0,1,2.45,36.17,21.94,21.94,0,0,1,0,36a29,29,0,0,0,15.72,4.61"></path></svg>
                </a>


                <a href="https://www.youtube.com/c/SyngentaUS" target="_blank" title="Youtube icon">
                  <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 35.23"><path d="M49,5.5a6.3,6.3,0,0,0-4.43-4.45C40.64,0,25,0,25,0S9.36,0,5.47,1.05A6.3,6.3,0,0,0,1,5.5C0,9.43,0,17.61,0,17.61S0,25.8,1,29.73a6.3,6.3,0,0,0,4.43,4.45c3.89,1,19.53,1,19.53,1s15.64,0,19.53-1A6.3,6.3,0,0,0,49,29.73c1-3.93,1-12.12,1-12.12S50,9.43,49,5.5ZM19.89,25.05V10.18L33,17.61Z"></path></svg>
                </a>

                <a href="https://www.instagram.com/syngentaus/?hl=en" target="_blank" title="Instagram icon>
                    <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M25,4.5c6.68,0,7.47,0,10.1.15a13.83,13.83,0,0,1,4.64.86,7.8,7.8,0,0,1,2.88,1.87,7.8,7.8,0,0,1,1.87,2.88,13.83,13.83,0,0,1,.86,4.64c.12,2.63.15,3.42.15,10.1s0,7.47-.15,10.1a13.83,13.83,0,0,1-.86,4.64,8.26,8.26,0,0,1-4.75,4.75,13.83,13.83,0,0,1-4.64.86c-2.63.12-3.42.15-10.1.15s-7.47,0-10.1-.15a13.83,13.83,0,0,1-4.64-.86,7.8,7.8,0,0,1-2.88-1.87,7.8,7.8,0,0,1-1.87-2.88,13.83,13.83,0,0,1-.86-4.64C4.53,32.47,4.5,31.68,4.5,25s0-7.47.15-10.1a13.83,13.83,0,0,1,.86-4.64A7.8,7.8,0,0,1,7.38,7.38a7.8,7.8,0,0,1,2.88-1.87,13.83,13.83,0,0,1,4.64-.86c2.63-.12,3.42-.15,10.1-.15M25,0c-6.79,0-7.64,0-10.31.15A18.28,18.28,0,0,0,8.62,1.31,12.29,12.29,0,0,0,4.2,4.2,12.29,12.29,0,0,0,1.31,8.62,18.28,18.28,0,0,0,.15,14.69C0,17.36,0,18.21,0,25s0,7.64.15,10.31a18.28,18.28,0,0,0,1.16,6.07A12.29,12.29,0,0,0,4.2,45.8a12.29,12.29,0,0,0,4.42,2.89,18.28,18.28,0,0,0,6.07,1.16C17.36,50,18.21,50,25,50s7.64,0,10.31-.15a18.28,18.28,0,0,0,6.07-1.16,12.89,12.89,0,0,0,7.31-7.31,18.28,18.28,0,0,0,1.16-6.07C50,32.64,50,31.79,50,25s0-7.64-.15-10.31a18.28,18.28,0,0,0-1.16-6.07A12.29,12.29,0,0,0,45.8,4.2a12.29,12.29,0,0,0-4.42-2.89A18.28,18.28,0,0,0,35.31.15C32.64,0,31.79,0,25,0Z"></path><path d="M25,12.16A12.84,12.84,0,1,0,37.84,25,12.84,12.84,0,0,0,25,12.16Zm0,21.17A8.33,8.33,0,1,1,33.33,25,8.33,8.33,0,0,1,25,33.33Z"></path><circle cx="38.35" cy="11.65" r="3"></circle></svg>
                   
                </a>


                <a href="https://www.linkedin.com/company/syngenta" target="_blank" title="Linkedin icon">
                    <svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path d="M46.31,0H3.69A3.69,3.69,0,0,0,0,3.69V46.31A3.69,3.69,0,0,0,3.69,50H46.31A3.69,3.69,0,0,0,50,46.31V3.69A3.69,3.69,0,0,0,46.31,0ZM14.9,42.6H7.39V18.72H14.9ZM11.14,15.41a4.25,4.25,0,0,1-4.33-4.32,4.25,4.25,0,0,1,4.33-4.31,4.25,4.25,0,0,1,4.34,4.31A4.26,4.26,0,0,1,11.14,15.41Zm31.47,27.2H35.1v-13c0-3.85-1.64-5-3.75-5s-4.42,1.67-4.42,5.13V42.61H19.42V18.73h7.23V22h.09a8.21,8.21,0,0,1,7.15-4c4.19,0,8.72,2.49,8.72,9.78Z"></path></svg>
                 
                </a>


                <a href="https://www.glassdoor.com/Overview/Working-at-Syngenta-EI_IE12862.11,19.htm" target="_blank">
                  <img src="https://assets.syngentaebiz.com/images/media/glassdoor-icon.svg" alt="Glassdoor Icon">
                </a>


              </div>

            </div>
          </div>

 </asp:Content>

