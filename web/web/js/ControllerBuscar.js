function BuscarTranEmp(){
     var num = $('#num').val();
	$.ajax({
			url:"/GGBank/ServletBuscar", 
			data: {num:num},
                        type:"POST",
			dataType: "json",
			beforeSend: function(){
            	showModal();
            } ,
			success: function(result){
                            console.log(result);				
				var i=0;
				while(i<result.length){
                                console.log(result[i]);
var s="<tr><td>"+result[i]["fecha"]+"</td><td>"+result[i]["razon"]+"</td><td>"+result[i]["usuarioOrigen"]["nombre"]+"</td><td>"+result[i]["usuarioDestino"]["nombre"]+"</td><td>"+result[i]["valor"]+"</td></tr>";
			$('#testT').append(s);				
				i++;
						}
			
                    },
            complete: function(){
            	hideModal();
            }
			
		});
}


