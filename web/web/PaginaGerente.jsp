
<%@page import="GGBank.Usuario"%>
<%@page import="DaoUsuario.DaoUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("usuarioGuardado")==null){
        response.sendRedirect("index.html");
    }else{
        
    String tipo = session.getAttribute("usuarioTipo").toString();
        if (!tipo.equals("2")) {
            response.sendRedirect("index.html");
           
        }
    }
    
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />

        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/templatemo_style.css">
        <link rel="stylesheet" type="text/css" href="semantic.css">

        <script src="js/jquery-3.2.0.js"
        type="text/javascript"></script>  
        <script src="js/commons.js"
        type="text/javascript"></script>    
        <script src="js/ControllerGerente.js"
        type="text/javascript"></script>
        <script src="js/Controller.js"
        type="text/javascript"></script>
        <script src="js/ControllerMostrarTodo.js"
        type="text/javascript"></script>
       
        <script src="js/ControllerRendimiento.js"
        type="text/javascript"></script>
         <script src="js/ControllerTranGerente.js"
        type="text/javascript"></script>
        
        <script src="js/ControllerTranEmpresa.js"
        type="text/javascript"></script>

    </head>
    <body>
    
	<jsp:include page="partials/topOfBody.jsp"></jsp:include>

       

                <div class="container-fluid">

                    <div id="about" class="section-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title">
                                    <h2>TRAMITES</h2> 

                                </div>


                            </div>

                        </div>

                        <div class="row our-story">
                            <div class="col-md-8 col-lg-7">
                                <h3>Seleccione la empresa y realice la transaccion</h3>

                                <select id="micombo2" class="ui search dropdown">



                                </select>
 
<!--                                 <button onclick="cargar();" class="ui yellow button"><font><font>Enviar</font></font></button> -->

                                <br>
                                <br>
<label id="l" ></label>
			<input id="idUsuario" type="hidden" /> 
                        
                                <center>
                                    Transaccion de: 

                                    <form class="ui fluid form">
                                        <div class="field">
                                            <input id="trans" type="text" placeholder="$100.000">

                                            <select id="razon" class="ui search dropdown">

                                        </div>
                                    </form>

                                    <option>CONCEPTO</option>
                                    <option value="1">Transferencia</option>
                                    <option value="2">Multa</option>

                                    </select>
                                    <br><br><br>
                                    <button onclick="tran();" class="ui yellow button"><font><font>Transaccion</font></font></button>

                                    <br>
                                </center>
                            </div>
                            <div class="col-md-4">
                                <div class="story-image">
                                    <center>
                                        <img src="images/1.jpg" alt="">
                                    </center>
                                </div>
                            </div>
                        </div> <!-- /.row -->
                    </div> <!-- /#about -->

                    <div id="services" class="section-content">

                        <div class="col-md-12">
                            <div class="section-title">
                                <h2>HISTORIAL</h2>
                            </div> <!-- /.section-title -->
                        </div> <!-- /.col-md-12 -->


                        <div class="row our-skills">
                            <div class="col-md-8 col-lg-12">
                                <h3>Visualice sus transacciones</h3>
                                <center> 
                                    <form class="ui fluid form">
                                    </form>
                                    <button onclick="mostrartodo();" class="ui violet button"><font><font>Actualizar</font></font></button>
                                </center> 
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

                            </div>

                        </div> <!-- /#services -->


                        <br>
                        <br><br>
                        <br>

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
                        </div> 
                        </center>
                    </div> 
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
				<script type="text/javascript">
					$(document).ready(function(){
						cargar();
						});
				</script>
                <!-- templatemo 394 sonic -->
                </body>
                </html>
