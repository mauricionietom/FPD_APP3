<%-- 
    Document   : PaginaProfesor
    Created on : 24/05/2017, 12:19:36 PM
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
        if (!tipo.equals("4")) {
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
        <script src="js/ControllerFiltrar.js"
        type="text/javascript"></script>
        <script src="js/ControllerMostrarTodo.js"
        type="text/javascript"></script>
        <script src="js/ControllerRendimiento.js"
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
				<div class="col-md-8">
						<h3>Ingrese el identificador de la empresa para ver sus transacciones</h3>
					   
						 <center> 
						 Filtrar por empresa:  
						 
						 <form class="ui fluid form">
  <div class="field">
    <input id="num" type="text" placeholder="Ej:1">
       </div>
	  </form>
           
           <button onclick="buscarTran(id)" class="ui violet button"><font><font>Buscar</font></font></button>
            <button onclick="mostrartodo();" class="ui violet button"><font><font>Mostrar Todos</font></font></button>
            </center> 
            <br>
              <br>
                <br>
            <div>
 <center><table class="ui inverted violet table">
                                
                                <tr>
                       <th width="84" scope="col"><strong>Hora</strong></th>
                                   
                                    <th width="84" scope="col"><strong>Razón</strong></th>
                        <th width="84" scope="col"><strong>Banco</strong></th>
			            <th width="84" scope="col"><strong>Gerente</strong></th>
			            <th width="84" scope="col"><strong>Valor</strong></th>			
                                </tr>
                              
                                <tbody id="test">
                                </tbody>
                                                                
              </table></center>
</div>
				  </div>
				  <br>
				<center><img src="images/Recurso 1.png" width="230" height="210" alt=""/> </center></div>
			</div> <!-- /#services -->
			
			
			
			
			<div id="portfolio" class="section-content">
				
					<div class="col-md-12">
						<div class="section-title">
						  <h2>RENDIMIENTO</h2>
						</div> <!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				
			  <div class="row our-skills">
				<div class="col-md-8">
				
            <div>
 <center>
 	
 	 <table class="ui inverted green table" >
                                
                                <tr>
                                    <th width="84" scope="col"><strong>Empresa</strong></th>
			            <th width="84" scope="col"><strong>Auditor</strong></th>
			         <th width="84" scope="col"><strong>Rendimiento</strong></th>
                                <th width="84" scope="col"><strong>Hora</strong></th>
                                </tr>
                              
                                <tbody id="tableRendimiento">
                                </tbody>
                                                                
                            </table>
                            <br>
                            <div class="load-more">
						<button onClick="getRendimientos();" class="ui green button"><font><font>Actualizar</font></font></button>
							
						</div>
 </center>
</div>
				  </div>
				  <br>
				  <center>
				<img src="images/rendimiento.jpg" width="230" height="210" alt=""/> </center> </div>
			</div> <!-- /#services -->
			
			
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