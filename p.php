// Created by timrourke.
// https://github.com/timrourke
//
// This silly little shortcode simplifies using Evan Sosenko's excellent
// script for async loading of github gists.
// https://github.com/razor-x/gist-async
//
// Plop this in your functions file or functionality plugin.
// Usage: [gist id="12345567" file="example.js"]
function async_gist_func($atts) {
  $gist = shortcode_atts(
    array('id' => '', 'file' => ''),
    $atts
  );
  if ($gist['id'] && $gist['file']) {
    $gist['js'] = '<script>/*! gist-async - v1.0.0 - 2015-05-15 - https://github.com/razor-x/gist-async */(function(){"use strict";var a;(a=jQuery)(function(){var b,c,d,e,f,g;return b="https://gist.github.com",d=a("div[data-gist]"),e={},c=[],g=[],f=function(a){var b;b=document.createElement("link"),b.type="text/css",b.rel="stylesheet",b.href=a,document.getElementsByTagName("head")[0].appendChild(b)},d.addClass("loading"),d.each(function(b,c){var d;return c=a(c),d=c.data("gist"),null==e[d]&&(e[d]={targets:[]}),e[d].targets.push(c)}),a.each(e,function(c,d){return a.getJSON(""+b+"/"+c+".json?callback=?",function(b){var d,h,i;return h=e[c],h.data=b,i=h.data.stylesheet,g.indexOf(i)<0&&(g.push(i),f(i)),d=h.data.div,h.files=a(d).find(".gist-file"),h.outer=a(d).first().html(""),a(h.targets).each(function(b,c){var e,f,g;return e=c.data("gist-file"),e?(g=h.outer.clone(),f=\'<div class="gist-file">\'+a(h.files.get(h.data.files.indexOf(e))).html()+"</div>",g.html(f)):g=a(d),g.hide(),c.fadeOut("fast",function(){return a(this).replaceWith(g),g.fadeIn()})})})})})}).call(this);</script>';
    $gist['css'] = '<style>.gist.loading::after{content:"(loading)";color:#99cc00;}.gist.loading-failed::after{content:"(loading failed)";color:#cc0000;}</style>';
    $gist['html'] = '<div class="gist" data-gist="' . $gist['id'] . '" data-gist-file="' . $gist['file'] . '"><a href="https://gist.github.com/' . $gist['id'] . '">Loading file ' . $gist['file'] . ' from ' . $gist['id'] . '</a></div>';
    return $gist['js'] . $gist['css'] . $gist['html'];
  }
}
add_shortcode('gist', 'async_gist_func');
