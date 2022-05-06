$(document).ready(function() {
    $('#diceform').on('submit', function(event) {
        $.ajax({
           data : {
              d4 : $('#d4').val(),
              d6 : $('#d6').val(),
              d8 : $('#d8').val(),
              d10 : $('#d10').val(),
              d12 : $('#d12').val(),
              d20 : $('#d20').val(),
              d100 : $('#d100').val(),
              modifier : $('modifier').val()
                  },
              type : 'POST',
              url : '/diceroller'
             })
         .done(function(data) {
          $('#roll').text(data['roll']).show();
     });
     event.preventDefault();
     });
});