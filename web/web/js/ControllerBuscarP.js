function buscar(id){
     var num = $('#micombo').val();
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
	var s="<tr><td>"+result[i]["empresa"]["nomnbre"]+"</td><td>"+result[i]["usuario"]["nombre"]+"</td><td>"+result[i]["valor"]+"</td></tr>";
			$('#test').append(s);				
				i++;
						}
			
                    },
            complete: function(){
            	hideModal();
            }
			
		});
}


