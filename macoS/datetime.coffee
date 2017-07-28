command: "date +\"%a %d %b %Y %H:%M:%S\""

refreshFrequency: 1000

render: (output) ->
  "<div class='date'>#{output}</div>"

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  font: 12px SFNS Display
  top: 7px
  width: 100%
  .date
    text-align: center
"""
