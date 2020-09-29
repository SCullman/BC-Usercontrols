controladdin CkEditor
{
    Scripts = 'Editors/Ckeditor/inline/ckeditor.js' // modified to target window.parent.document instead of document
            , 'Editors/Ckeditor/inline/de.js' //german translation
            , 'Editors/Ckeditor/control.js';
    StartupScript = 'Editors/Ckeditor/startup.js';
    event ControlReady();
    event OnAfterInit();
    procedure Init();
    procedure SetData();
    procedure SetReadOnly(readonly: boolean);

}