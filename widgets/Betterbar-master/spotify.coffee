command: """
read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName theState <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set theState to player state as string
        return theArtist & "|" & theName & "|" & theState
    end tell')" &&
echo "<span class='title'>$theArtist -</span><class='artist'>$theName</>" || echo "Not Connected To Spotify"
"""

refreshFrequency: 60000

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  top: 5px
  left: 25%
  color: #d5c4a1
  width: 50%

  .text
    height: 16px
    color: #9C9486
    font-family: Menlo 
    font-size: 9px

  .title
    color: #c0c5ce
    margin-right: 5px

  .artist
    color: #c0c5ce
    opacity: 0.8;
  .icon
    color: #5fb3b3 
    font: 11px fontawesome
"""

render: (output) -> """
  <div class="output">
  	<div class="text"><span class='icon'>  </span> #{output}</div>
  </div>
"""
