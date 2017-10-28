<%@page import="GGBank.Usuario"%>
<%@page import="DaoUsuario.DaoUsuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <%
            String s = session.getAttribute("usuarioGuardado").toString();
            DaoUsuario uu = new DaoUsuario();
            Usuario u = uu.ObjetoUsuario(Integer.parseInt(s));
           %>
		
                 <div id="myModalLoading" class="myModal"><!-- Place at bottom of page --></div>  
        <div class="responsive-navigation visible-sm visible-xs">
            <a href="#" class="menu-toggle-btn">
                <i class="fa fa-bars fa-2x"></i>
            </a>
            <div class="navigation responsive-menu">
                <ul>
                    <li class="home"><a href="#templatemo">Home</a></li>
                    <% if(u.getTipo()<3){%>
                    <li class="about"><a href="#about">tramites</a></li>
                    <%} %>
                    <li class="services"><a href="#services">historial</a></li>
                    <% if(u.getTipo()!=3){%>
                    <li class="portfolio"><a href="#portfolio">rendimiento</a></li>
                    <%} %>
                    <li><a href="logout.jsp" class="external">Cerrar sesion</a></li>
                </ul> <!-- /.main_menu -->
            </div> <!-- /.responsive_menu -->
        </div> <!-- /responsive_navigation -->


        <div id="main-sidebar" class="hidden-xs hidden-sm">
            <br>
            <table align="center">


                <center><img src="images/logo.png" alt="" width="250" height="102" class="img-responsive"/></center>
            </table>

            <table class="ui inverted grey table">
                <tr>
                    <td>
                        <label id=nombre>Nombre:  <%=u.getNombre()%></label>
                        <br>
                        <%            
            	
            	if(u.getTipo()==3 ||u.getTipo()==2){%>
            		<br>
                        <label id=saldo>Saldo: <%=u.getSaldo()%></label>
            	<%	  
            	}       
		        %>	
                        
                    </td>
                </tr>
            </table>

            <br>  <br>
            <div class="navigation">
                <ul class="main-menu">
                    <li class="home"><a href="#templatemo">HOME</a></li>
                    <%            
            	
            	if(u.getTipo()<3){%>
                    <li class="about"><a href="#about">TRAMITES</a></li>
                    <%	  
            	}       
			        %>	
                    <li class="services"><a href="#services">HISTORIAL</a></li>
                    <% if(u.getTipo()!=3){%>
                    <li class="portfolio"><a href="#portfolio">RENDIMIENTO</a></li>
                       <%} %>
                    <li><a href="logout.jsp" class="external">Cerrar sesion</a></li>
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


                                <img src="images/aaa.png" alt="Slide 1">
                            </li>

                            <li>
                                <div class="slider-caption">
                                    <p><img src="images/nombrebanc.png"
                                            width="260" height="112"
                                            alt=""/>BIO-WORKING FOR THE PLANET
                                    </p>

                                </div>
                                <img src="images/bb.png" alt="Slide 2">
                            </li>

                            <li>

                                <div class="slider-caption">
                                    <p><img src="images/nombrebanc.png"
                                            width="260" height="112"
                                            alt=""/>BIO-WORKING FOR THE PLANET
                                    </p>

                                </div>
                                <img src="images/ccc.png" alt="Slide 3">
                            </li>

                        </ul>
                    </div>
                </div>
                
                
			 <table id="cuadroNombre" class="ui inverted grey table">
 <tr>
      <td>
	  <label id=nombre>Nombre:  <%=u.getNombre() %> </label>
            <br>
             <%            
            	
            	if(u.getTipo()==3 ||u.getTipo()==2){%>
            		<br>
                        <label id=saldo>Saldo: <%=u.getSaldo()%></label>
            	<%	  
            	}       
		        %>	
             
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
                                <center><label><font color="green"> Nosotros queremos un cambio, sumate por un mundo mejor.</font></label> </center>
                                <br>


                            </div>
                        </div>
                    </div>
                </div> <!-- /#sTop -->