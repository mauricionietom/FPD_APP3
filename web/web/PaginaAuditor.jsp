<%-- 
    Document   : PaginaAuditor
    Created on : 2/06/2017, 02:16:22 AM
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
        if (!tipo.equals("5")) {
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
        <script src="js/ControllerRendimiento.js"
        type="text/javascript"></script>
        <script src="js/ControllerFiltrar.js"
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
    
   
	<% String s=session.getAttribute("usuarioGuardado").toString();
                   DaoUsuario uu= new DaoUsuario();
                   Usuario u=uu.ObjetoUsuario(Integer.parseInt(s)); %>
	<!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars fa-2x"></i>
        </a>
        <div class="navigation responsive-menu">
            <ul>
                <li class="home"><a href="#templatemo">Home</a></li>
	            <li class="about"><a href="#about">Rendimiento</a></li>
	            <li class="services"><a href="#services">historial transacciones</a></li>
	            <li class="portfolio"><a href="#portfolio">historial rendimiento</a></li>
	            <li><a href="logout.jsp" class="external">Cerrer sesión</a></li>
            </ul> <!-- /.main_menu -->
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->


	<div id="main-sidebar" class="hidden-xs hidden-sm">
	<br>
	<table align="center">
	
	
<center><img src="images/logo.png" alt="" width="260" height="112" class="img-responsive"/></center>
</table>

  
  <br> 

  <table class="ui inverted grey table">
 <tr>
      <td>
	  <label id=nombre>Nombre:  <%=u.getNombre() %> </label>
            <br>
             
	 </td>
	  </tr>
			</table>
		
  <br>  <br>
		<div class="navigation">
	        <ul class="main-menu">
	            <li class="home"><a href="#templatemo">HOME</a></li>
	            <li class="about"><a href="#about">RENDIMIENTO</a></li>
	            <li class="services"><a href="#services">HISTORIAL TRANSACCIONES</a></li>
	             <li class="portfolio"><a href="#portfolio">HISTORIAL RENDIMIENTO</a></li>
	            <li><a href="logout.jsp" class="external">Cerrar sesión</a></li>
	        </ul>
	  </div> <!-- /.navigation -->

	</div> <!-- /#main-sidebar -->

	<div id="main-content">

	  <div id="templatemo">
			<div class="main-slider">
				<div class="flexslider">
					<ul class="slides">
                    
						<li>
							<div class="slider-caption">
						 <center>
						  <table>
							  
						   </table>
							  </center> 
							<p><img src="images/nombrebanc.png"
									  width="260" height="112"
									  alt=""/>BIO-WORKING FOR THE PLANET
							</p>
								
							</div>
							
							
							<img src="images/slide1.jpg" alt="Slide 1">
						</li>
                        
						<li>
							<div class="slider-caption">
							  <p><img src="images/nombrebanc.png"
									  width="260" height="112"
									  alt=""/>BIO-WORKING FOR THE PLANET
							</p>
								
							</div>
							<img src="images/slide2.jpg" alt="Slide 2">
						</li>
                        
                        <li>
                        
							<div class="slider-caption">
							 <p><img src="images/nombrebanc.png"
									  width="260" height="112"
									  alt=""/>BIO-WORKING FOR THE PLANET
							</p>
								
							</div>
							<img src="images/slide3.jpg" alt="Slide 3">
						</li>
                        
					</ul>
				</div>
			</div>
			
			 <table id="cuadroNombre" class="ui inverted grey table">
 <tr>
      <td>
	  <label id=nombre>Nombre:  <%=u.getNombre() %> </label>
            <br>
             
	 </td>
	  </tr>
			</table>
			
			
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="welcome-text">
					  <h2><font color="green">BIENVENIDO</font></h2>
						  
						  <center><label><font color="green">Este es tu banco verde.</font></label></center>
						  <br>
						  <center><label><font color="green"> Nosotros queremos un cambio, súmate por un mundo mejor.</font></label> </center>
						  <br>
						  
					  
					</div>
				</div>
			</div>
		</div> <!-- /#sTop -->

		<div class="container-fluid">

			<div id="about" class="section-content">
				<div class="row">
					<div class="col-md-12">
						<div class="section-title">
						  <h2>RENDIMIENTO</h2> 
						 
						</div>
						
						
						
					</div>
					
				</div>
				
				<div class="row our-story">
					<div class="col-md-8 col-lg-7">
					 	<h3>registre el rendimiento de cada empresa</h3>
					  <center>	<select id="idEmpresa" class="ui search dropdown">
					  	
					  	<br><br><br>
					  	
    <option>Seleccionar empresa</option>
    <option value="1">1.Sostenibilidad y Medio Ambiente</option>
    <option value="2">2.Actividades Sociales y Culturales</option>
    <option value="3">3.Marketing</option>
    <option value="4">4.Comunicaciones y Audiovisuales</option>
    <option value="5">5.Estadistica y Seguimiento</option>
    <option value="6">6.Catering</option>
    <option value="7">7.Logistica de transporte y Suministros</option>
    <option value="8">8.Green Geek Bank</option>
    
  </select>
     </center> 
        <br><br><br>
        
          
           
       <center>
        Rendimiento: 
       
        <form class="ui fluid form">
  <div class="field">
        <input id="rendimiento" type="text" placeholder="20%">
       
        
        <br><br><br>
         <button onclick="enviarRendimiento();" class="ui yellow button"><font><font>Enviar</font></font></button>
        
         <br>
         </center>
      </div>
					<div class="col-md-4">
						<div class="story-image">
						<br>
						
						 <center><img id="manitoPesos" src="images/1.jpg" width="230" height="210" class="img-responsive"> </center></div>
						</div>
					</div>
				</div> <!-- /.row -->
			</div> <!-- /#about -->
			
			<div id="services" class="section-content">
			
					<div class="col-md-12">
						<div class="section-title">
						  <h2>HISTORIAL transacciones</h2>
						</div> 
						<!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				
				
			  <div class="row our-skills">
				<div class="col-md-8">
						<h3>Ingrese el identificador de la empresa para ver sus transacciones</h3>
					   
						 <center> 
						 Filtrar por empresa:  
						 
						 <form class="ui fluid form">
  <div class="field">
    <input id="num" type="text" placeholder="Ej: 1">
       </div>
	  </form>
           
           <button onclick="buscarTran();" class="ui violet button"><font><font>Buscar</font></font></button>
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
		  <center>
				<img src="images/Recurso 1.png" width="230" height="210" alt=""/> </center> </div>
	  </div> 
		<!-- /#services -->
			
			
			
	
			<div id="portfolio" class="section-content">
				
					<div class="col-md-12">
						<div class="section-title">
						  <h2>historial RENDIMIENTO</h2>
						</div> 
						<!-- /.section-title -->
					</div> <!-- /.col-md-12 -->
				
			  <div class="row our-skills">
				<div class="col-md-8">
			
					   
                <br>
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
	  <div id="contact" class="section-content">
		<div class="row">
					<div class="col-md-12">
<!-- /.section-title -->
					</div> 
					<!-- /.col-md-12 -->
				</div> <!-- /.row -->
	    <!-- /.row -->
		  </div> 
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
		if(x<=800 ){
			$("#manitoPesos").height(210);
			$("#manitoPesos").width(230);
		}
		
	});			
				
				</script>
				
				
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