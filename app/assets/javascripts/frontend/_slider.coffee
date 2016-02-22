if $('#slider').length
  $('#slider').bxSlider
    minSlides: 1
    maxSlides: 4
    slideWidth: 200
    slideMargin: 50
    ticker: true
    speed: 20000

if $('#photo-slider').length
  $('#photo-slider').bxSlider
    nextText: '<i class="icon-right"></i>'
    prevText: '<i class="icon-left"></i>'

$('#main-slider').bxSlider
  mode: 'fade'
  captions: true
  pager: false
  controls: false
  auto: true
