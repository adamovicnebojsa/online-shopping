<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
   <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   
  <spring:url var="css" value="/resources/css/" />
  <spring:url var="js" value="/resources/js/" />
  <spring:url var="images" value="/resources/images/" />
   
   
   <c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
   

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title}</title>
    
    <script>
    	window.menu='${title}';
    </script>
    

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">
    
     <!-- Bootstrap Readable Theme for navigation bottom -->
     <link rel="stylesheet" type="text/css" href="${css}/bootstrap-readable-theme.css">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
	
	
					<!-- ---------NAVIGATION---------------------- -->

   					<%@include file="./shared/navbar.jsp" %>
   					
   					
   					
   					
   
  	<!--  ----------------------------- PAGE CONTENT ----------------------------- -->
  	
  	<div class="content">
  	
 					<!-- HOME  LOADING  -->
 					<c:if test="${ userClickHome == true }">  
    					<%@include file="./shared/home.jsp" %>
    				</c:if>
    			    <!-- ABOUT  LOADING  -->
    				<c:if test="${ userClickAbout == true }">  
    					<%@include file="./shared/about.jsp" %>
    				</c:if>
    				 <!-- CONTACT LOADING  -->
    				<c:if test="${ userClickContact == true }">  
    					<%@include file="./shared/contact.jsp" %>
    				</c:if>
    				
    				<!-- LOADING  only when user click view products all or by category -->
    				<c:if test="${userClickAllProducts == true or userClickCategoryProducts==true}">  
    						<%@include file="./shared/listProducts.jsp" %>
    				</c:if>
    				
    				
    				
    
    </div>
    
    

    
                      <!--------- ---FOOTER ---------------- -->
                      
                  <%@include file="./shared/footer.jsp" %>>
                      
                      
                      
                      

    <!-- JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.js"></script>
    
      <!-- Self coded JavaScript -->
	<script src="${js}/myapp.js"></script>
	
	
	
	</div>
</body>

</html>
