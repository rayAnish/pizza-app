<%
	if(session.getAttribute("uname")==null){
		response.sendRedirect("login.jsp");
	}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">

    <title>Pizza-delivery-app</title>
    <style>
    header{

        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 20px, 80px;  
        box-shadow: 0px, 5px , 15px, rgb(0, 0, 0,0.06);
      }
      
    .section-p1{
    padding: 40px 80px;
    }
    #feature{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    }
    #feature .top-offers{
    width: 180px;
    text-align: center;
    padding: 25px 10px;
    font-size: large;
    box-shadow: 20px 20px 34px rgba(0, 0, 0, 0.03);
    border: 1px solid #cce7d0;
    border-radius: 4px;
    margin: 15px 0;

    }

    #feature .top-offers:hover{
    box-shadow: 10px 10px 54px rgba(0, 0, 0, 0.1);
    }
    #feature .top-offers h4{
    display: inline-block;
    padding: 9px 8px 6px 8px;
    line-height: 1;
    border-radius: 4px;
    color: #088178;
    /* background-color:pink; */
    }
    #feature .top-offers img{
    max-width: 80%;
    max-height: 80%;
    /* margin-bottom: 10px; */
    }
    .text-gray-600 h2.h2{
    text-align: center;
    font-size: 80px;
    font-weight:600;
    color: #088178;
    font-stretch: expanded;
    }
    #banner h2{
    font-size: 300%;
    font-weight: bold;
    }
    #banner{
    /* background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR97ZSsV9lmz8sUn7w23ODk6VlTdVSEgrR4mg&usqp=CAU"); */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    background-color: yellow;
    width: 100%;
    height: 30vh;
    background-size: cover;
    background-position: center;
    }
    #banner h2 span{
    color:red;
    }
    #banner button{
    text-shadow: 30cm;
    padding: 10px 0;
    width: 150px;
    border-radius: 30px;
    outline: none;
    margin-top: 40px;
    cursor: pointer;
    font-weight: 700;
    font-size: 15px;
    }
    #banner button:hover{
    background-color: #088178;
    color: white;
    padding-bottom: 12px ;

    }
    #sm-banner{
    display:flex;
    justify-content: space-between;
    flex-wrap: wrap;
    }
    #sm-banner .banner-box {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    min-width: 580px;
    height: 50vh;
    background-size: cover;
    background-position: center;
    /* background-image:url("../banner.jpg.jpg"); */
    background-color: aqua;

    }
    button.normal{
    font-size: 14px;
    font-weight: 600;
    padding: 9px 30px;
    color: #000;
    background-color: rgb(234, 189, 92);
    border-radius: 4px;
    cursor: pointer;
    border: none;
    outline: none;
    transition: 0.3s;
    }

    #new-slider{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    align-items: center;
    background-image:url(../Untitled\ design\ \(1\).png);
    background-repeat:no-repeat;
    background-position: 20% 30%;
    background-color: #041e42;
    }
    #new-slider h4{
    font-size: 22px;
    font-weight: 700;
    color: #fff;


    }
    #new-slider p{
    font-size: 14px;
    font-weight: 600;
    color: #818ea0;

    }
    #new-slider p span{
    color: #ffbd27;
    }
    #new-slider .form{
    display: flex;
    width: 40%; 

    }
    #new-slider input{
    height: 3.125rem;
    padding: 0 1.25em;
    font-size: 14px;
    width: 100%;
    border: 1px solid transparent;
    border-radius: 4px;
    outline: none;
    border-top-right-radius: 0%;
    border-bottom-right-radius: 0%;

    }
    #new-slider button{
    border-top-left-radius: 0%;
    border-bottom-left-radius: 0%;
    height:3.166rem;
    }
    footer{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    }
    footer .column-1{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin-bottom: 20px;
    }
    footer h4{
    font-size: 14px;
    padding-bottom: 20px;
    }
    footer p{
    font-size: 13px;
    margin: 0 0 8px 0;
    }
    footer a{
    font-size: 13px;
    text-decoration: none;
    color: #222;
    margin-bottom: 10px;
    }
    footer .follow{
    margin-top: 20px;


    }
    footer .follow i{
    color: #465b52;
    padding-right: 4px;
    cursor: pointer;
    }
    footer .follow i:hover,
    footer a:hover{
    color: #088178;

    }
    footer .copyright{
    width: 100%;
    text-align: center;
    }
    .section-p1{
    padding: 40px 80px;

    }
    .section-m1{
    margin: 40px 0;
    }
 </style>
 
</head>
<body>
  
    <header class="text-gray-600 body-font">
        <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
          <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
              <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
            </svg>
            <span class="ml-3 text-xl">PIZZA-PARADICE</span>
          </a>
          <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
            <a class="mr-5 hover:text-gray-900" href="#">TOP-OFFERS</a>
            <a class="mr-5 hover:text-gray-900"href="#">FAMILY DEALS</a>
            <a href class="mr-5 hover:text-gray-900"href="#">OUR MENU</a>
            <a href class="mr-5 hover:text-gray-900"href="#">CONTACT</a>
          </nav>
           <a href="login.html"> <button class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-200 rounded text-base mt-4 md:mt-0" href="logout">Logout
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
            </svg>
          </button></a>
        </div>


      </header>
      <hr><section class="text-gray-600 body-font" style="background-image: url(/img/cheesy-pepperoni-pizza.jpg);">
        <div class="container mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
          <div class="lg:flex-grow md:w-1/2 lg:pr-24 md:pr-16 flex flex-col md:items-start md:text-left mb-16 md:mb-0 items-center text-center">
            <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Welcome to PIZZA PARADICE 
              <br class="hidden lg:inline-block">PIZZA PARADICE
            </h1>
            <p class="mb-8 leading-relaxed">"Where Every Bite Takes You to Pizza Paradice"!!</p>
            <div class="flex justify-center">
              <a href="#top"><button href class="inline-flex text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg">Shop now</button></a>
              <!-- <button class="ml-4 inline-flex text-gray-700 bg-gray-100 border-0 py-2 px-6 focus:outline-none hover:bg-gray-200 rounded text-lg">Button</button> -->
            </div>
          </div>
          
          <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6">
            <img class="object-cover object-center rounded" alt="hero" src="https://images.squarespace-cdn.com/content/v1/5eddf0ea21c2797a4fc35b33/1597843669733-ACMYQ3IINKSC3DPEGU0S/pizza.gif">
          </div>
        </div>
      </section>
      <section id="feature" class="section-p1">
        <div class="top-offers">
            <img src="C:\Users\Anish kumar\Desktop\image Gdsc\images1" alt="">
            <h4>Free shipping</h4>
            <!-- <h5>( On Order Over 300 )</h5> -->

        </div>
        <div class="top-offers">
            <img src="C:\Users\Anish kumar\Desktop\image Gdsc\replacement" alt="">
            <h4>Fast Service</h4>

        </div>
        <div class="top-offers">
            <img src="C:\Users\Anish kumar\Desktop\image Gdsc\call" alt="">
            <h4>PH : 6299942356</h4>

        </div>
        
     </section>
     <section class="text-gray-600 body-font">
      <h2  class="h2">TOP OFFERS</h2><hr>
      <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-wrap -m-4">
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/topoffer1.html" class="block relative h-48 rounded overflow-hidden">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block"  src="img/3.jpg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="top-offers/topoffer1.html"><h2 class="text-gray-900 title-font text-lg font-medium">Margherita</h2></a>
              <p class="mt-1">$16.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product2.html" class="block relative h-48 rounded overflow-hidden">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/4.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
             <a href="top-offers/product2.html"> <h2 class="text-gray-900 title-font text-lg font-medium">Pepperoni</h2></a>
              <p class="mt-1">$21.15</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product3.html" class="block relative h-48 rounded overflow-hidden">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/6.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="top-offers/product3.html"><h2  class="text-gray-900 title-font text-lg font-medium">Hawaiian</h2></a>
              <p class="mt-1">$12.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product4.html" class="block relative h-48 rounded overflow-hidden">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/7.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
             <a href="top-offers/product4.html"> <h2 class="text-gray-900 title-font text-lg font-medium">Veggie Delight</h2></a>
              <p class="mt-1">$18.40</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product5.html" class="block relative h-48 rounded overflow-hidden">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/8.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="top-offers/product5.html"><h2 class="text-gray-900 title-font text-lg font-medium">Four Cheese</h2></a>
              <p class="mt-1">$16.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product6.html" class="block relative h-48 rounded overflow-hidden">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/9.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
             <a href="top-offers/product6.html"> <h2 class="text-gray-900 title-font text-lg font-medium">Supreme</h2></a>
              <p class="mt-1">$21.15</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product7.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.50 AM (1).jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="top-offers/product7.html"><h2 class="text-gray-900 title-font text-lg font-medium">White pizza</h2></a>
              <p class="mt-1">$12.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="top-offers/product8.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.50 AM.jpeg">
            </a>
            <div class="mt-4">
             <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
             <a href="top-offers/product8.html"><h2 class="text-gray-900 title-font text-lg font-medium">Supreme large</h2></a>
              <p class="mt-1">$18.40</p>
            </div>
          </div>
        </div>
      </div>
    </section>
      <section class="text-gray-600 body-font">
        <div class="container px-5 py-24 mx-auto">
          <div class="lg:w-2/3 flex flex-col sm:flex-row sm:items-center items-start mx-auto">
            <h1 class="flex-grow sm:pr-16 text-2xl font-medium title-font text-gray-900">Explore Exciting Grand Offers On ~~ | PIZZA-PARADICE |</h1>
           <a href="topoffer.html"><button class="flex-shrink-0 text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg mt-10 sm:mt-0">See More</button></a> 
          </div>
        </div>
      </section>
      <section id="banner" class="section-m1">
        <h4>PIZZA PARADICE</h4>
        <h2>Up to <span>50% off</span> PIZZA - PARADICE</h2>
        <a href="textbook.html"><button class="normal">EXPLORE MORE</button></a>
    </section>
    <section class="text-gray-600 body-font">
      <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-wrap -m-4">
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook1.html" class="block relative h-48 rounded overflow-hidden">
              <img  alt="ecommerce" class="object-cover object-center w-full h-full block"  src="img/WhatsApp Image 2024-03-28 at 11.15.52 AM.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="textbook/textbook1.html"><h2 class="text-gray-900 title-font text-lg font-medium">Extra large</h2></a>
              <p class="mt-1">$16.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook2.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.53 AM (1).jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
             <a href="textbook/textbook2.html"> <h2 class="text-gray-900 title-font text-lg font-medium">Green paporonie</h2></a>
              <p class="mt-1">$21.15</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook3.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.53 AM.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="textbook/textbook3.html"><h2 class="text-gray-900 title-font text-lg font-medium">veg</h2></a>
              <p class="mt-1">$12.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook4.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.54 AM (1).jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="textbook/textbook4.html"><h2 class="text-gray-900 title-font text-lg font-medium">Non veg</h2></a>
              <p class="mt-1">$18.40</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook5.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.54 AM (2).jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="textbook/textbook5.html"><h2 class="text-gray-900 title-font text-lg font-medium">Margreta</h2></a>
              <p class="mt-1">$16.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook6.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.54 AM.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="textbook/textbook6.html"><h2 class="text-gray-900 title-font text-lg font-medium">Sheese</h2></a>
              <p class="mt-1">$21.15</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook7.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/WhatsApp Image 2024-03-28 at 11.15.55 AM.jpeg">
            </a>
            <div class="mt-4">
              <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
             <a href="textbook/textbook7.html"> <h2 class="text-gray-900 title-font text-lg font-medium">Doubble Cheese</h2></a>
              <p class="mt-1">$12.00</p>
            </div>
          </div>
          <div class="lg:w-1/4 md:w-1/2 p-4 w-full">
            <a href="textbook/textbook8.html" class="block relative h-48 rounded overflow-hidden"href="#">
              <img alt="ecommerce" class="object-cover object-center w-full h-full block" src="img/3.jpg">
            </a>
            <div class="mt-4">
             <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
              <a href="textbook/textbook8.html"><h2 class="text-gray-900 title-font text-lg font-medium">Medium large VEg</h2></a>
              <p class="mt-1">$18.40</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="new-slider" class="section-p1 section-m1">
      <div class="new-stack">
      <h4>The Promise of Thirty Minutes Delivery</h4>
      <p>Pizza Paradice: Delivering Happiness<span>"Where Every Bite Takes You to Pizza Paradice"</span></p>
     </div>
      <div class="form">
         <input type="text" placeholder="Your Email address">
         <button class="normal">Sign Up</button>
      </div>
 </section>
 <footer class="section-p1">
     <div class="column-1">
         <h1>PIZZA-PARADICE</h1>
     <P>"Where Every Bite Takes You to Pizza Paradice"</P>
     <h4>Contact</h4>
     <p><strong>Address:</strong>Jharkhand,East-singhbhum,near Kingdomhall</p>
     <p><strong>Phone:</strong>+91 6299492530 / (+91) 979803000</p>
     <p><strong>Hours:</strong>10:00 - 18:00 , Mon - sat</p>
     <div class="follow">
         <h4>Follow us</h4>
         <div class="icon"><i class="fab fa-facebook-f"></i>
             <i class="fab fa-twitter"></i>
             <i class="fab fa-instagram"></i>
             <i class="fab fa-youtube"></i>
         </div>
     </div>
 </div>
     <div class="column-1">
         <h4>About</h4>
         <a href="#">About us</a>
         <a href="#">Delivery Information</a>
         <a href="#">Privacy Policy</a>
         <a href="#">Terms & Conditions</a>
         <a href="#">Contact us</a>
     </div>
     <div class="column-1">
         <h4>My Account</h4>
         <a href="#">Sign In</a>
         <a href="#">My Wishlist</a>
         <a href="#">Track My Order</a>
         <a href="#">Terms & Conditions</a>
         <a href="#">Help</a>
     </div>
     