<%-- 
    Document   : PaginaEmpleado
    Created on : 26/05/2017, 12:37:25 PM
    Author     : Luisa
--%>

<%@page import="GGBank.Usuario"%>
<%@page import="DaoUsuario.DaoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    
	<!DOCTYPE html>
<%
    if(session.getAttribute("usuarioGuardado")==null){
        response.sendRedirect("index.html");
    }else{
        
    String tipo = session.getAttribute("usuarioTipo").toString();
        if (!tipo.equals("3")) {
            response.sendRedirect("index.html");
           
        }
    }
    
    
    %>
<html>
<head>
      <script src="js/jquery-3.2.0.js"
        type="text/javascript"></script>    
        <script src="js/commons.js"
        type="text/javascript"></script>  
        <script src="js/ControllerMostrarTodo.js"
        type="text/javascript"></script>
	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1">
   
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/templatemo_misc.css">
	<link rel="stylesheet" href="css/templatemo_style.css">
	<link rel="stylesheet" type="text/css" href="semantic.css">
</head>
<body>
<jsp:include page="partials/topOfBody.jsp"></jsp:include>

		<div class="container-fluid"> <!-- /#about -->
			
			<div id="services" class="section-content">
			
					<div class="col-md-12">
						<div class="section-title">
						  <h2>HISTORIAL</h2>
						</div> <!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				
				
			  <div class="row our-skills">
				
				  <h3>Actualice para ver sus pagos</h3>
				  <br>
<br>
                <br>
            
 <center><table class="ui inverted violet table">
                                
                                 <tr>
                                     <th width="84" scope="col"><strong>Hora</strong></th>
                                            <th width="84" scope="col"><strong>Razón</strong></th>	
                                            <th width="84" scope="col"><strong>Transfiere</strong></th>
                                            <th width="84" scope="col"><strong>Recibe</strong></th>
                                            <th width="84" scope="col"><strong>Valor</strong></th>
                                </tr>
                              
                            
                                <tbody id="test">
                                </tbody>
                                                               
                                                                
              </table></center>
              

		   
		   <br><br><br>
			   <center> <button onclick="mostrartodo();" class="ui violet button"><font><font>Actualizar</font></font></button></center>
				  </div>
				  <br>
				  <center>
			</div> <!-- /#services -->
		    <!-- /#services -->
			
			
</center>
		    <!-- /#contact -->

		</div> <!-- /.container-fluid -->

		<div class="site-footer">
			<div class="first-footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="social-footer">
								<ul>
									<li><a href="#" class="fa fa-facebook"></a></li>
									<li><a href="#" class="fa fa-twitter"></a></li>
									<li><a href="#" class="fa fa-dribbble"></a></li>
									<li><a href="#" class="fa fa-linkedin"></a></li>
									<li><a href="#" class="fa fa-rss"></a></li>
								</ul>
							</div> <!-- /.social-footer -->
						</div> <!-- /.col-md-12 -->
					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.first-footer -->
			<div class="bottom-footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							<p class="copyright">Copyright © 2017 <a href="#">Green Geek Bank </a>
                            </p>
						</div> <!-- /.col-md-6 -->
						 
					</div> <!-- /.row -->
				</div> <!-- /.container-fluid -->
			</div> <!-- /.bottom-footer -->
		</div> <!-- /.site-footer -->

	</div> <!-- /#main-content -->

	<!-- JavaScripts -->
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery.singlePageNav.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/custom.js"></script>
	<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto({hook: 'data-gal'});
		});


    </script>
<!-- templatemo 394 sonic -->
</body>

</script>
				
				
				<script type="application/javascript">
	$(document).ready(function(){
		var x=$(window).width();
		var y=$(window).height();
		if(x>800 ){
			$("#cuadroNombre").hide();
		
		}
		
	});			
				
				</script>



</html>