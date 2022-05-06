$(document).ready(function() {
    $('form').on('submit', function(event) {
      $.ajax({
         data : {
            question : $('#question').val(),
                },
            type : 'POST',
            url : '/process'
           })
       .done(function(data) {
        $('#response').text(data['response']).show();
     });
     event.preventDefault();
     });
});