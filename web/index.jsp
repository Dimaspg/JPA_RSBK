<%-- 
    Document   : index
    Created on : Jun 17, 2020, 10:55:46 PM
    Author     : rafli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/parallax/3.1.0/parallax.min.js"></script>
        <link rel="stylesheet" href="css/style1.css">
        <title>Landing Page</title>
    </head>
    <body>
       <div class="wrapper">
    <div class="nav">
      <div class="menu-links">
        <ul>
            <li><a href="#" class="button">Home</a></li>
          <li><a href="corona.jsp" class="button">Data Kasus Virus Corona</a></li>
          <li><a href="add.jsp" class="button">Ayo, Ikuti Survey</a></li>
        </ul>
      </div>
    </div>

    <div class="content">

      <div class="title">
          coronavirus
      </div>
<!--        <div class="more"><a href="add.jsp" class="button">Lihat Persebaran Virus Corona</a></div>

      <div class="desc">
        <p>
          Bagaimana pendapatmu<br>
          dengan adanya 
          <span>Rapid Test</span>?
        </p>
        <a href="add.jsp" class="button">Ayo, Ikuti Survey</a>
        
      </div>-->
    </div>


    <div class="juice">
      <img src="./img/virus.png" alt="">
    </div>

    <div class="leaves">
      <ul id="scene">
        <li class="layer" data-depth="-.1">
          <img src="./img/virus.png" alt="">
        </li>
        <li class="layer" data-depth="-.3">
          <img src="./img/virus.png" alt="">
        </li>
        <li class="layer" data-depth="-1.5">
          <img src="./img/virus.png" alt="">
        </li>
        <li class="layer" data-depth=".1">
          <img src="./img/virus.png" alt="">
        </li>
        <li class="layer" data-depth=".3">
          <img src="./img/virus.png" alt="">
        </li>
      </ul>
    </div>


  </div>
  <script>
    var scene = document.getElementById('scene');
    var parallax = new Parallax(scene);

    TweenMax.from(".logo", 1, {
      opacity: 0,
      x: -20,
      ease: Expo.easeInOut
    })

    TweenMax.staggerFrom(".menu-links ul li", 1, {
      opacity: 0,
      x: -20,
      ease: Power3.easeInOut
    }, 0.08)

    TweenMax.from(".search", 1, {
      delay: .5,
      opacity: 0,
      x: -20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".account", 1, {
      delay: .6,
      opacity: 0,
      x: -20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".cart", 1, {
      delay: .7,
      opacity: 0,
      x: -20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".juice", 1, {
      delay: 2,
      opacity: 0,
      y: -800,
      ease: Expo.easeInOut
    })

    TweenMax.from(".leaves .layer:nth-child(1)", 2, {
      delay: 2,
      opacity: 0,
      y: -800,
      ease: Expo.easeInOut
    })

    TweenMax.from(".leaves .layer:nth-child(2)", 2, {
      delay: 2.1,
      opacity: 0,
      y: -800,
      ease: Expo.easeInOut
    })

    TweenMax.from(".leaves .layer:nth-child(3)", 2, {
      delay: 2.2,
      opacity: 0,
      y: -800,
      ease: Expo.easeInOut
    })

    TweenMax.from(".leaves .layer:nth-child(4)", 2, {
      delay: 2.3,
      opacity: 0,
      y: -800,
      ease: Expo.easeInOut
    })

    TweenMax.from(".leaves .layer:nth-child(5)", 2, {
      delay: 2.5,
      opacity: 0,
      y: -800,
      ease: Expo.easeInOut
    })

    TweenMax.from(".title", 1, {
      delay: 1,
      opacity: 0,
      y: 20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".tagline", 1, {
      delay: 1.3,
      opacity: 0,
      y: 20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".pages", 1, {
      delay: 1.3,
      opacity: 0,
      y: 20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".more", 1, {
      delay: 1.4,
      opacity: 0,
      y: 20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".desc", 1, {
      delay: 1.4,
      opacity: 0,
      y: 20,
      ease: Expo.easeInOut
    })

    TweenMax.from(".arrows", 1, {
      delay: 2,
      opacity: 0,
      ease: Expo.easeInOut
    })

  </script>
    </body>
</html>
