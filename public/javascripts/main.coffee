# load foundation
$(document).foundation()

# disable pause on flowplayer
$ ->
  if flowplayer()
    flowplayer().pause = ->

  # introduction has a hidden playlist
  # clicking on intro button switches to next video
  play_intro = $('#play-intro')
  if play_intro.length
    play_intro.on 'click', (event) ->
      flowplayer().next()
      $('#chapter0 .title').fadeOut(1500)

      # terrible hack
      setInterval( ->
        if flowplayer().video.time > 64.5
          document.location.pathname = '/chapters/1'
      , 750)
#       flowplayer().bind 'finish', ->
#         console.log 'finished'

# $('#before_after').beforeAfter
#   moveSelector: '#move_on_me'
#   moveAdjust: 0
