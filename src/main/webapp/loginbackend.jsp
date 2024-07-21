<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en" class="u-responsive-xl">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Hello!">
    <meta name="description" content="">
    <title>JobFinder </title>
          <link rel="icon" type="image/png" href="logo1.png">
    <link rel="stylesheet" href="one.css" media="screen">
    <link rel="stylesheet" href="two.css" media="screen">
    <link rel="stylesheet" href="Profile.css" media="screen"> 
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="s.css">
    <meta name="theme-color" content="#0066ff">
    <meta property="og:title" content="Profile">
    <meta property="og:type" content="website">
  </head>
  
<body class="u-body u-xl-mode" data-lang="en">
     <% String name=(String) request.getAttribute("n_key");
 String email=(String) request.getAttribute("e_key");
String  pass=(String) request.getAttribute("p_key");
 String  city=(String) request.getAttribute("c_key");
 String gender=(String) request.getAttribute("g_key");
String mm=(String) request.getAttribute("f_key");
%>
  <header id="headerApp">
    <!-- Header Start -->
   <div class="header-area header-transparrent">
       <div class="headder-top header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-2">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="https://git.adnan-tech.com/jobfinderportal"><img src=" Profile_data/logo.png  " alt=""></a>  <!--  Profile_data/logo.png-->
                        </div>  
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="menu-wrapper">
                            <!-- Main-menu -->
                            <div class="main-menu">
                                <nav class="d-none d-lg-block">
                                    <ul id="navigation">
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="findCompanies.html">Find a Job </a></li>
                                        <li v-if="user?.type == 'recruiter' || user?.type == 'admin'"><a href="https://git.adnan-tech.com/jobfinderportal/job/create">Post a Job </a></li>
                                      <!--   <!-- <li><a href="/about">About</a></li> -->
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="logoutt.html">logout</a></li>
                                      </ul>
                                </nav>
                            </div>

                            <template v-if="user == null">
                              <!-- Header-btn -->
                              <div class="header-btn d-none f-right d-lg-block">
                                  <a href="https://git.adnan-tech.com/jobfinderportal/user/register" class="btn head-btn1">Register</a>
                                  <a href="https://git.adnan-tech.com/jobfinderportal/user/login" class="btn head-btn2">Login</a>
                              </div>
                          </template>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
       </div>
   </div>
    <!-- Header End -->
</header>

 <section class="u-align-center u-clearfix u-grey-90 u-section-1" id="carousel_0852">
 <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">      

<div class="u-border-5 u-border-palette-2-base u-image u-image-circle u-image-1 animated customAnimationIn" alt="" data-image-width="414" data-image-height="414" data-animation-name="customAnimationIn" data-animation-duration="1500" style="will-change: transform, opacity; animation-duration: 1500ms;"><img src=" <%= mm %>" alt=""></div>  <!-- Profile_data/kk.jpg -->

<h2 class="u-text u-text-palette-2-base u-text-2 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500" style="will-change: transform, opacity; animation-duration: 1500ms;"> <%= name %></h2>
<div >

<h6 ><a href="#"><%= email %></a></h6>
<h6><a href="https://wwww.jobfinder/myhome/" ><img src="Profile_data/MISS.png " alt="">daily job recommendation</a></h6>
<h6><a href="https://wwww.jobfinder/myhome/" ><img src="Profile_data/MISS.png " alt="">job application updates</a></h6>
<h6><a href="https://wwww.jobfinder/myhome/" ><img src="Profile_data/MISS.png " alt="">direct jobs from recruiterd</a></h6>

</div>


<div>
<h4><a href="https://wwww.jobfinder/myhome/" >please complete profile</a></h4>

</div>
<hr width="100%" color="#9616ff" size="5" />
<div class="u-expanded-width u-list u-list-1">
<div class="u-repeater u-repeater-1">


<div class="u-align-center-xs u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-border-10 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-list-item u-radius-50 u-repeater-item u-shape-round u-white u-list-item-1 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250" style="will-change: transform, opacity; animation-duration: 1500ms;">


<div class="u-container-layout u-similar-container u-valign-top u-container-layout-1"><span class="u-file-icon u-icon u-text-palette-2-base u-icon-1 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750" style="will-change: transform, opacity; animation-duration: 1500ms;"><img src="Profile_data/home.png"alt=""></span>
     

  <h4 class="u-custom-font u-font-roboto-condensed u-text u-text-5"> My Home</h4>
 <a href="https://wwww.jobfinder/myhome/" class="u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-2">more</a>
              </div>
            </div>


            <div class="u-align-center-xs u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-border-10 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-list-item u-radius-50 u-repeater-item u-shape-round u-video-cover u-white u-list-item-2 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250" style="will-change: transform, opacity; animation-duration: 1500ms;">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2"><span class="u-file-icon u-icon u-text-palette-2-base u-icon-2 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750" style="will-change: transform, opacity; animation-duration: 1500ms;"><img src="Profile_data/job.png"alt=""></span>
               
                <h4 class="u-custom-font u-font-roboto-condensed u-text u-text-6"> Show your Resume</h4>
                  <a href="https://wwww.jobfinder/Jobs/" class="u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-3">more</a>
                      </div>
                    </div>


                    <div class="u-align-center-xs u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-border-10 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-list-item u-radius-50 u-repeater-item u-shape-round u-video-cover u-white u-list-item-3 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250" style="will-change: transform, opacity; animation-duration: 1500ms;">
                    <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3"><span class="u-file-icon u-icon u-text-palette-2-base u-icon-3 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750" style="will-change: transform, opacity; animation-duration: 1500ms;"><img src="Profile_data/comp.png" alt=""></span>
                    <h4 class="u-custom-font u-font-roboto-condensed u-text u-text-7"> Companies</h4>
                   <a href="find job.html" class="u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-4">more</a>
           </div>
            </div>


            <div class="u-align-center-xs u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-border-10 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-list-item u-radius-50 u-repeater-item u-shape-round u-video-cover u-white u-list-item-4 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250" style="will-change: transform, opacity; animation-duration: 1500ms;">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4"><span class="u-file-icon u-icon u-text-palette-2-base u-icon-4 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750" style="will-change: transform, opacity; animation-duration: 1500ms;"><img src="Profile_data/blog.png" alt=""></span>
                <h4 class="u-custom-font u-font-roboto-condensed u-text u-text-8"> Blogs</h4>
                <a href="https://wwww.jobfinder/blogs" class="u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-5">more</a>
              </div>
            </div>
         

 <div class="u-align-center-xs u-align-left-lg u-align-left-md u-align-left-sm u-align-left-xl u-border-10 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-container-style u-list-item u-radius-50 u-repeater-item u-shape-round u-video-cover u-white u-list-item-4 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250" style="will-change: transform, opacity; animation-duration: 1500ms;">
              <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4"><span class="u-file-icon u-icon u-text-palette-2-base u-icon-4 animated customAnimationIn" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750" style="will-change: transform, opacity; animation-duration: 1500ms;"><img src="Profile_data/res.png" alt=""></span>
                <h4 class="u-custom-font u-font-roboto-condensed u-text u-text-8"> Resume</h4>
                <a href="https://wwww.jobfinder/Resume" class="u-border-1 u-border-active-grey-70 u-border-black u-border-hover-grey-70 u-border-no-left u-border-no-right u-border-no-top u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-button-style u-none u-radius-0 u-text-active-palette-2-base u-text-body-color u-text-hover-palette-2-base u-top-left-radius-0 u-top-right-radius-0 u-btn-5">more</a>
              </div>
            </div>







          </div>
        </div>
      </div>



</section>
<footer>
  <!-- Footer Start-->
  <div class="footer-area footer-bg footer-padding">
      <div class="container">
          <div class="row d-flex justify-content-between">
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                 <div class="single-footer-caption mb-50">
                   <div class="single-footer-caption mb-30">
                       <div class="footer-tittle">
                           <h4>About Us</h4>
                           <div class="footer-pera">
                               <p>Heaven frucvitful doesn't cover lesser dvsays appear creeping seasons so behold.</p>
                          </div>
                       </div>
                   </div>

                 </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                  <div class="single-footer-caption mb-50">
                      <div class="footer-tittle">
                          <h4>Contact Info</h4>
                          <ul>
                              <li>
                              <p>Address :Your address goes
                                  here, your demo address.</p>
                              </li>
                              <li><a href="#">Phone : +8880 44338899</a></li>
                              <li><a href="#">Email : info@colorlib.com</a></li>
                          </ul>
                      </div>

                  </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                  <div class="single-footer-caption mb-50">
                      <div class="footer-tittle">
                          <h4>Important Link</h4>
                          <ul>
                              <li><a href="#"> View Project</a></li>
                              <li><a href="#">Contact Us</a></li>
                              <li><a href="#">Testimonial</a></li>
                              <li><a href="#">Proparties</a></li>
                              <li><a href="#">Support</a></li>
                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                  <div class="single-footer-caption mb-50">
                      <div class="footer-tittle">
                          <h4>Newsletter</h4>
                          <div class="footer-pera footer-pera2">
                           <p>Heaven fruitful doesn't over lesser in days. Appear creeping.</p>
                       </div>
                       <!-- Form -->
                       <div class="footer-form">
                           <div id="mc_embed_signup">
                               <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative mail_part">
                                   <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address" class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = ' Email Address '">
                                   <div class="form-icon">
                                       <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm"><img src="assets/img/icon/form.png" alt=""></button>
                                   </div>
                                   <div class="mt-10 info"></div>
                               </form>
                           </div>
                       </div>
                      </div>
                  </div>
              </div>
          </div>
         <!--  -->
         <div class="row footer-wejed justify-content-between">
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                  <!-- logo -->
                  <div class="footer-logo mb-20">
                  <a href="https://git.adnan-tech.com/jobfinderportal"><img src="images/logo2_footer.png" alt=""></a>
                  </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
              <div class="footer-tittle-bottom">
                  <span>5000+</span>
                  <p>Talented Hunter</p>
              </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                  <div class="footer-tittle-bottom">
                      <span>451</span>
                      <p>Talented Hunter</p>
                  </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                  <!-- Footer Bottom Tittle -->
                  <div class="footer-tittle-bottom">
                      <span>568</span>
                      <p>Talented Hunter</p>
                  </div>
              </div>
         </div>
      </div>
  </div>
  <!-- footer-bottom area -->
  <div class="footer-bottom-area footer-bg">
      <div class="container">
          <div class="footer-border">
               <div class="row d-flex justify-content-between align-items-center">
                   <div class="col-xl-10 col-lg-10 ">
                       <div class="footer-copy-right">
                           <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright ©<script>document.write(new Date().getFullYear());</script>2024 All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                       </div>
                   </div>
                   <div class="col-xl-2 col-lg-2">
                       <div class="footer-social f-right">
                           <a href="#"><i class="fab fa-facebook-f"></i></a>
                           <a href="#"><i class="fab fa-twitter"></i></a>
                           <a href="#"><i class="fas fa-globe"></i></a>
                           <a href="#"><i class="fab fa-behance"></i></a>
                       </div>
                   </div>
               </div>
          </div>
      </div>
  </div>
  <!-- Footer End-->
</footer>
            <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://KAPIL/" target="_blank">
        <span>KAPIL AGRAWAL</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://KRISHNA/" target="_blank">
        <span>KRISHNA KUSHWAH</span>
      </a>. 
    </section>
  
<style>.u-disable-duration * {transition-duration: 0s !important;}</style>








</body>
</html>