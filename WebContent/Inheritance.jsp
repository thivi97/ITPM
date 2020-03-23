<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
  <%
    if(request.getParameter("tx") != null){
    	session.setAttribute("tx",request.getParameter("tx"));
    }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CodeMe_Inheritance</title>
        <style>
	*{
	margin: 0;
	padding: 0;
	list-style: none;
	text-decoration: none;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
	}
	body{
	background: #e1ecf2;
	}
	.wrapper{
	margin: 10px;
	}
	.wrapper .top_navbar{
	width: calc(100% - 20px);
	height: 60px;
	display: flex;
	position: fixed;
	top: 10px;
	}
	.wrapper .top_navbar .hamburger{
	width: 70px;
	height: 100%;
	background: #2e4ead;
	padding: 15px 17px;
	border-top-left-radius: 20px;
	cursor: pointer;
	}
	.wrapper .top_navbar .hamburger div{
	width: 35px;
	height: 4px;
	background: #92a6e2;
	margin: 5px 0;
	border-radius: 5px;
	}
	.wrapper .top_navbar .top_menu{
	width: calc(100% - 70px);
	height: 100%;
	background: #fff;
	border-top-right-radius: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 20px;
	box-shadow: 0 1px 1px rgba(0,0,0,0.1);
	}
	.wrapper .top_navbar .top_menu .logo{
	color: #2e4ead;
	font-size: 20px;
	font-weight: 700;
	letter-spacing: 3px;
	}
	.wrapper .sidebar{
	position: fixed;
	top: 70px;
	left: 10px;
	background: #2e4ead;
	width: 200px;
	height: calc(100% - 80px);
	border-bottom-left-radius: 20px;
	transition: all 0.3s ease;
	}
	.wrapper .sidebar ul li a{
    display: block;
    padding: 20px;
    color: #fff;
    position: relative;
    margin-bottom: 1px;
    color: #92a6e2;
    white-space: nowrap;
	}
	.wrapper .sidebar ul li a{
    display: block;
    padding: 20px;
    color: #fff;
    position: relative;
    margin-bottom: 1px;
    color: #92a6e2;
    white-space: nowrap;
	}
	.wrapper .sidebar ul li a{
    display: block;
    padding: 20px;
    color: #fff;
    position: relative;
    margin-bottom: 1px;
    color: #92a6e2;
    white-space: nowrap;
	}
	.wrapper .sidebar ul li a:hover,
	.wrapper .sidebar ul li a.active{
	background: #4360b5;
	color: #fff;
	}
	.wrapper .sidebar ul li a:before{
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 3px;
	height: 100%;
	background: #92a6e2;
	display: none;
	}
	.wrapper .sidebar ul li a span.title{
	display: inline-block;
	}
	wrapper .sidebar ul li a:hover:before,
	.wrapper .sidebar ul li a.active:before{
	display: block;
	}
	.wrapper .main_container{
	width: (100% - 200px);
	margin-top: 70px;
	margin-left: 200px;
	padding: 15px;
	transition: all 0.3s ease;
	}
	.wrapper.collapse .sidebar{
	width: 70px;
	}
	.wrapper.collapse .sidebar ul li a{
	text-align: center; 
	}
	.wrapper.collapse .sidebar ul li a span.title{
	display: none;
	}

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 80%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  
}


input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 4px 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}
</style>
    </head>
  
    <body> 
    <div class="wrapper">
  <div class="top_navbar">
    <div class="hamburger">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
      <div class="logo">CodeME</div>
    
    </div>
  </div>
 <div class="sidebar">
      <ul>
        <li><a href="http://localhost:8040/java123/index.jsp" >       
          <span class="title">Size</span></a></li>
        <li><a href="#">       
          <span class="title">Variables</span>
          </a></li>
        <li><a href="#">
          <span class="title">methods</span>
          </a></li>
		   <li><a href="http://localhost:8040/java123/Inheritance.jsp"  class="active">
          <span class="title">Inheritance</span>
          </a></li>
		   <li><a href="#">
          <span class="title">Coupling</span>
          </a></li>
		   <li><a href="#">
          <span class="title">Control structures</span>
          </a></li>
		  <li><a href="#">
          <span class="title">Total Estimate</span>
          </a></li>
       
    </ul>
  </div>
</div>
       
        

<div id="result">
	<div style="margin-left:25%;padding:1px 16px;height:1000px;">
 		 <div class="row">
  			<br>
  			<br>
  			<br>
  			<br>
   			<div>
           		<form action="FileUploadHandlerInh" enctype="multipart/form-data" method="post">
				<b>Choose File to Upload in Server</b>   <input type="file" name="file_name" />
 				<input type="submit" value="upload"/>
 				</form>        
        	</div>
			<br>
        	<br>
        	<br>
  			<form method="post" action="Inheritance.jsp">
      		<textarea name="tx" placeholder="Write something.." style="height:200px">${requestScope["message"]}</textarea>
    	</div>
		<div class="row">
  			<button type="save" onclick="alert('sussefull!')">Save</button>
   		</div>
		</form>
		<a href="ResultInheritance.jsp"> <input name="btnSum2" type="Submit" value="next"></a>       
     </div>
</div>
</body>
</html>