!function(t){t.fn.tooltip=function(e){var i=5,a={delay:350,tooltip:"",position:"bottom",html:!1};return"remove"===e?(this.each(function(){t("#"+t(this).attr("data-tooltip-id")).remove(),t(this).off("mouseenter.tooltip mouseleave.tooltip")}),!1):(e=t.extend(a,e),this.each(function(){var a=Materialize.guid(),n=t(this);n.attr("data-tooltip-id",a);var r,p,s,l,d,u,f=function(){r=n.attr("data-html")?"true"===n.attr("data-html"):e.html,p=n.attr("data-delay"),p=void 0===p||""===p?e.delay:p,s=n.attr("data-position"),s=void 0===s||""===s?e.position:s,l=n.attr("data-tooltip"),l=void 0===l||""===l?e.tooltip:l};f();var c=function(){var o=t('<div class="material-tooltip"></div>');return l=r?t("<span></span>").html(l):t("<span></span>").text(l),o.append(l).appendTo(t("body")).attr("id",a),u=t('<div class="backdrop"></div>'),u.appendTo(o),o};d=c(),n.off("mouseenter.tooltip mouseleave.tooltip");var h,m=!1;n.on({"mouseenter.tooltip":function(){var t=function(){f(),m=!0,d.velocity("stop"),u.velocity("stop"),d.css({display:"block",left:"0px",top:"0px"});var t,e,a,r=n.outerWidth(),p=n.outerHeight(),l=d.outerHeight(),c=d.outerWidth(),h="0px",v="0px",y=8,g=8;"top"===s?(t=n.offset().top-l-i,e=n.offset().left+r/2-c/2,a=o(e,t,c,l),h="-10px",u.css({bottom:0,left:0,borderRadius:"14px 14px 0 0",transformOrigin:"50% 100%",marginTop:l,marginLeft:c/2-u.width()/2})):"left"===s?(t=n.offset().top+p/2-l/2,e=n.offset().left-c-i,a=o(e,t,c,l),v="-10px",u.css({top:"-7px",right:0,width:"14px",height:"14px",borderRadius:"14px 0 0 14px",transformOrigin:"95% 50%",marginTop:l/2,marginLeft:c})):"right"===s?(t=n.offset().top+p/2-l/2,e=n.offset().left+r+i,a=o(e,t,c,l),v="+10px",u.css({top:"-7px",left:0,width:"14px",height:"14px",borderRadius:"0 14px 14px 0",transformOrigin:"5% 50%",marginTop:l/2,marginLeft:"0px"})):(t=n.offset().top+n.outerHeight()+i,e=n.offset().left+r/2-c/2,a=o(e,t,c,l),h="+10px",u.css({top:0,left:0,marginLeft:c/2-u.width()/2})),d.css({top:a.y,left:a.x}),y=Math.SQRT2*c/parseInt(u.css("width")),g=Math.SQRT2*l/parseInt(u.css("height")),d.velocity({marginTop:h,marginLeft:v},{duration:350,queue:!1}).velocity({opacity:1},{duration:300,delay:50,queue:!1}),u.css({display:"block"}).velocity({opacity:1},{duration:55,delay:0,queue:!1}).velocity({scaleX:y,scaleY:g},{duration:300,delay:0,queue:!1,easing:"easeInOutQuad"})};h=setTimeout(t,p)},"mouseleave.tooltip":function(){m=!1,clearTimeout(h),setTimeout(function(){m!==!0&&(d.velocity({opacity:0,marginTop:0,marginLeft:0},{duration:225,queue:!1}),u.velocity({opacity:0,scaleX:1,scaleY:1},{duration:225,queue:!1,complete:function(){u.css("display","none"),d.css("display","none"),m=!1}}))},225)}})}))};var o=function(o,e,i,a){var n=o,r=e;return n<0?n=4:n+i>window.innerWidth&&(n-=n+i-window.innerWidth),r<0?r=4:r+a>window.innerHeight+t(window).scrollTop&&(r-=r+a-window.innerHeight),{x:n,y:r}};t(document).ready(function(){t(".tooltipped").tooltip()})}(jQuery);