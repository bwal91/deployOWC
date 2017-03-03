var ready;

ready = function(){
    // enable chosen js
    $('.chosen-select').chosen({
        no_results_text: 'No results matched'
    });
}

$(document).ready(ready);
// if using turbolinks
$(document).on("page:load",ready);






// $(document).on('turbolinks:load', function(){
    
//     $('.chosen-select').chosen({
//         no_results_text: 'No results matched'
//     });
// })
// $(document).ready(function(){
	
// 		$('.chosen-select').chosen({
// 	        no_results_text: 'No results matched'
// 	    });
// 	})

	// $(document).on('page:change', function(){


// $(document).ready(ready);
// $(document).on("turbolinks:load",ready);
// var ready;

// ready = function(){
//     // enable chosen js
//     $('.chosen-select').chosen({
//         no_results_text: 'No results matched'
//     });
// }

// $(document).ready(ready);
// // if using turbolinks
// $(document).on("page:load",ready);