<%@  Page Title="Careers" Language="C#" MasterPageFile="~/templates/siteTemplateResponsive2017nocont.master"  AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Careers_professionals_Default" %>



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

    
          <div id="home" class="full-width-hero professionals">

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
                  <a href='<%= ResolveUrl("../students/Default.aspx")%>' class="">Students</a>
                  <a href='<%= ResolveUrl("../professionals/Default.aspx")%>' class="current">Professionals</a>

         

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
        
          <div class="container ipn-ele">
            <div class="row">

              <div class="col-md-10 col-md-push-1 col-sm-12">
                <h2 class="text-center black">Professionals and Skilled Trades</h2>
                <p class="text-center">Whether working with our Seeds or Crop Protection business, we offer talent development opportunities across our organizations. We encourage you to leverage your talents and passions to bring meaningful innovation with determined execution to agriculture. We are looking for candidates who are passionate about making a difference in a company with a unique culture that supports growth for all.</p>

              </div>
            </div>

            <div class="row mt-4 grid tradeGrid">

              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column">
                <a href="/careers/trades/Production.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/prod_supply_mkp_7748_edited@2x.png" class="img-responsive" alt="Logistics professional">
                  <p class="strong text-center">Production and Supply</p>
                </a>

              </div>
              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column">
                <a href="/careers/trades/Research.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/research_mg_8871_v2@2x.png" class="img-responsive" alt="Scientific professional">
                  <p class="strong text-center">Research</p>
                </a>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column">
                <a href="/careers/trades/Development.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/development_208A3001@2x.png" class="img-responsive" alt="Engineer professional">
                  <p class="strong text-center">Development</p>
                </a>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column">
                <a href="/careers/trades/Solutions.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/dig_solutions_170522_pearsonstudios_thrive_0212@2x.png" class="img-responsive" alt="Digital professional">
                  <p class="strong text-center">Digital Solutions</p>
                </a>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column move">
                <a href="/careers/trades/Information-technology.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/it_gettyimages_1343240867@2x.png" class="img-responsive" alt="Information Technology professional">
                  <p class="strong text-center">IT</p>
                </a>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column">
                <a href="/careers/trades/Sales.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/com_sales_gettyimages_691949286@2x.png" class="img-responsive" alt="Sales professional">
                  <p class="strong text-center">Commercial and Sales</p>
                </a>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-12 d-flex flex-column">
                <a href="/careers/trades/Corporate.aspx" class="noDecoration">
                  <img src="https://assets.syngentaebiz.com/images/media/corporate_f1A2967@2x.png" class="img-responsive" alt="Corporate business professional">
                  <p class="strong text-center">Corporate Functions</p>
                </a>
              </div>

            </div>
          </div>


          <div class="container-fluid pl-0 pr-0 d-flex justify-content-center mt-3 mb-4 flex-column align-items-center content-box" id="job">
            <div class="row page-break">

              <h2 class="text-center black">Find a Job</h2>

              <a target="_blank" href="http://www.syngentajobs.com" class="shadow-link">Search Now</a>




            </div>
          </div>


          <div class="container content-box ipn-ele" id="testimonials">
            <div class="row">


              <div class="col-md-4">


                <div class="d-flex flex-column align-items-center blueColor">
                  <img src="https://assets.syngentaebiz.com/images/media/keri_rehm@2x.png" class="img-responsive person" alt="Keri Rehm">



                  <img src="https://assets.syngentaebiz.com/images/media/quotes.png" class="img-responsive quote" alt="">

                  <p class="white marginBottomLarge2">My favorite thing at Syngenta is the culture. The Syngenta backbone values and Syngenta’s commitment to the customer help me find value in my work. My management shares a value of a healthy work-life balance, engaging our teams to make sure we are not consistently overloaded and that we are taking adequate time for ourselves.</p>

                  <p class="white strong mt-5 mb-1">Keri Rehm</p>

                  <p class="white mt-0">Senior Scientist<br>Modeling, Analytics & Data Science</p>


                </div>

              </div>
              <div class="col-md-4">


                <div class="d-flex flex-column align-items-center blueColor">
                  <img src="https://assets.syngentaebiz.com/images/media/eric_chen@2x.png" class="img-responsive person" alt="Eric Chen">

                  <img src="https://assets.syngentaebiz.com/images/media/quotes.png" class="img-responsive quote" alt="">

                  <p class="white marginBottomLarge3">I was initially attracted to Syngenta because they play a leader role in driving modern agriculture with track-record breakthroughs in biotechnology. I wanted to be part of the excitement. </p>


                  <p class="white strong mt-5 mb-1">Eric Chen</p>

                  <p class="white mt-0">Syngenta Fellow<br>Technology Development and Input Trials, Seed Research</p>


                </div>

              </div>

              <div class="col-md-4">


                <div class="d-flex flex-column align-items-center blueColor last">
                  <img src="https://assets.syngentaebiz.com/images/media/daniela_sart_dvorjak@2x.png" class="img-responsive person" alt="Daniela Sarti Dvorjak">

                  <img src="https://assets.syngentaebiz.com/images/media/quotes.png" class="img-responsive quote" alt="">

                  <p class="white">If you’re considering a position with Syngenta, I would encourage you to think about the fact that Syngenta cares about its people and the environment. Ethics and safety are among the core values. I have worked in different organizations in multiple countries and I can confirm that it is not always easy to find such values and principles. </p>


                  <p class="white strong mt-5 mb-1">Daniela Sarti Dvorjak</p>

                  <p class="white mt-0">North America Market Segment Leader<br>North America Seeds Development</p>


                </div>

              </div>


            </div>
          </div>



          <div class="container mt-5 tradesBlocks">
            <div class="row">

              <div class="col-md-6 col-sm-12">
                <h2 class="black mb-1">Skilled Trades</h2>
                <p>Pursuing a skilled trade occupation allows you to start building a career ahead of other options. Skilled tradespeople enter the workforce on average at least two years earlier. That means you start building career experience and earning money sooner.</p>
                <p>A skilled trade is any occupation that requires a particular skill set, knowledge or ability. Typically, it is a hands-on job, but skilled trades are found in every career cluster.</p>

              </div>

              <div class="col-md-6 col-sm-12 greyBackground">
                <h2 class="black">Syngenta Skilled Trade Opportunities:</h2>
                <div class="d-flex mb-1"><a href="https://www.syngenta.com/en/careers/job-search-and-apply?keyword=Greenhouse+&dlang=264" target="_blank">Greenhouse manager</a>&nbsp;<img src="https://assets.syngentaebiz.com/images/media/external-link-go-icon.svg" class="img-responsive" alt=""></div>
                <div class="d-flex mb-1"><a href="https://www.syngenta.com/en/careers/job-search-and-apply?keyword=Technician&dlang=264" target="_blank">Production Technician</a>&nbsp;<img src="https://assets.syngentaebiz.com/images/media/external-link-go-icon.svg" class="img-responsive" alt=""></div>
                <div class="d-flex mb-1"><a href="https://www.syngenta.com/en/careers/job-search-and-apply?keyword=equipment+&dlang=264" target="_blank">Agricultural equipment operators</a>&nbsp;<img src="https://assets.syngentaebiz.com/images/media/external-link-go-icon.svg" class="img-responsive" alt=""></div>
                <div class="d-flex mb-4"><a href="https://www.syngenta.com/en/careers/job-search-and-apply?keyword=maintenance&dlang=264" target="_blank">Maintenance</a>&nbsp;<img src="https://assets.syngentaebiz.com/images/media/external-link-go-icon.svg" class="img-responsive" alt=""></div>

              </div>
            </div>


            <div class="row mt-5">

              <div class="col-md-6 col-sm-12">
                <img src="https://assets.syngentaebiz.com/images/media/ag_future_dsc_0361@2x.png" class="img-responsive" alt="Farmer in the field">
              </div>

              <div class="col-md-6 col-sm-12">
                <h2 class="black mb-1 mt-1">Shape the Future of Agriculture</h2>
                <p>At Syngenta, you will play a vital role in the food chain to safely feed the world and take care of our planet.</p>
                <p>Our employees work across the value chain to support advances in agriculture sustainability. We believe sustainability is an ongoing journey of continuous improvement for each farmer.</p>

              </div>
            </div>

            <div class="row mt-5 mobileReverse">

              <div class="col-md-6 col-sm-12">
                <h2 class="black mb-1 mt-1">Collaborative Teams</h2>
                <p>You will be among some of the best and brightest minds, developing solutions to help farmers increase their profitability.</p>
                <p>To help meet these challenges, you will have the opportunity to collaborate on a local and global level where we encourage your innovative ideas and diverse thinking.</p>

              </div>

              <div class="col-md-6 col-sm-12">

                <img src="https://assets.syngentaebiz.com/images/media/collaborativeteams_171006_0376@2x.png" class="img-responsive" alt="Scientists doing research">

              </div>
            </div>


            <div class="row mt-5">



              <div class="col-md-6 col-sm-12">

                <img src="https://assets.syngentaebiz.com/images/media/growthforall_mg_7224@2x.png" class="img-responsive" alt="Corporate professionals">

              </div>
              <div class="col-md-6 col-sm-12">
                <h2 class="black mb-1 mt-1">Growth for All</h2>
                <p>We want to nurture your talent so you can succeed and make contributions that positively impact our customers and business. Our <a href="https://www.syngenta.com/en/careers/working-syngenta/diversity-and-inclusion" target="_blank">diverse culture</a> allows all employees to help shape who we are and what impact we make.</p>
                <p>From finance leaders to world-renowned plant scientists, we look to develop thought leaders in every aspect of our company.</p>

              </div>
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

