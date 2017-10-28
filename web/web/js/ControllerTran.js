function tran() {
    var idusuario = $('#idUsuario').val();
    var idvalor = $('#trans').val();
    var razon = $('#razon').val();
    
    console.log(razon);
    
    console.log("TRANSACCION EN CONTROLLERTRAN!");
    $.ajax({
        url:
            "/GGBank/ServletTransaccion",
        data: {idusuario: idusuario,
            idvalor: idvalor,
            razon: razon},
        type: "POST",
        dataType: "json",
        beforeSend: function(){
            	showModal();
            } ,
        success: function (result) {
            console.log(result);


        },
            complete: function(){
            	hideModal();
            }
    });
} 