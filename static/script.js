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

function myFunction(a) {
  a.parentNode.getElementsByClassName("dropdown-content")[0].classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}