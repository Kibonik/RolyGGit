jQuery ($) ->
  $('.randomAction').click ->
    alert 'toto'
    $.ajax(url: '/players/new').done (html) ->
      $('#random').html html
    return
  return
