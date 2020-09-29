controladdin ColorPicker
{

    Scripts = 'colorpicker/jscolor.js' // modified to target window.parent.document instead of document
            , 'colorpicker/control.js';

    StartupScript = 'colorpicker/startup.js';
    RequestedHeight = 1;

    event ControlReady();
    procedure Init();
}