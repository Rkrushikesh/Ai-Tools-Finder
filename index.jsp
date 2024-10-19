<%-- 
    Document   : index
    Created on : 21-Mar-2024, 9:45:45 am
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>@MySite</title>

  <link rel="stylesheet" href="AiTools.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <script src="JavaScript.js"></script>
  <style>
      * {
   margin-top: 0px;
   margin-left: 0px;
   margin-right: 0px;

 }
 
.login{
  display: flex;
 
}

.lLink1 {
  display: flex;
  margin-left: 1140px;
  margin-top: 3px;
 

}



.lLink1:hover{
  cursor: pointer;
}


 div.siteName {
   display: flex;
   flex-direction: row;
   color: rgb(0, 0, 0);
   margin-top: 6px;
   justify-content: center;
   text-align: center;
   margin-left: 13px;
 }


 nav {
   /* position: fixed; */
   display: flex;
text-align: center;
align-items: center;
   padding-top: 15px;
   padding-left: 15px;
   width: 100%;
   height: 29px;
   background-color:black;
   margin-top: 2px;
   padding-bottom: 10px;
 }
 .navbar{
  display: flex ;
  flex-direction: row;

 }

 li {
   display: flex;
   flex-direction: column;
   text-align: center;
 }

 a {
  display: flex;
  flex-direction: column;
   margin-top: 12px;
  color: white;
   text-decoration: none;
   padding: 0px 20px 0px 20px;
   border-radius: 22px;
 }

 .a1 {
   padding-left: 62px;
 }

 nav a:hover {
   border: 2px solid rgb(112, 219, 255);
 }
 
 
 
   @media (max-width : 1141px) {
  .lLink1{
    margin-left: 56px;
  }  

  .search {
     width: auto;
   }

   #navbar {
     padding-bottom: 22px;
     height: auto;
     display: flex;
     flex-direction: row;
      

   }

   .navbar {
     display: flex;
     flex-direction: column;
   }

   .a1 {
   
     /* border-radius: 22px; */
     padding: 0px;
     margin-top: 2px;
   }
 a:hover{
     border: 2px solid rgb(83, 239, 253); 
 }
   .direction {
     height: auto;
     width: auto;
     flex-direction: column;
   }
   }
  </style>

</head>

<body>

  <div id="login">

    <div class="login">

      <div class="siteName">
        aI Tool FINDER..?
      </div>
      
      <div class="lLink1" onclick="location.href='./form.html'"> 🔐» LŌGÍN </div>

    </div>
  </div>


  <nav id="navbar">
    <ul class="navbar">

      <li class="a1"><a href="./AiTools.html">AiTools</a></il>
      <li class="a1"><a href="./Categories.html">Categories</a></il>
      <li class="a1"><a href="./Aiworld.html">AiWorld</a> </li>
      <li class="a1"> <a href="./DevHelp.html"> DevHelp </a></li>
    </ul>
  </nav>

    </body>
</html>
