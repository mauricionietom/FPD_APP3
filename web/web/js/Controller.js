function autenticar() {
    var id = $('#id').val();
    var pswd= $('#pswd').val();
   console.log("sfsdfsdfsdf");
    $.ajax({
        url: "/GGBank/ServletUsuario",
        data: {id: id, pswd: pswd},
        type: "POST",
        dataType: "json",
 beforeSend: function(){
            	showModal();
            } ,
        success: function (result) {
            console.log(result);
            /*
             #1banco
             #2gerente
             #3empleado
             #4profesor
             #5auditor
             * 
             * 
             */
            if (result['tipo'] == 1) {
                window.location = "PaginaBanco.jsp";
            }
            if (result['tipo'] == 2) {

                window.location = "PaginaGerente.jsp";
            }
            if (result['tipo'] == 3) {
                window.location = "PaginaEmpleado.jsp";

            }
            if (result['tipo'] == 4) {
                window.location = "PaginaProfesor.jsp";

            }
            if (result['tipo'] == 5) {
                window.location = "PaginaAuditor.jsp";

            }
            if (result['estado'] == false) {
                alert("ID INCORRECTO");

            }


        },
            complete: function(){
            	hideModal();
            }
    
    });
}

	
       
