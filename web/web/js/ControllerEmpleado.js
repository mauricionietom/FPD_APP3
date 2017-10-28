function actualizar(){
		$.ajax({
			url:"/GGBank/ServletEmpleado", 
			type:"POST",    
			dataType: "json",
			contentType: "application/json; charset=utf-8",
	  beforeSend: function(){
            	showModal();
            } ,		
        
        success: function(result){
				
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

   

