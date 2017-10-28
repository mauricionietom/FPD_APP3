// PAGINA BANCO-- FILTRAR POR NUMERO DE EMPRESA (1,2,3,4,5,6,7,8)
function buscarTran(){
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
				var i=0
                               $('#test').empty(); 
				while(i<result.length){
                               console.log(result[i]);
	var s="<tr><td>"+result[i]["fecha"]+"</td><td>"+result[i]["razon"]+"</td><td>"+result[i]["usuarioOrigen"]["nombre"]+"</td><td>"+result[i]["usuarioDestino"]["nombre"]+"</td><td>"+result[i]["valor"]+"</td></tr>";
			$('#test').append(s);				
				i++;
						}
			
                    },
            complete: function(){
            	hideModal();
            }
			
		});
}

