function cargar(){
                $.ajax({
			url:"/GGBank/ServletGerente",
                        type: "get",
			dataType: "json",
                         beforeSend: function(){
            	showModal();
            } ,
                        
			success : function(result){
				 console.log(result);
                                 $('#micombo2').empty();
                                 for(var i=0;i<result.length;i++){
                                     console.log("msmsmsms");   
                                    $('#micombo2').append('<option value="'+result[i]['id']+'">'+result[i]['nombre']+'</option>');
                                    }
                                 
                                 },
            complete: function(){
            	hideModal();
            }
		});
        }
        
       
       
