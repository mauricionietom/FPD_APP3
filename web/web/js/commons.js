/**
 * 
 */

function hideModal(){
	$("body").removeClass("loading");
	$("#myModalLoading").hide();
	
}

function showModal(){
	$("body").addClass("loading");
	$("#myModalLoading").show();
	
}
