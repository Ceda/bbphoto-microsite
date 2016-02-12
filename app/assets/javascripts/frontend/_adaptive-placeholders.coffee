@initAdaptivePlaceholders = ->
  self = this
  formGroup = $(document).find('.form-group').not('.boolean')
  formGroup.each ->
    input = $(this).find('input, textarea')
    decorateAdaptiveInputs(input)

@decorateAdaptiveElements = ->
  chkbox = $('[class^="styled-"] label input')
  $('<span class="fake-input"></span>')
    .insertAfter(chkbox)

@decorateAdaptiveInputs = (elm) ->
  if elm.val()
    elm.addClass('not-empty')

  elm.on 'change keyup', ->
    if elm.val()
      elm.addClass('not-empty')
    else
      elm.removeClass('not-empty')

initAdaptivePlaceholders()
decorateAdaptiveElements()
