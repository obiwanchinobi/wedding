// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function($) {
  $('a[rel*=facebox]').facebox();
  
  $("tr").hover(
    function () {
      $(this).find("span.claimed").removeClass("claimed").addClass("claimed-hover");
      $(this).find("a.claimed-link").removeClass("claimed-link").addClass("claimed-link-hover");
      $(this).find("span.claimed-timestamp").removeClass("ui-helper-hidden");
    },
    function () {
      $(this).find("span.claimed-hover").removeClass("claimed-hover").addClass("claimed");
      $(this).find("a.claimed-link-hover").removeClass("claimed-link-hover").addClass("claimed-link");
      $(this).find("span.claimed-timestamp").addClass("ui-helper-hidden");
    }
  );
})