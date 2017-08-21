command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "vol <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px SFNS Display 
  top: 7px
  right: 200px
  color: #ffffff
  span
    color: #ffffff
"""
