// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require fancybox
//= require head.min.js
//= reveal.js
//= jquery-ui.js

$(document).ready(function(){

  Reveal.initialize({
        center: true,
        history: true,

        // transition: 'slide',
        transitionSpeed: 'slow',
        backgroundTransition: 'slide',
        controls: true,
        slideNumber: true,
        touch: true,
        loop: false,
        help: true
        });

});