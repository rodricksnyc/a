<%@ Page Title="Careers" Language="C#" MasterPageFile="~/templates/siteTemplateResponsive2017nocont.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Careers_trades_Default" %>





<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
     
    <meta name="Keywords" content="Syngenta, agribusiness">
    <meta name="Description" content="As your global agribusiness partner, Syngenta US uses innovative research and technology to help crops reach their full potential.">

    
	<link rel="stylesheet" type="text/css" href="/careers/css/career-style.css">

      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" integrity="sha384-3AB7yXWz4OeoZcPbieVW64vVXEwADiYyAEhwilzWsLw+9FgqpyjjStpPnpBO8o8S" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="GoogleTagPlaceHolderScript" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleTagPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="mainBody" Runat="Server">

          <div id="home" class="full-width-hero ">


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
               <div class="container ipn-ele prod">
            <div class="row">

              <div class="col-md-10 col-md-push-1 col-sm-12">
                <h2 class="text-center black title"></h2>

                <p class="mb-5 text-center production description"></p>

                <div class="blueQuote mt-5">
                  <div class="face"></div>


                  <div class="row">



                    <div class="col-lg-9 col-lg-offset-3 col-sm-8 col-sm-offset-4 col-xs-12">
                      <img src="https://assets.syngentaebiz.com/images/media/quotes.png" class="img-responsive abso7">
                      <p class="white quotation"></p>



                      <p class="white strong mb-0 name"></p>

                      <p class="white mt-0 jobTitle"></p>

                    </div>

                  </div>
                </div>
              </div>


            </div>


            <div class="circles">


              <div class="row">

                <div class="col-sm-12">
                  <p class="strong large text-center mb-5">Contributions may include</p>

                  <div class="d-flex justify-content-center flex-wrap wrapThese">

                  <!-- <div class="row">
                    <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->


                      <div class="efficiency"></div>
                    <!-- </div>

                    <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->

                      <div class="manufacturing"></div>
                    <!-- </div>



                    <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->

                      <div class="chemistry"></div>
                    <!-- </div>



                  <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->

                    <div class="innovation"></div>
                  <!-- </div>



                  <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->

                    <div class="portfolio"></div>
                  <!-- </div>


                  <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->

                    <div class="route"></div>
                  <!-- </div>

                  <div class="col-lg-4 col-sm-4 col-xs-12 text-center"> -->

                    <div class="safety"></div>
                  <!-- </div> -->

                  </div>

                </div>

              </div>
            </div>

            <div class="corporateOnly hidden">
              <p class="text-center mt-5">Click to Expand Job Roles</p>


              <div class="container mb-5">

                <div class="row">



                  <div class="col-md-10 col-md-push-1 col-sm-12">



                    <div class="accordion-group accordion-group">
                      <button class="accordion" onclick="event.preventDefault()">
                        <strong>Marketing & Communications</strong></button>
                        <div class="panel">
                          <div class="row">
                            <p>Our marketing and communications groups establish Syngenta’s voice and image that we convey to internal and external stakeholders. Interacting with customers, potential customers, employees, key stakeholders and the media are opportunities you have within our marketing and communications teams. Marketing and communications is one of the fastest growing industries. If your passion is in customer relations, product marketing, corporate branding, writing or media relations, consider a career within our Marketing and Communications groups.
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="accordion-group">
                        <button class="accordion" onclick="event.preventDefault()"><strong>Finance & Accounting</strong></button>
                        <div class="panel">
                          <div class="row">
                            <p>An essential role in the management of any business is finance and accounting. Understanding both the company’s financial health as well as the economic landscape of the markets we operate in are key to successful long-term growth and stability. Should a career in finance, analysis and/or accounting be your calling, discover the opportunities available in our Finance groups today.
                            </p>
                          </div>
                        </div>
                      </div>

                      <div class="accordion-group">
                        <button class="accordion" onclick="event.preventDefault()"><strong>Human Resources</strong></button>
                        <div class="panel">
                          <div class="row">
                            <p>From talent acquisition, to process improvement, organizational design and total rewards, our Human Resources team is the cornerstone of our Syngenta family. Today’s HR leadership not only ensures excellence in employee experience, but also ensures the best talent is attracted to the organization, and advanced through career development. Continuously assessing organization practice and anticipating the needs of tomorrow are responsibilities you have within our Human Resources function. By showing endurance and commitment, passion for employee journey, and focus on continuous improvement, you will drive HR forward and contribute to the success of our organizational mission.</p>
                            <p class="strong mb-0">Contributions may include:</p>

                            <p>
                              <ul>
                                <li>Handling people and organizational development across all departments</li>
                                <li> Ensuring that diversity, equity, inclusion and belonging are implemented within the Syngenta Corporation as an entirety</li>
                                <li>Helping manage talent acquisition within the corporation as well as finding new talent outside of the corporation</li>
                                <li>Managing the total rewards program</li>

                              </ul>
                            </p>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>


                </div>

              </div>
              <script>
                  var acc = document.getElementsByClassName("accordion");
                  var i;

                  for (i = 0; i < acc.length; i++) {
                      acc[i].addEventListener("click", function () {
                          this.classList.toggle("active");
                          var parent = this.parentElement;
                          parent.classList.toggle("accordion-group-active");
                          var panel = this.nextElementSibling;
                          if (panel.style.maxHeight) {
                              panel.style.maxHeight = null;
                          } else {
                              panel.style.maxHeight = panel.scrollHeight + "2100px";
                          }
                      });
                  }
              </script>



            </div>





            <div class="container-fluid pl-0 pr-0 d-flex justify-content-center mt-3 mb-4 flex-column align-items-center content-box" id="job">
              <div class="row page-break">

                <p class="text-center black strong">Find a Job</p>

                <a target="_blank" href="http://www.syngentajobs.com" class="shadow-link">Search Now</a>


              </div>
            </div>


            <div class="social mt-5" id="contact">

              <div class="container">
                <div class="d-flex justify-content-center align-items-center">

                  <a href="https://www.facebook.com/SyngentaUS/" target="_blank"><i class="fab fa-facebook-f" alt="Facebook icon"></i>
                  </a>


                  <a href="https://twitter.com/SyngentaUS?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank">
                    <i class="fab fa-twitter" alt="Twitter icon"></i>
                  </a>


                  <a href="https://www.youtube.com/c/SyngentaUS" target="_blank"><i class="fab fa-youtube" alt="youtube icon"></i>
                  </a>

                  <a href="https://www.instagram.com/syngentaus/?hl=en" target="_blank"><i class="fab fa-instagram" alt="Instagram icon"></i>
                  </a>


                  <a href="https://www.linkedin.com/company/syngenta" target="_blank">
                    <i class="fab fa-linkedin" alt="Linkedin icon"></i>
                  </a>


                  <a href="https://www.glassdoor.com/Overview/Working-at-Syngenta-EI_IE12862.11,19.htm" target="_blank">
                    <img src="https://assets.syngentaebiz.com/images/media/glassdoor-icon.svg" alt="Glassdoor Icon">
                  </a>


                </div>

              </div>
            </div>

                <script>


                    var hash = window.location.hash.substring(1);
                    console.log(hash)
                    $('.page-content').attr('id', hash)
                </script>

            <script src='data.js'></script>




 </asp:Content>

