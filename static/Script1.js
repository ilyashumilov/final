const searchInput = document.getElementById('search');
const panel = document.getElementById('variants');


searchInput.addEventListener('keyup', function() {
    const input = searchInput.value;

    panel.innerHTML = '';
    const output = values.filter(function(value){
        return value.startsWith(input);     
    });
    currentFocus = -1;
    output.forEach(function(suggest){
        const div = document.createElement('li');
        div.innerHTML = suggest;
        panel.appendChild(div);       
        
        div.addEventListener('click', function(){
            searchInput.value = suggest;
            panel.innerHTML = '';
        });

    });

    if (input == ''){
    panel.innerHTML = '';
    }
})

