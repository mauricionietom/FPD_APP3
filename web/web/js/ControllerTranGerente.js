function tran(){
    var idusuario = $('#micombo2').val();
     var idvalor = $('#trans').val();
     var razon = $('#razon').val();
    console.log("TRANSFERENCIA EXITOSA!");
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
                if (result==="false") {
                alert('Transferencia Exitosa');
            }


        },
            complete: function(){
            	hideModal();
            }
    });
} 