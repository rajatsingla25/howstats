!function(){Materialize.scrollFire=function(e){var n=!1;window.addEventListener("scroll",function(){n=!0}),setInterval(function(){if(n){n=!1;for(var t=window.pageYOffset+window.innerHeight,i=0;i<e.length;i++){var o=e[i],f=o.selector,r=o.offset,l=o.callback,c=document.querySelector(f);if(null!==c){var a=c.getBoundingClientRect().top+window.pageYOffset;if(t>a+r&&o.done!==!0){if("function"==typeof l)l.call(this,c);else if("string"==typeof l){var s=new Function(l);s(c)}o.done=!0}}}}},100)}}(jQuery);