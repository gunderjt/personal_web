jQuery ->
  $('form').on 'click', '.removable', (event) ->
    $(this).prev("input[type=hidden]").val("1")
    $(this).closest(".fields").hide()
    event.preventDefault

  $('form').on 'click', '.add_fields', (event) ->
  	time = new Date().getTime()
  	regexp = new RegExp($(this).data('id'), 'g')
  	$(this).before($(this).data('fields').replace(regexp, time))
  	event.preventDefault

# $(document).ready(function(){
# 	$(".removable").click(function (e){
# 	    //e.preventDefault
# 	    $(this).prev("input[type=hidden]").val("1")
# 	    $(this).closest(".fields").hide()
# 	});

# 	$(".add_fields").click(function(association, content){
# 		var new_id = new Date().getTime();
# 		var regexp = new RegExp("new_" + association, "g")
# 		$(this).prev().append()
# 	})
# });
