!function(t){var e={init:function(e){var i={time_constant:200,dist:-100,shift:0,padding:0,full_width:!1,indicators:!1,no_wrap:!1};return e=t.extend(i,e),this.each(function(){function i(){"undefined"!=typeof window.ontouchstart&&(I[0].addEventListener("touchstart",u),I[0].addEventListener("touchmove",f),I[0].addEventListener("touchend",p)),I[0].addEventListener("mousedown",u),I[0].addEventListener("mousemove",f),I[0].addEventListener("mouseup",p),I[0].addEventListener("mouseleave",p),I[0].addEventListener("click",d)}function n(t){return t.targetTouches&&t.targetTouches.length>=1?t.targetTouches[0].clientX:t.clientX}function a(t){return t.targetTouches&&t.targetTouches.length>=1?t.targetTouches[0].clientY:t.clientY}function r(t){return t>=x?t%x:t<0?r(x+t%x):t}function s(t){var i,n,a,s,o,l,d;if(v="number"==typeof t?t:v,w=Math.floor((v+m/2)/m),a=v-w*m,s=a<0?1:-1,o=-s*a*2/m,n=x>>1,e.full_width?d="translateX(0)":(d="translateX("+(I[0].clientWidth-item_width)/2+"px) ",d+="translateY("+(I[0].clientHeight-item_width)/2+"px)"),C){var c=w%x,u=k.find(".indicator-item.active");u.index()!==c&&(u.removeClass("active"),k.find(".indicator-item").eq(c).addClass("active"))}for((!e.no_wrap||w>=0&&w<x)&&(l=h[r(w)],l.style[D]=d+" translateX("+-a/2+"px) translateX("+s*e.shift*o*i+"px) translateZ("+e.dist*o+"px)",l.style.zIndex=0,e.full_width?tweenedOpacity=1:tweenedOpacity=1-.2*o,l.style.opacity=tweenedOpacity,l.style.display="block"),i=1;i<=n;++i)e.full_width?(zTranslation=e.dist,tweenedOpacity=i===n&&a<0?1-o:1):(zTranslation=e.dist*(2*i+o*s),tweenedOpacity=1-.2*(2*i+o*s)),(!e.no_wrap||w+i<x)&&(l=h[r(w+i)],l.style[D]=d+" translateX("+(e.shift+(m*i-a)/2)+"px) translateZ("+zTranslation+"px)",l.style.zIndex=-i,l.style.opacity=tweenedOpacity,l.style.display="block"),e.full_width?(zTranslation=e.dist,tweenedOpacity=i===n&&a>0?1-o:1):(zTranslation=e.dist*(2*i-o*s),tweenedOpacity=1-.2*(2*i-o*s)),(!e.no_wrap||w-i>=0)&&(l=h[r(w-i)],l.style[D]=d+" translateX("+(-e.shift+(-m*i-a)/2)+"px) translateZ("+zTranslation+"px)",l.style.zIndex=-i,l.style.opacity=tweenedOpacity,l.style.display="block");(!e.no_wrap||w>=0&&w<x)&&(l=h[r(w)],l.style[D]=d+" translateX("+-a/2+"px) translateX("+s*e.shift*o+"px) translateZ("+e.dist*o+"px)",l.style.zIndex=0,e.full_width?tweenedOpacity=1:tweenedOpacity=1-.2*o,l.style.opacity=tweenedOpacity,l.style.display="block")}function o(){var t,e,i,n;t=Date.now(),e=t-X,X=t,i=v-M,M=v,n=1e3*i/(1+e),T=.8*n+.2*T}function l(){var t,i;b&&(t=Date.now()-X,i=b*Math.exp(-t/e.time_constant),i>2||i<-2?(s(O-i),requestAnimationFrame(l)):s(O))}function d(i){if(L)return i.preventDefault(),i.stopPropagation(),!1;if(!e.full_width){var n=t(i.target).closest(".carousel-item").index(),a=w%x-n;0!==a&&(i.preventDefault(),i.stopPropagation()),c(n)}}function c(t){var i=w%x-t;e.no_wrap||(i<0?Math.abs(i+x)<Math.abs(i)&&(i+=x):i>0&&Math.abs(i-x)<i&&(i-=x)),i<0?I.trigger("carouselNext",[Math.abs(i)]):i>0&&I.trigger("carouselPrev",[i])}function u(t){g=!0,L=!1,P=!1,_=n(t),z=a(t),T=b=0,M=v,X=Date.now(),clearInterval(E),E=setInterval(o,100)}function f(t){var e,i,r;if(g)if(e=n(t),y=a(t),i=_-e,r=Math.abs(z-y),r<30&&!P)(i>2||i<-2)&&(L=!0,_=e,s(v+i));else{if(L)return t.preventDefault(),t.stopPropagation(),!1;P=!0}if(L)return t.preventDefault(),t.stopPropagation(),!1}function p(t){if(g)return g=!1,clearInterval(E),O=v,(T>10||T<-10)&&(b=.9*T,O=v+b),O=Math.round(O/m)*m,e.no_wrap&&(O>=m*(x-1)?O=m*(x-1):O<0&&(O=0)),b=O-v,X=Date.now(),requestAnimationFrame(l),L&&(t.preventDefault(),t.stopPropagation()),!1}var h,v,w,g,m,x,_,z,b,O,T,D,M,X,E,L,P,k=t('<ul class="indicators"></ul>'),I=t(this),C=I.attr("data-indicators")||e.indicators;if(I.hasClass("initialized"))return t(this).trigger("carouselNext",[1e-6]),!0;if(e.full_width){e.dist=0;var q=I.find(".carousel-item img").first();q.length?imageHeight=q.load(function(){I.css("height",t(this).height())}):(imageHeight=I.find(".carousel-item").first().height(),I.css("height",imageHeight)),C&&I.find(".carousel-fixed-item").addClass("with-indicators")}I.addClass("initialized"),g=!1,v=O=0,h=[],item_width=I.find(".carousel-item").first().innerWidth(),m=2*item_width+e.padding,I.find(".carousel-item").each(function(e){if(h.push(t(this)[0]),C){var i=t('<li class="indicator-item"></li>');0===e&&i.addClass("active"),i.click(function(){var e=t(this).index();c(e)}),k.append(i)}}),C&&I.append(k),x=h.length,D="transform",["webkit","Moz","O","ms"].every(function(t){var e=t+"Transform";return"undefined"==typeof document.body.style[e]||(D=e,!1)}),window.onresize=s,i(),s(v),t(this).on("carouselNext",function(t,e){void 0===e&&(e=1),O=v+m*e,v!==O&&(b=O-v,X=Date.now(),requestAnimationFrame(l))}),t(this).on("carouselPrev",function(t,e){void 0===e&&(e=1),O=v-m*e,v!==O&&(b=O-v,X=Date.now(),requestAnimationFrame(l))}),t(this).on("carouselSet",function(t,e){void 0===e&&(e=0),c(e)})})},next:function(e){t(this).trigger("carouselNext",[e])},prev:function(e){t(this).trigger("carouselPrev",[e])},set:function(e){t(this).trigger("carouselSet",[e])}};t.fn.carousel=function(i){return e[i]?e[i].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof i&&i?void t.error("Method "+i+" does not exist on jQuery.carousel"):e.init.apply(this,arguments)}}(jQuery);