function enviarRendimiento(){

     var idEmpresa = $('#idEmpresa').val();
     var rendimiento = $('#rendimiento').val();
	$.ajax({
			url:"/GGBank/ServletRendimiento", 
			data: {idempresa:idEmpresa,
                        rendimiento:rendimiento},
                        type:"POST",
			dataType: "json",
			beforeSend: function(){
            	showModal();
            } ,
			success: function(result){
                            console.log(result);				

						}
//			
//                    }
			,
            complete: function(){
            	hideModal();
            }
		});
}

function getRendimientos(){

	$.ajax({
			url:"/GGBank/ServletRendimiento", 
			
                        type:"GET",
			dataType: "json",
			beforeSend: function(){
            	showModal();
            } ,
			success: function(result){
                            console.log(result);
                             $("#tableRendimiento").empty();
				var i=0;

				while(i<result.length){
                               console.log(result[i]);
                               $("#tableRendimiento").append("<tr><td>"+result[i]["empresa"]["nomnbre"]+"</td><td>"+result[i]["usuario"]["nombre"]+"</td><td>"+result[i]["rendimiento"]+"</td><td>"+result[i]["fecha"]+"</td></tr>");				
				i++;
						}
//			
                    },
            complete: function(){
            	hideModal();
            }
			
		});
}


