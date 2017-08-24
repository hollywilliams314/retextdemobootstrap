<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <body>
 	<form action="<%=request.getContextPath() %>/located/titleLocated" method=POST>
 	
 			<div class="container" style="background-color: #002147;padding:10px;">
 	<!-- 			<p>.</p>  -->
		 		<div class="well well-lg" style="background-color: #EEEEEE">
	 	
					<div class="row justify-content-center"><h2>ReText</h2></div>
					<div class="row justify-content-center">
						<p class="small">You can buy, sell, and trade text books on campus</small>
					</div>
					<div class="row justify-content-center"><h3>Find a Book</h3></div>
					
					<div class="row justify-content-center ">
						<div class="center" style="padding:10px">
							School: <input type="text" name="school" value="${school}" /> 
						</div>
					</div>
					<div class="row justify-content-center ">
						<div class="center" style="padding:10px">
							Campus: <input type="text" name="campus" value="${campus}" /> 
						</div>
					</div>
					<div class="row justify-content-center ">
						<div class="center" style="padding:10px">
							OR  
							School Nick Name: <input type="input" name="nickName" value="${nickName}" /> 
						</div>
					</div>
					<div class="row justify-content-center ">
						<div class="center" style="padding:10px">
							ISBN: <input type="input" name="isbn" />
						</div>
					</div>
					<div class="row justify-content-center">
						<div class="center" style="padding:10px">
							<input type="submit" class="btn btn-success center-block" name="browsebutt" value="search"  />
						</div>
					</div>
					<div class="row justify-content-center">
						<div class="center" style="padding:10px">
							<a href="<%=request.getContextPath() %>/loginOut">Login</a>  
						</div>
					</div>
					
						
			<!-- 		  <input type="submit" name="browsebutt" value="search" >    -->	
						
			<!--  		<a href="<%=request.getContextPath() %>/loginOut">Login</a>  -->	

					<div class="small">
						<p class="small">&copy copyright 2017 Holly Williams</p>
					</div>
						
			</div>
			
		</div>
		
	</form>
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>