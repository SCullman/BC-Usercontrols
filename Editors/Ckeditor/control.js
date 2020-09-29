var Editor, Source;

function Init() {

    setTimeout(() => {
        const iframe = window.frameElement;

        // hide iframe (or better the parent of the iframe)
        const addinContainer = iframe.parentNode;
        addinContainer.style.display = "None";

        // look up the control before, expecting a multi-line field 
        const fieldContainer = addinContainer.previousElementSibling;
        Source = fieldContainer.querySelector("textarea");
        // ..and hide it
        Source.style.display = "None";

        // the Editor is expected inside the fieldContainer 
        var editorContainer = fieldContainer.querySelector("div.ck_editor");

        if (!editorContainer) {
            editorContainer = window.parent.document.createElement("div");
            editorContainer.style = "border: 1px solid #ababab;";
            editorContainer.className = "ck_editor"
            Source.parentNode.appendChild(editorContainer);

            InlineEditor.create(editorContainer, {
                language: 'de', // enables German language pack
                toolbar: {
                    items:['bold', 'italic', 'link', '|', 'heading', '|', 'bulletedList', 'numberedList', 'indent', 'outdent','|', 'undo', 'redo'], 
                    shouldNotGroupWhenFull: true }
            }).then(editor => {
                Editor = editor;
                editor.model.document.on('change:data', () => {
                    Source.value = editor.getData();
                })
            });
        };
      
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnAfterInit", []);
    }, 20);
}

function SetData() {
    setTimeout(() => Editor.setData(Source.value), 50);
}

function SetReadOnly(readonly) {
    Editor.isReadOnly = readonly;
}