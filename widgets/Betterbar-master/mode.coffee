command: "~/screens"

refreshFrequency: 100 # ms

render: (output) ->
  " <div class='kwmmode'></div>"


style: """
  -webkit-font-smoothing: subpixel-antialiased
  color: #ffffff
  font: 9px Menlo
  left: 10px
  top: 5px
  width: 880px
  height: 10px
  white-space: nowrap
  text-overflow: ellipsis
  overflow: hide 
  span2
    color: #c0c5ce
  .green
    color: #a6e22e
  .yellow
    color: #e6db74
  .cyan
    color: #a1efe4
  .white
    color: #f8f8f2
  .active
    color: #26272a
    background: #5fb3b3
  .inactive
    color: #c0c5ce
    background: none
"""

update: (output, domEl) ->

  values = output.split('@', 4);

  file = "";
  screenhtml = "";
  mode = values[0];
  screens = values[1];
  wins = values[2];
  win = "";
  i = 0;

  screensegs = screens.split('(');
  console.log(screens)

  for sseg in screensegs
    screensegs[i] = sseg.replace /^\s+|\s+$/g, ""
    i+=1;

  screensegs = (x for x in screensegs  when x != '')

  i = 0;

  for sseg in screensegs
    console.log(sseg)
    i+= 1;
    if sseg.slice(-1) == ")"
      screenhtml += "<span class='active'>&nbsp;" + i.toString() + ':' + sseg.slice(0, -1) + "&nbsp;</span><span>&nbsp;</span>" ;
    else
      screenhtml += "<span class='inactive'>&nbsp;" + i.toString() + ':' + sseg + "&nbsp;</span><span>&nbsp;</span>";

  i = 0;

  winseg = wins.split('/');
  
  for seg in winseg
    i += 1;
    if i == winseg.length
      file += seg;
      break;
      
    win += seg;
    win += '/';
      

  $(domEl).find('.kwmmode').html("<span>#{mode}  " + screenhtml + "</span>  #{win}</span><span2>#{file}</span2>")
    
  

