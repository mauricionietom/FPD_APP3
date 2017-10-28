function filtrar(id) {

    var id = $('#micombo').val();
    
    if(id=="Seleccionar empresa"){
    	$("#opcTran").hide();
    }else{
    	$("#opcTran").show();
    	$.ajax({
    		url:"/GGBank/ServletUsuario",
    		data: {id: id},
    		type: "get",
    		dataType: "json",
    		beforeSend: function(){
    			showModal();
    		} ,
    		
    		success: function (result) {
    			console.log(result);
    			$('#l').empty();
    			var i = 0;
    			$('#l').append(result['nombre'] );
    			$('#idUsuario').val(result['id']);
    			while (i < result.length) {
    				i++;
    			}
    			
    		},
    		complete: function(){
    			hideModal();
    		}
    		
    	});
    }

}
