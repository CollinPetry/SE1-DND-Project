let race_select = document.getElementById('race');
        let subrace_select = document.getElementById('subrace');

        race_select.onchange = function() {
            race_id = race_select.value;

            fetch('/character_builder/subrace/' + race_id).then(function(response) {
               response.json().then(function(data) {
                    let optionHTML = '';
                    for (let subrace of data.subraces){
                        optionHTML += '<option value="' + subrace.pk_subrace + '">' + subrace.subrace_name + '</option>'
                    }

                    subrace_select.innerHTML = optionHTML;

               });
            });
        }