function Init () {
    setTimeout(function () {
        var iframe = window.frameElement;
        var addinContainer = iframe.parentNode;
        addinContainer.style.display = "None";
        var fieldContainer = addinContainer.previousElementSibling;
        var input = fieldContainer.querySelector("input");
        if (input) {
            if (!input.value || input.value ==='') 
                input.value = "#FFFFFF" ;
            new JSColor(input);

            var event = new Event('change');
            input.dispatchEvent(event);
        }
    } , 100);
}