command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "vol <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 9px Roboto Mono
  top: 6px
  right: 200px
  color: #ffffff
  span
    color: #ffffff
"""
