jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

  $ ->
  flashCallback = ->
    $(".flash-message").fadeOut()
  $(".flash-message").bind 'click', (ev) =>
    $(".flash-message").fadeOut()
  setTimeout flashCallback, 3000

