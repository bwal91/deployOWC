





//= require jquery
//= require jquery_ujs
//= require chosen-jquery
//= require turbolinks
//= require bootstrap-sprockets
//= require toastr
//= require_tree .

  toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": false,
    "progressBar": true,
    "positionClass": "toast-top-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "100",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }
$(document).ready(function () {
    $('.navbar .dropdown').hover(function () {
          $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
      }, function () {
          $(this).find('.dropdown-menu').first().stop(true, true).slideUp(105)
      });
});
