!function(e){var o=0,t=0,a=function(){return t++,"materialize-lean-overlay-"+t};e.fn.extend({openModal:function(t){var i=e("body"),n=i.innerWidth();i.css("overflow","hidden"),i.width(n);var c={opacity:.5,in_duration:350,out_duration:250,ready:void 0,complete:void 0,dismissible:!0,starting_top:"4%",ending_top:"10%"},s=e(this);if(!s.hasClass("open")){var d=a(),l=e('<div class="lean-overlay"></div>');lStack=++o,l.attr("id",d).css("z-index",1e3+2*lStack),s.data("overlay-id",d).css("z-index",1e3+2*lStack+1),s.addClass("open"),e("body").append(l),t=e.extend(c,t),t.dismissible&&(l.click(function(){s.closeModal(t)}),e(document).on("keyup.leanModal"+d,function(e){27===e.keyCode&&s.closeModal(t)})),s.find(".modal-close").on("click.close",function(){s.closeModal(t)}),l.css({display:"block",opacity:0}),s.css({display:"block",opacity:0}),l.velocity({opacity:t.opacity},{duration:t.in_duration,queue:!1,ease:"easeOutCubic"}),s.data("associated-overlay",l[0]),s.hasClass("bottom-sheet")?s.velocity({bottom:"0",opacity:1},{duration:t.in_duration,queue:!1,ease:"easeOutCubic",complete:function(){"function"==typeof t.ready&&t.ready()}}):(e.Velocity.hook(s,"scaleX",.7),s.css({top:t.starting_top}),s.velocity({top:t.ending_top,opacity:1,scaleX:"1"},{duration:t.in_duration,queue:!1,ease:"easeOutCubic",complete:function(){"function"==typeof t.ready&&t.ready()}}))}}}),e.fn.extend({closeModal:function(t){var a={out_duration:250,complete:void 0},i=e(this),n=i.data("overlay-id"),c=e("#"+n);i.removeClass("open"),t=e.extend(a,t),e("body").css({overflow:"",width:""}),i.find(".modal-close").off("click.close"),e(document).off("keyup.leanModal"+n),c.velocity({opacity:0},{duration:t.out_duration,queue:!1,ease:"easeOutQuart"}),i.hasClass("bottom-sheet")?i.velocity({bottom:"-100%",opacity:0},{duration:t.out_duration,queue:!1,ease:"easeOutCubic",complete:function(){c.css({display:"none"}),"function"==typeof t.complete&&t.complete(),c.remove(),o--}}):i.velocity({top:t.starting_top,opacity:0,scaleX:.7},{duration:t.out_duration,complete:function(){e(this).css("display","none"),"function"==typeof t.complete&&t.complete(),c.remove(),o--}})}}),e.fn.extend({leanModal:function(o){return this.each(function(){var t={starting_top:"4%"},a=e.extend(t,o);e(this).click(function(o){a.starting_top=(e(this).offset().top-e(window).scrollTop())/1.15;var t=e(this).attr("href")||"#"+e(this).data("target");e(t).openModal(a),o.preventDefault()})})}})}(jQuery);