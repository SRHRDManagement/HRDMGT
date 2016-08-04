<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="assets/images/favicon_1.ico">

        <title>Login</title>

        <link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/static/css/core.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/static/css/components.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/static/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/static/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/static/css/responsive.css" rel="stylesheet" type="text/css" />
        
    </head>
    <body>

        <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
        	<div class=" card-box">
            <div class="panel-heading"> 
                <h3 class="text-center"> Sign In to <strong class="text-custom">UBold</strong> </h3>
            </div> 


            <div class="panel-body">
            <form class="form-horizontal m-t-20" id="frmLogin" method="post">
                
                <div class="form-group ">
                    <div class="col-xs-12">
                        <input class="form-control" type="text" required="" placeholder="Username" name="usr_email">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-12">
                        <input class="form-control" type="password" required="" placeholder="Password" name="usr_password">
                    </div>
                </div>

                <div class="form-group ">
                    <div class="col-xs-12">
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox-signup" type="checkbox">
                            <label for="checkbox-signup">
                                Remember me
                            </label>
                        </div>
                        
                    </div>
                </div>
                
                <div class="form-group text-center m-t-40">
                    <div class="col-xs-12">
                        <input class="btn btn-pink btn-block text-uppercase waves-effect waves-light" type="submit" value="Login"/>
                    </div>
                </div>

                <div class="form-group m-t-30 m-b-0">
                    <div class="col-sm-12">
                        <a href="page-recoverpw.html" class="text-dark"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
                    </div>
                </div>
            </form> 
            
            </div>   
            </div>                              
                <div class="row">
            	<div class="col-sm-12 text-center">
            		<p>Don't have an account? <a href="page-register.html" class="text-primary m-l-5"><b>Sign Up</b></a></p>
                        
                    </div>
            </div>
            
        </div>
        
        <!-- jQuery  -->
        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/detect.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/fastclick.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.slimscroll.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.blockUI.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/waves.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.nicescroll.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.scrollTo.min.js"></script>


        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.core.js"></script>
        <script src="${pageContext.request.contextPath}/resources/static/js/jquery.app.js"></script>
         <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
		<script type="text/javascript">
        
        $(function() {
        	
        	$("#frmLogin").submit(function(e){
       		
       		  e.preventDefault();
       			
       		  $.ajax({
  	            url: ${pageContext.request.contextPath}"/login",
  	            type: "POST",
  	            data: $("#frmLogin").serialize(),
//   	            beforeSend: function (xhr) {
//   	                xhr.setRequestHeader("X-Ajax-call", "true");
//   	            },
  	            success: function(data) {
  	            	alert(data+", jam")
  	            	if(data == "User account is locked"){
  	            		alert(data);
  	            	}else if(data == "User is disabled"){
  	            		alert(data);
  	            	}else if(data == "Bad credentials"){
  	            		alert(data);
  	            	}else{
  	            		alert("Logined success.vansa");
  	            		location.href = "${pageContext.request.contextPath}/"+ data;
  	            	}
  	            	
  	            },
  	         	error: function(data){
  	         		console.log(data);
  				}
  	        });
       			
       		});
	      
        	
        	
        	/* $.ajax({ 
			    url: "http://localhost:9999/api/user?page=3&limit=5", 
			    type: 'GET', 
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                    xhr.setRequestHeader("Authorization" , "Basic ZGV2OiFAI2FwaQ==");
                },
			    success: function(data) { 
					console.log(data);
				  
					
			    },
			    error:function(data,status,er) { 
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			}); */
        	
        
        });
        </script>
	
	</body>
</html>