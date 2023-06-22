<jsp:include page="../header.jsp"></jsp:include>

  <style>
    /* add the CSS animation here */
    .animate-up {
      opacity: 0;
      transform: translateY(50px);
      transition: opacity 1s ease, transform 1s ease;
    }

    .animate-up.is-visible {
      opacity: 1;
      transform: translateY(0);
    }
  </style>

  <script>
    // add the JavaScript code here
    function animateOnScroll() {
      const elements = document.querySelectorAll('.animate-up');

      elements.forEach((el) => {
        if (el.getBoundingClientRect().top < window.innerHeight) {
          el.classList.add('is-visible');
        }
      });
    }

    window.addEventListener('scroll', animateOnScroll);
  </script>
</head>

<div class="d-flex align-items-center position-relative" style="height: 90vh; overflow: hidden;">
  	<video autoplay muted loop class="position-absolute" style="z-index: -1; min-width: 100%; filter: blur(2px);">
  		<source src="video/homepage-vid.mp4" type="video/mp4">
	</video>
  <div class="d-flex flex-column justify-content-center container">
    <h1 class="text-white" style="font-size: 3.4em; font-weight: 700;">Connecting minds to create something amazing.</h1>
    <p class="fs-3 text-white">Discover new possibilities and collaborate with talented developers around the world in our community. </p>
    <div class="d-flex align-items-start gap-4">
      <form action="registration" method="GET" class="input-group pe-4 border-end w-50">
        <input type="email" class="form-control" placeholder="Email Address" name="email">
        <button type="submit" class="btn btn-primary input-group-text">Sign up for ABC Jobs</button>
      </form>
      <a href="login" class="btn btn-outline-primary w-25 text-white fw-bold">I have an account</a>
    </div>
  </div>
</div>

<div class="container my-4 snap-container">
  <section class="p-3 text-dark animate-up">
    <div class="container">
      <div class="row align-items-center justify-content-between">
         
          <div class="col-md p-5">
            <h2 class="fw-semibold mb-2">Help you to make personal branding and stand out in front of peers</h2>
            <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent luctus quis velit at varius. 
            Proin commodo finibus sapien vitae fermentum. Morbi eget vulputate lorem. Integer interdum est in velit facilisis vehicula. 
            Phasellus et varius nunc, mollis porttitor leo. Donec tristique sem eleifend, porttitor ligula sed, tempus odio. In id efficitur ante. 
            </p>
          </div>
          <div class="col-md">
            <img src="images/section4.png" style="width: 595.2px; height: 480.9px">
          </div>
      </div>
    </div>
  </section>
  
  
  
  <section class="p-5 text-dark mt-4 animate-up">
    <div class="container">
      <div class="row align-items-center justify-content-between">
      
       <div class="col-md">
            <img src="images/community.png">
          </div>
         
          <div class="col-md p-5">
            <h2 class="fw-semibold mb-2">We support your career growth</h2>
            <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent luctus quis velit at varius. 
            Proin commodo finibus sapien vitae fermentum. Morbi eget vulputate lorem. Integer interdum est in velit facilisis vehicula. 
            Phasellus et varius nunc, mollis porttitor leo. Donec tristique sem eleifend, porttitor ligula sed, tempus odio. In id efficitur ante. 
            </p>
          </div>
      </div>
    </div>
  </section>
  
  <section class="p-3 text-dark mb-4 animate-up">
    <div class="container">
      <div class="row align-items-center justify-content-between">
         
          <div class="col-md p-5">
            <h2 class="fw-semibold mb-2">Join to the community and Learning Together</h2>
            <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent luctus quis velit at varius. 
            Proin commodo finibus sapien vitae fermentum. Morbi eget vulputate lorem. Integer interdum est in velit facilisis vehicula. 
            Phasellus et varius nunc, mollis porttitor leo. Donec tristique sem eleifend, porttitor ligula sed, tempus odio. In id efficitur ante. 
            </p>
          </div>
          <div class="col-md">
            <img src="images/section3.png">
          </div>
      </div>
    </div>
  </section>
  

 <div class="d-flex flex-column justify-content-center mb-2 animate-up" style="height: 25vh;">
    <small class="fs-3 text-center text-dark mt-5 ">Developer from all companies and organizations</small>
    <div class="d-flex justify-content-center align-items-center gap-5 mt-3" style="filter: grayscale(1);">
      <img src="images/google.png" alt="Google" height="60px"></img>
      <img src="images/github.jpg" alt="Github" height="100px"></img>
      <img src="images/stripe.png" alt="Stripe" height="90px"></img>
      <img src="images/meta.jpg" alt="Meta" height="120px"></img>
    </div>
  </div>
</div>


<div class="d-flex flex-column align-items-center py-5 mt-2 animate-up" style="background-color: #03001C; border-radius: 10px; box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);">
  <h2 class="text-white" style="font-size: 2rem; margin-bottom: 1rem;">Ready to start your journey?</h2>
  <a href="registration" class="btn btn-primary" style="background-color: #3E54AC; border: none; margin-top: 1rem; padding: 0.75rem 2rem; border-radius: 30px; font-size: 1rem; color: #fff; text-decoration: none;">Sign up now</a>
</div>
<hr>

<jsp:include page="../footer.jsp"></jsp:include>