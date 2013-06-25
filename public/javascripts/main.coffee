# load foundation
$(document).foundation()

# disable pause on flowplayer
$ ->
  if flowplayer()
    flowplayer().pause = ->

# $('#before_after').beforeAfter
#   moveSelector: '#move_on_me'
#   moveAdjust: 0
