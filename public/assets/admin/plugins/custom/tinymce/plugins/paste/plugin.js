!function(){"use strict";var e,t,n,r,o,i,a=function(e){var t=e;return{get:function(){return t},set:function(e){t=e}}},u=tinymce.util.Tools.resolve("tinymce.PluginManager"),s=function(){},c=function(e){return function(){return e}},l=c(!1),f=c(!0),d=function(){return m},m=(e=function(e){return e.isNone()},{fold:function(e,t){return e()},is:l,isSome:l,isNone:f,getOr:n=function(e){return e},getOrThunk:t=function(e){return e()},getOrDie:function(e){throw new Error(e||"error: getOrDie called on none.")},getOrNull:c(null),getOrUndefined:c(void 0),or:n,orThunk:t,map:d,each:s,bind:d,exists:l,forall:f,filter:d,equals:e,equals_:e,toArray:function(){return[]},toString:c("none()")}),p=function(e){var t=c(e),n=function(){return o},r=function(t){return t(e)},o={fold:function(t,n){return n(e)},is:function(t){return e===t},isSome:f,isNone:l,getOr:t,getOrThunk:t,getOrDie:t,getOrNull:t,getOrUndefined:t,or:n,orThunk:n,map:function(t){return p(t(e))},each:function(t){t(e)},bind:r,exists:r,forall:r,filter:function(t){return t(e)?o:m},toArray:function(){return[e]},toString:function(){return"some("+e+")"},equals:function(t){return t.is(e)},equals_:function(t,n){return t.fold(l,(function(t){return n(e,t)}))}};return o},g={some:p,none:d,from:function(e){return null==e?m:p(e)}},v=function(e){return!function(e){return null==e}(e)},h=(r="function",function(e){return typeof e===r}),y=Array.prototype.slice,b=function(e,t){for(var n=0,r=e.length;n<r;n++){if(t(e[n],n))return!0}return!1},x=function(e,t){for(var n=e.length,r=new Array(n),o=0;o<n;o++){var i=e[o];r[o]=t(i,o)}return r},w=function(e,t){for(var n=0,r=e.length;n<r;n++){t(e[n],n)}},P=h(Array.from)?Array.from:function(e){return y.call(e)},_=function(){var e=a(g.none());return{clear:function(){return e.set(g.none())},set:function(t){return e.set(g.some(t))},isSet:function(){return e.get().isSome()},on:function(t){return e.get().each(t)}}},C=function(e,t,n){return""===t||e.length>=t.length&&e.substr(n,n+t.length)===t},T=tinymce.util.Tools.resolve("tinymce.Env"),D=tinymce.util.Tools.resolve("tinymce.util.Delay"),k=tinymce.util.Tools.resolve("tinymce.util.Promise"),S=tinymce.util.Tools.resolve("tinymce.util.VK"),O=function(e,t){return e.fire("PastePlainTextToggle",{state:t})},j=tinymce.util.Tools.resolve("tinymce.util.Tools"),R=function(e){return e.getParam("paste_data_images",!1)},A=function(e){return e.getParam("paste_merge_formats",!0)},I=function(e){return e.getParam("paste_retain_style_properties")},F=function(e){return e.getParam("validate")},E=function(e){return e.getParam("allow_html_data_urls",!1,"boolean")},M=function(e){return e.getParam("paste_data_images",!1,"boolean")},N=function(e){return j.explode(e.getParam("images_file_types","jpeg,jpg,jpe,jfi,jif,jfif,png,gif,bmp,webp","string"))},B="x-tinymce/html",L="\x3c!-- x-tinymce/html --\x3e",H=function(e){return-1!==e.indexOf(L)},$=function(){return B},z=tinymce.util.Tools.resolve("tinymce.html.Entities"),U=function(e,t,n){var r=e.split(/\n\n/),o=function(e,t){var n,r=[],o="<"+e;if("object"==typeof t){for(n in t)t.hasOwnProperty(n)&&r.push(n+'="'+z.encodeAllRaw(t[n])+'"');r.length&&(o+=" "+r.join(" "))}return o+">"}(t,n),i="</"+t+">",a=j.map(r,(function(e){return e.split(/\n/).join("<br />")}));return 1===a.length?a[0]:j.map(a,(function(e){return o+e+i})).join("")},q=tinymce.util.Tools.resolve("tinymce.html.DomParser"),V=tinymce.util.Tools.resolve("tinymce.html.Serializer"),K=" ",X=tinymce.util.Tools.resolve("tinymce.html.Node"),W=tinymce.util.Tools.resolve("tinymce.html.Schema"),Y=function(e,t){return j.each(t,(function(t){e=t.constructor===RegExp?e.replace(t,""):e.replace(t[0],t[1])})),e},Z=function(e){return e=Y(e,[/^[\s\S]*<body[^>]*>\s*|\s*<\/body[^>]*>[\s\S]*$/gi,/<!--StartFragment-->|<!--EndFragment-->/g,[/( ?)<span class="Apple-converted-space">\u00a0<\/span>( ?)/g,function(e,t,n){return t||n?K:" "}],/<br class="Apple-interchange-newline">/g,/<br>$/i])},G=function(e){return/<font face="Times New Roman"|class="?Mso|style="[^"]*\bmso-|style='[^']*\bmso-|w:WordDocument/i.test(e)||/class="OutlineElement/.test(e)||/id="?docs\-internal\-guid\-/.test(e)},J=function(e){var t;return e=e.replace(/^[\u00a0 ]+/,""),j.each([/^[IVXLMCD]{1,2}\.[ \u00a0]/,/^[ivxlmcd]{1,2}\.[ \u00a0]/,/^[a-z]{1,2}[\.\)][ \u00a0]/,/^[A-Z]{1,2}[\.\)][ \u00a0]/,/^[0-9]+\.[ \u00a0]/,/^[\u3007\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d]+\.[ \u00a0]/,/^[\u58f1\u5f10\u53c2\u56db\u4f0d\u516d\u4e03\u516b\u4e5d\u62fe]+\.[ \u00a0]/],(function(n){if(n.test(e))return t=!0,!1})),t},Q=function(e,t,n,r){var o,i={},a=e.dom.parseStyle(r);return j.each(a,(function(a,u){switch(u){case"mso-list":(o=/\w+ \w+([0-9]+)/i.exec(r))&&(n._listLevel=parseInt(o[1],10)),/Ignore/i.test(a)&&n.firstChild&&(n._listIgnore=!0,n.firstChild._listIgnore=!0);break;case"horiz-align":u="text-align";break;case"vert-align":u="vertical-align";break;case"font-color":case"mso-foreground":u="color";break;case"mso-background":case"mso-highlight":u="background";break;case"font-weight":case"font-style":return void("normal"!==a&&(i[u]=a));case"mso-element":if(/^(comment|comment-list)$/i.test(a))return void n.remove()}0!==u.indexOf("mso-comment")?0!==u.indexOf("mso-")&&("all"===I(e)||t&&t[u])&&(i[u]=a):n.remove()})),/(bold)/i.test(i["font-weight"])&&(delete i["font-weight"],n.wrap(new X("b",1))),/(italic)/i.test(i["font-style"])&&(delete i["font-style"],n.wrap(new X("i",1))),(i=e.dom.serializeStyle(i,n.name))||null},ee=function(e,t){var n,r=I(e);r&&(n=j.makeMap(r.split(/[, ]/))),t=Y(t,[/<br class="?Apple-interchange-newline"?>/gi,/<b[^>]+id="?docs-internal-[^>]*>/gi,/<!--[\s\S]+?-->/gi,/<(!|script[^>]*>.*?<\/script(?=[>\s])|\/?(\?xml(:\w+)?|img|meta|link|style|\w:\w+)(?=[\s\/>]))[^>]*>/gi,[/<(\/?)s>/gi,"<$1strike>"],[/&nbsp;/gi,K],[/<span\s+style\s*=\s*"\s*mso-spacerun\s*:\s*yes\s*;?\s*"\s*>([\s\u00a0]*)<\/span>/gi,function(e,t){return t.length>0?t.replace(/./," ").slice(Math.floor(t.length/2)).split("").join(K):""}]]);var o=function(e){return e.getParam("paste_word_valid_elements","-strong/b,-em/i,-u,-span,-p,-ol,-ul,-li,-h1,-h2,-h3,-h4,-h5,-h6,-p/div,-a[href|name],sub,sup,strike,br,del,table[width],tr,td[colspan|rowspan|width],th[colspan|rowspan|width],thead,tfoot,tbody")}(e),i=W({valid_elements:o,valid_children:"-li[p]"});j.each(i.elements,(function(e){e.attributes.class||(e.attributes.class={},e.attributesOrder.push("class")),e.attributes.style||(e.attributes.style={},e.attributesOrder.push("style"))}));var a=q({},i);a.addAttributeFilter("style",(function(t){for(var r,o=t.length;o--;)(r=t[o]).attr("style",Q(e,n,r,r.attr("style"))),"span"===r.name&&r.parent&&!r.attributes.length&&r.unwrap()})),a.addAttributeFilter("class",(function(e){for(var t,n,r=e.length;r--;)n=(t=e[r]).attr("class"),/^(MsoCommentReference|MsoCommentText|msoDel)$/i.test(n)&&t.remove(),t.attr("class",null)})),a.addNodeFilter("del",(function(e){for(var t=e.length;t--;)e[t].remove()})),a.addNodeFilter("a",(function(e){for(var t,n,r,o=e.length;o--;)if(n=(t=e[o]).attr("href"),r=t.attr("name"),n&&-1!==n.indexOf("#_msocom_"))t.remove();else if(n&&0===n.indexOf("file://")&&(n=n.split("#")[1])&&(n="#"+n),n||r){if(r&&!/^_?(?:toc|edn|ftn)/i.test(r)){t.unwrap();continue}t.attr({href:n,name:r})}else t.unwrap()}));var u=a.parse(t);return function(e){return e.getParam("paste_convert_word_fake_lists",!0)}(e)&&function(e){for(var t,n,r=1,o=function(e){var t="";if(3===e.type)return e.value;if(e=e.firstChild)do{t+=o(e)}while(e=e.next);return t},i=function(e,t){if(3===e.type&&t.test(e.value))return e.value=e.value.replace(t,""),!1;if(e=e.firstChild)do{if(!i(e,t))return!1}while(e=e.next);return!0},a=function(e){if(e._listIgnore)e.remove();else if(e=e.firstChild)do{a(e)}while(e=e.next)},u=function(e,o,u){var s=e._listLevel||r;s!==r&&(s<r?t&&(t=t.parent.parent):(n=t,t=null)),t&&t.name===o?t.append(e):(n=n||t,t=new X(o,1),u>1&&t.attr("start",""+u),e.wrap(t)),e.name="li",s>r&&n&&n.lastChild.append(t),r=s,a(e),i(e,/^\u00a0+/),i(e,/^\s*([\u2022\u00b7\u00a7\u25CF]|\w+\.)/),i(e,/^\u00a0+/)},s=[],c=e.firstChild;null!=c;)if(s.push(c),null!==(c=c.walk()))for(;void 0!==c&&c.parent!==e;)c=c.walk();for(var l=0;l<s.length;l++)if("p"===(e=s[l]).name&&e.firstChild){var f=o(e);if(/^[\s\u00a0]*[\u2022\u00b7\u00a7\u25CF]\s*/.test(f)){u(e,"ul");continue}if(J(f)){var d=/([0-9]+)\./.exec(f),m=1;d&&(m=parseInt(d[1],10)),u(e,"ol",m);continue}if(e._listLevel){u(e,"ul",1);continue}t=null}else n=t,t=null}(u),t=V({validate:F(e)},i).serialize(u)},te=function(e,t){return{content:e,cancelled:t}},ne=function(e,t,n,r){var o=function(e,t,n,r){return e.fire("PastePreProcess",{content:t,internal:n,wordContent:r})}(e,t,n,r),i=function(e,t){var n=q({},e.schema);n.addNodeFilter("meta",(function(e){j.each(e,(function(e){e.remove()}))}));var r=n.parse(t,{forced_root_block:!1,isRootContent:!0});return V({validate:F(e)},e.schema).serialize(r)}(e,o.content);return e.hasEventListeners("PastePostProcess")&&!o.isDefaultPrevented()?function(e,t,n,r){var o=e.dom.create("div",{style:"display:none"},t),i=function(e,t,n,r){return e.fire("PastePostProcess",{node:t,internal:n,wordContent:r})}(e,o,n,r);return te(i.node.innerHTML,i.isDefaultPrevented())}(e,i,n,r):te(i,o.isDefaultPrevented())},re=function(e,t,n){var r=G(t),o=r?function(e,t){return function(e){return e.getParam("paste_enable_default_filters",!0)}(e)?ee(e,t):t}(e,t):t;return ne(e,o,n,r)},oe=function(e,t){return e.insertContent(t,{merge:A(e),paste:!0}),!0},ie=function(e){return/^https?:\/\/[\w\?\-\/+=.&%@~#]+$/i.test(e)},ae=function(e,t){return ie(t)&&b(N(e),(function(e){return n=t.toLowerCase(),r="."+e.toLowerCase(),C(n,r,n.length-r.length);var n,r}))},ue=function(e,t,n){return!(!1!==e.selection.isCollapsed()||!ie(t))&&function(e,t,n){return e.undoManager.extra((function(){n(e,t)}),(function(){e.execCommand("mceInsertLink",!1,t)})),!0}(e,t,n)},se=function(e,t,n){return!!ae(e,t)&&function(e,t,n){return e.undoManager.extra((function(){n(e,t)}),(function(){e.insertContent('<img src="'+t+'">')})),!0}(e,t,n)},ce=function(e,t,n){n||!1===function(e){return e.getParam("smart_paste",!0)}(e)?oe(e,t):function(e,t){j.each([ue,se,oe],(function(n){return!0!==n(e,t,oe)}))}(e,t)},le=function(e){return"\n"===e||"\r"===e},fe=function(e,t){var n,r,o,i,a=(n=" ",(r=function(e){return e.getParam("paste_tab_spaces",4,"number")}(e))<=0?"":new Array(r+1).join(n)),u=t.replace(/\t/g,a);return(o=function(e,t){return function(e){return-1!==" \f\t\v".indexOf(e)}(t)||t===K?e.pcIsSpace||""===e.str||e.str.length===u.length-1||function(e,t){return t<e.length&&t>=0&&le(e[t])}(u,e.str.length+1)?{pcIsSpace:!1,str:e.str+K}:{pcIsSpace:!0,str:e.str+" "}:{pcIsSpace:le(t),str:e.str+t}},i={pcIsSpace:!1,str:""},w(u,(function(e){i=o(i,e)})),i).str},de=function(e,t,n,r){var o=re(e,t,n);!1===o.cancelled&&ce(e,o.content,r)},me=function(e,t,n){var r=n||H(t);de(e,function(e){return e.replace(L,"")}(t),r,!1)},pe=function(e,t){var n=e.dom.encode(t).replace(/\r\n/g,"\n"),r=function(e,t,n){return t?U(e,!0===t?"p":t,n):function(e){return e.replace(/\r?\n/g,"<br>")}(e)}(fe(e,n),function(e){return e.getParam("forced_root_block")}(e),function(e){return e.getParam("forced_root_block_attrs")}(e));de(e,r,!1,!0)},ge=function(e){var t={};if(e){if(e.getData){var n=e.getData("Text");n&&n.length>0&&-1===n.indexOf("data:text/mce-internal,")&&(t["text/plain"]=n)}if(e.types)for(var r=0;r<e.types.length;r++){var o=e.types[r];try{t[o]=e.getData(o)}catch(e){t[o]=""}}}return t},ve=function(e,t){return t in e&&e[t].length>0},he=function(e){return ve(e,"text/html")||ve(e,"text/plain")},ye=(o="mceclip",i=0,function(){return o+i++}),be=function(e,t){var n,r,o=(n=t.uri,(r=/data:([^;]+);base64,([a-z0-9\+\/=]+)/i.exec(n))?{type:r[1],data:decodeURIComponent(r[2])}:{type:null,data:null}),i=o.data,a=o.type,u=ye(),s=t.blob,c=new Image;if(c.src=t.uri,function(e,t){var n=function(e){return e.getParam("images_dataimg_filter")}(e);return!n||n(t)}(e,c)){var l=e.editorUpload.blobCache,f=void 0,d=l.getByData(i,a);if(d)f=d;else{var m=function(e){return e.getParam("images_reuse_filename")}(e)&&v(s.name),p=m?function(e,t){var n=t.match(/([\s\S]+?)(?:\.[a-z0-9.]+)$/i);return v(n)?e.dom.encode(n[1]):null}(e,s.name):u,g=m?s.name:void 0;f=l.create(u,s,i,p,g),l.add(f)}me(e,'<img src="'+f.blobUri()+'">',!1)}else me(e,'<img src="'+t.uri+'">',!1)},xe=function(e){return k.all(x(e,(function(e){return new k((function(t){var n=function(e){return v(e.getAsFile)}(e)?e.getAsFile():e,r=new window.FileReader;r.onload=function(){t({blob:n,uri:r.result})},r.readAsDataURL(n)}))})))},we=function(e){var t=N(e);return function(e){return function(e,t){return C(e,t,0)}(e.type,"image/")&&b(t,(function(t){return n=t.toLowerCase(),r={jpg:"jpeg",jpe:"jpeg",jfi:"jpeg",jif:"jpeg",jfif:"jpeg",pjpeg:"jpeg",pjp:"jpeg",svg:"svg+xml"},(j.hasOwn(r,n)?"image/"+r[n]:"image/"+n)===e.type;var n,r}))}},Pe=function(e,t,n){var r="paste"===t.type?t.clipboardData:t.dataTransfer;if(M(e)&&r){var o=function(e,t){var n=t.items?x(P(t.items),(function(e){return e.getAsFile()})):[],r=t.files?P(t.files):[];return function(e,t){for(var n=[],r=0,o=e.length;r<o;r++){var i=e[r];t(i,r)&&n.push(i)}return n}(n.length>0?n:r,we(e))}(e,r);if(o.length>0)return t.preventDefault(),xe(o).then((function(t){n&&e.selection.setRng(n),w(t,(function(t){be(e,t)}))})),!0}return!1},_e=function(e){return S.metaKeyPressed(e)&&86===e.keyCode||e.shiftKey&&45===e.keyCode},Ce=function(e,t,n){var r,o=_(),i=_();e.on("keyup",i.clear),e.on("keydown",(function(n){var a=function(e){_e(e)&&!e.isDefaultPrevented()&&t.remove()};if(_e(n)&&!n.isDefaultPrevented()){if((r=n.shiftKey&&86===n.keyCode)&&T.webkit&&-1!==navigator.userAgent.indexOf("Version/"))return;if(n.stopImmediatePropagation(),o.set(n),i.set(!0),T.ie&&r)return n.preventDefault(),void function(e,t){e.fire("paste",{ieFake:t})}(e,!0);t.remove(),t.create(),e.once("keyup",a),e.once("paste",(function(){e.off("keyup",a)}))}}));var a=function(e,n,r,o,i){var a;ve(n,"text/html")?a=n["text/html"]:(a=t.getHtml(),i=i||H(a),t.isDefaultContent(a)&&(o=!0)),a=Z(a),t.remove();var u=!1===i&&!/<(?:\/?(?!(?:div|p|br|span)>)\w+|(?:(?!(?:span style="white-space:\s?pre;?">)|br\s?\/>))\w+\s[^>]+)>/i.test(a),s=ae(e,a);(!a.length||u&&!s)&&(o=!0),(o||s)&&(a=ve(n,"text/plain")&&u?n["text/plain"]:function(e){var t=W(),n=q({},t),r="",o=t.getShortEndedElements(),i=j.makeMap("script noscript style textarea video audio iframe object"," "),a=t.getBlockElements(),u=function(e){var t=e.name,n=e;if("br"!==t){if("wbr"!==t)if(o[t]&&(r+=" "),i[t])r+=" ";else{if(3===e.type&&(r+=e.value),!e.shortEnded&&(e=e.firstChild))do{u(e)}while(e=e.next);a[t]&&n.next&&(r+="\n","p"===t&&(r+="\n"))}}else r+="\n"};return e=Y(e,[/<!\[[^\]]+\]>/g]),u(n.parse(e)),r}(a)),t.isDefaultContent(a)?r||e.windowManager.alert("Please use Ctrl+V/Cmd+V keyboard shortcuts to paste contents."):o?pe(e,a):me(e,a,i)};e.on("paste",(function(u){var s=o.isSet()||i.isSet();s&&o.clear();var c=function(e,t){return ge(t.clipboardData||e.getDoc().dataTransfer)}(e,u),l="text"===n.get()||r,f=ve(c,$());r=!1,u.isDefaultPrevented()||function(e){var t=e.clipboardData;return-1!==navigator.userAgent.indexOf("Android")&&t&&t.items&&0===t.items.length}(u)?t.remove():he(c)||!Pe(e,u,t.getLastRng()||e.selection.getRng())?(s||u.preventDefault(),!T.ie||s&&!u.ieFake||ve(c,"text/html")||(t.create(),e.dom.bind(t.getEl(),"paste",(function(e){e.stopPropagation()})),e.getDoc().execCommand("Paste",!1,null),c["text/html"]=t.getHtml()),ve(c,"text/html")?(u.preventDefault(),f||(f=H(c["text/html"])),a(e,c,s,l,f)):D.setEditorTimeout(e,(function(){a(e,c,s,l,f)}),0)):t.remove()}))},Te=function(e){return T.ie&&e.inline?document.body:e.getBody()},De=function(e,t,n){(function(e){return Te(e)!==e.getBody()})(e)&&e.dom.bind(t,"paste keyup",(function(t){Oe(e,n)||e.fire("paste")}))},ke=function(e){return e.dom.get("mcepastebin")},Se=function(e,t){return t===e},Oe=function(e,t){var n,r=ke(e);return(n=r)&&"mcepastebin"===n.id&&Se(t,r.innerHTML)},je=function(e){var t=a(null),n="%MCEPASTEBIN%";return{create:function(){return function(e,t,n){var r=e.dom,o=e.getBody();t.set(e.selection.getRng());var i=e.dom.add(Te(e),"div",{id:"mcepastebin",class:"mce-pastebin",contentEditable:!0,"data-mce-bogus":"all",style:"position: fixed; top: 50%; width: 10px; height: 10px; overflow: hidden; opacity: 0"},n);(T.ie||T.gecko)&&r.setStyle(i,"left","rtl"===r.getStyle(o,"direction",!0)?65535:-65535),r.bind(i,"beforedeactivate focusin focusout",(function(e){e.stopPropagation()})),De(e,i,n),i.focus(),e.selection.select(i,!0)}(e,t,n)},remove:function(){return function(e,t){if(ke(e)){for(var n=void 0,r=t.get();n=e.dom.get("mcepastebin");)e.dom.remove(n),e.dom.unbind(n);r&&e.selection.setRng(r)}t.set(null)}(e,t)},getEl:function(){return ke(e)},getHtml:function(){return function(e){var t=function(t,n){t.appendChild(n),e.dom.remove(n,!0)},n=j.grep(Te(e).childNodes,(function(e){return"mcepastebin"===e.id})),r=n.shift();j.each(n,(function(e){t(r,e)}));for(var o=e.dom.select("div[id=mcepastebin]",r),i=o.length-1;i>=0;i--){var a=e.dom.create("div");r.insertBefore(a,o[i]),t(a,o[i])}return r?r.innerHTML:""}(e)},getLastRng:function(){return function(e){return e.get()}(t)},isDefault:function(){return Oe(e,n)},isDefaultContent:function(e){return Se(n,e)}}},Re=function(e,t){var n=je(e);return e.on("PreInit",(function(){return function(e,t,n){var r;Ce(e,t,n),e.parser.addNodeFilter("img",(function(t,n,o){var i=function(e){e.attr("data-mce-object")||r===T.transparentSrc||e.remove()},a=function(e){return 0===e.indexOf("webkit-fake-url")},u=function(e){return 0===e.indexOf("data:")};if(!M(e)&&function(e){return e.data&&!0===e.data.paste}(o))for(var s=t.length;s--;)(r=t[s].attr("src"))&&(a(r)||!E(e)&&u(r))&&i(t[s])}))}(e,n,t)})),{pasteFormat:t,pasteHtml:function(t,n){return me(e,t,n)},pasteText:function(t){return pe(e,t)},pasteImageData:function(t,n){return Pe(e,t,n)},getDataTransferItems:ge,hasHtmlOrText:he,hasContentType:ve}},Ae=function(e,t){e.addCommand("mceTogglePlainTextPaste",(function(){!function(e,t){"text"===t.pasteFormat.get()?(t.pasteFormat.set("html"),O(e,!1)):(t.pasteFormat.set("text"),O(e,!0)),e.focus()}(e,t)})),e.addCommand("mceInsertClipboardContent",(function(e,n){n.content&&t.pasteHtml(n.content,n.internal),n.text&&t.pasteText(n.text)}))},Ie=function(e,t,n){if(!function(e){return!1===T.iOS&&"function"==typeof(null==e?void 0:e.setData)}(e))return!1;try{return e.clearData(),e.setData("text/html",t),e.setData("text/plain",n),e.setData($(),t),!0}catch(e){return!1}},Fe=function(e,t,n,r){Ie(e.clipboardData,t.html,t.text)?(e.preventDefault(),r()):n(t.html,r)},Ee=function(e){return function(t,n){var r=function(e){return L+e}(t),o=e.dom.create("div",{contenteditable:"false","data-mce-bogus":"all"}),i=e.dom.create("div",{contenteditable:"true"},r);e.dom.setStyles(o,{position:"fixed",top:"0",left:"-3000px",width:"1000px",overflow:"hidden"}),o.appendChild(i),e.dom.add(e.getBody(),o);var a=e.selection.getRng();i.focus();var u=e.dom.createRng();u.selectNodeContents(i),e.selection.setRng(u),D.setTimeout((function(){e.selection.setRng(a),o.parentNode.removeChild(o),n()}),0)}},Me=function(e){return{html:e.selection.getContent({contextual:!0}),text:e.selection.getContent({format:"text"})}},Ne=function(e){return!e.selection.isCollapsed()||function(e){return!!e.dom.getParent(e.selection.getStart(),"td[data-mce-selected],th[data-mce-selected]",e.getBody())}(e)},Be=function(e){e.on("cut",function(e){return function(t){Ne(e)&&Fe(t,Me(e),Ee(e),(function(){if(T.browser.isChrome()||T.browser.isFirefox()){var t=e.selection.getRng();D.setEditorTimeout(e,(function(){e.selection.setRng(t),e.execCommand("Delete")}),0)}else e.execCommand("Delete")}))}}(e)),e.on("copy",function(e){return function(t){Ne(e)&&Fe(t,Me(e),Ee(e),s)}}(e))},Le=tinymce.util.Tools.resolve("tinymce.dom.RangeUtils"),He=function(e,t){return Le.getCaretRangeFromPoint(t.clientX,t.clientY,e.getDoc())},$e=function(e,t){e.focus(),e.selection.setRng(t)},ze=function(e,t){e.on("PastePreProcess",(function(n){n.content=t(e,n.content,n.internal,n.wordContent)}))},Ue=function(e,t){if(!G(t))return t;var n=[];j.each(e.schema.getBlockElements(),(function(e,t){n.push(t)}));var r=new RegExp("(?:<br>&nbsp;[\\s\\r\\n]+|<br>)*(<\\/?("+n.join("|")+")[^>]*>)(?:<br>&nbsp;[\\s\\r\\n]+|<br>)*","g");return t=Y(t,[[r,"$1"]]),t=Y(t,[[/<br><br>/g,"<BR><BR>"],[/<br>/g," "],[/<BR><BR>/g,"<br>"]])},qe=function(e,t,n,r){if(r||n)return t;var o,i=function(e){return e.getParam("paste_webkit_styles")}(e);if(!1===function(e){return e.getParam("paste_remove_styles_if_webkit",!0)}(e)||"all"===i)return t;if(i&&(o=i.split(/[, ]/)),o){var a=e.dom,u=e.selection.getNode();t=t.replace(/(<[^>]+) style="([^"]*)"([^>]*>)/gi,(function(e,t,n,r){var i=a.parseStyle(a.decode(n)),s={};if("none"===o)return t+r;for(var c=0;c<o.length;c++){var l=i[o[c]],f=a.getStyle(u,o[c],!0);/color/.test(o[c])&&(l=a.toHex(l),f=a.toHex(f)),f!==l&&(s[o[c]]=l)}return(s=a.serializeStyle(s,"span"))?t+' style="'+s+'"'+r:t+r}))}else t=t.replace(/(<[^>]+) style="([^"]*)"([^>]*>)/gi,"$1$3");return t=t.replace(/(<[^>]+) data-mce-style="([^"]+)"([^>]*>)/gi,(function(e,t,n,r){return t+' style="'+n+'"'+r}))},Ve=function(e,t){e.$("a",t).find("font,u").each((function(t,n){e.dom.remove(n,!0)}))},Ke=function(e,t){return function(n){n.setActive("text"===t.pasteFormat.get());var r=function(e){return n.setActive(e.state)};return e.on("PastePlainTextToggle",r),function(){return e.off("PastePlainTextToggle",r)}}};u.add("paste",(function(e){if(!1===function(e){return!!e.hasPlugin("powerpaste",!0)&&(void 0!==window.console&&window.console.log&&window.console.log("PowerPaste is incompatible with Paste plugin! Remove 'paste' from the 'plugins' option."),!0)}(e)){var t=a(!1),n=a(function(e){return e.getParam("paste_as_text",!1)}(e)?"text":"html"),r=Re(e,n),o=function(e){T.webkit&&ze(e,qe),T.ie&&(ze(e,Ue),function(e,t){e.on("PastePostProcess",(function(n){t(e,n.node)}))}(e,Ve))}(e);return function(e,t){e.ui.registry.addToggleButton("pastetext",{active:!1,icon:"paste-text",tooltip:"Paste as text",onAction:function(){return e.execCommand("mceTogglePlainTextPaste")},onSetup:Ke(e,t)}),e.ui.registry.addToggleMenuItem("pastetext",{text:"Paste as text",icon:"paste-text",onAction:function(){return e.execCommand("mceTogglePlainTextPaste")},onSetup:Ke(e,t)})}(e,r),Ae(e,r),function(e){var t=e.plugins.paste,n=function(e){return e.getParam("paste_preprocess")}(e);n&&e.on("PastePreProcess",(function(e){n.call(t,t,e)}));var r=function(e){return e.getParam("paste_postprocess")}(e);r&&e.on("PastePostProcess",(function(e){r.call(t,t,e)}))}(e),Be(e),function(e,t,n){(function(e){return e.getParam("paste_block_drop",!1)})(e)&&e.on("dragend dragover draggesture dragdrop drop drag",(function(e){e.preventDefault(),e.stopPropagation()})),R(e)||e.on("drop",(function(e){var t=e.dataTransfer;t&&t.files&&t.files.length>0&&e.preventDefault()})),e.on("drop",(function(r){var o=He(e,r);if(!r.isDefaultPrevented()&&!n.get()){var i,a=t.getDataTransferItems(r.dataTransfer),u=t.hasContentType(a,$());if((t.hasHtmlOrText(a)&&(!(i=a["text/plain"])||0!==i.indexOf("file://"))||!t.pasteImageData(r,o))&&o&&function(e){return e.getParam("paste_filter_drop",!0)}(e)){var s=a["mce-internal"]||a["text/html"]||a["text/plain"];s&&(r.preventDefault(),D.setEditorTimeout(e,(function(){e.undoManager.transact((function(){a["mce-internal"]&&e.execCommand("Delete"),$e(e,o),s=Z(s),a["text/html"]?t.pasteHtml(s,u):t.pasteText(s)}))})))}}})),e.on("dragstart",(function(e){n.set(!0)})),e.on("dragover dragend",(function(t){R(e)&&!1===n.get()&&(t.preventDefault(),$e(e,He(e,t))),"dragend"===t.type&&n.set(!1)}))}(e,r,t),function(e,t){return{clipboard:e,quirks:t}}(r,o)}}))}();
//# sourceMappingURL=plugin.js.map