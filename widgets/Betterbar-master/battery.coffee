
command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  "bat <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 9px Roboto Mono
  top: 6px
  right: 9px
  color: #ffffff
  span
    color: #ffffff
"""
