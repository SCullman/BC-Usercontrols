function Init() {
    const iframe = window.frameElement; 
    const addinContainer = iframe.parentNode;
    addinContainer.style.display = "None";

    setTimeout(function () {
        autosize(window.parent.document.querySelectorAll(".ms-nav-layout-main textarea"));
    },50);
};
