"use strict";var KTCkeditorDocument={init:function(){DecoupledEditor.create(document.querySelector("#kt-ckeditor-1")).then((e=>{document.querySelector("#kt-ckeditor-1-toolbar").appendChild(e.ui.view.toolbar.element)})).catch((e=>{console.error(e)})),DecoupledEditor.create(document.querySelector("#kt-ckeditor-2")).then((e=>{document.querySelector("#kt-ckeditor-2-toolbar").appendChild(e.ui.view.toolbar.element)})).catch((e=>{console.error(e)})),DecoupledEditor.create(document.querySelector("#kt-ckeditor-3")).then((e=>{document.querySelector("#kt-ckeditor-3-toolbar").appendChild(e.ui.view.toolbar.element)})).catch((e=>{console.error(e)}))}};jQuery(document).ready((function(){KTCkeditorDocument.init()}));
//# sourceMappingURL=ckeditor-document.js.map
