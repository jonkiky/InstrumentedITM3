<html>
 <head><script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /buildontofromjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

};sendCurrentDom();window.xhr = new XMLHttpRequest();
window.buffer = new Array();
function send(value) {
  window.buffer.push(value);
  sendReally();
}
function sendReally() {
  window.xhr.open('POST', 'http://localhost:8080/CARTRTS/getExecutionTrace', false);
  window.xhr.send(JSON.stringify(window.buffer));
  window.buffer = new Array();
}
function addVariable(name, value) {
  if (typeof (value) == 'object') 
  {
    if (value instanceof Array) 
    {
      if (value.length > 0) 
      {
        return new Array(name, typeof (value[0]) + '_array', value);
      } else {
        return new Array(name, 'object_array', value);
      }
    }
  } else if (typeof (value) != 'undefined' && typeof (value) != 'function') 
  {
    return new Array(name, typeof (value), value);
  }
  return new Array(name, typeof (value), 'undefined');
}
$("#forward").click(function() {
  send(new Array('/buildontofromjsp.anonymous2', ':::ENTER', new Array(addVariable('item', item), addVariable('m', m), addVariable('n', n), addVariable('note_open_id', note_open_id))));
  var note_open_id = $("#note_open_id").val();
  $("#buildon_list").html("");
  for (var item = 0; item < buildonfromtoid.length; item++) 
    {
      if (note_open_id == buildonfromtoid[item].split("@#$")[0]) 
      {
        buildontonoteid.push(buildonfromtoid[item].split("@#$")[1]);
        for (var m = 0; m < realdatanoteidtitleauthor.length; m++) 
          {
            if (realdatanoteidtitleauthor[m].split("@#$")[0] == buildonfromtoid[item].split("@#$")[1]) 
            {
              for (var n = 0; n < realdatanoteidcontent.length; n++) 
                {
                  if (realdatanoteidcontent[n].split("@#$")[0] == buildonfromtoid[item].split("@#$")[1]) 
                  {
                    $("#buildon_list").append('<li> <div class="collapsible-header"><span style="font-size: 16px"><b>' + realdatanoteidtitleauthor[m].split("@#$")[1] + '</b></span></div> <div class="collapsible-body"><span style="font-size: 14px; padding:10px">' + realdatanoteidcontent[n].split("@#$")[1] + '</span></div></li>');
                  }
                }
            }
          }
      }
    }
  $("#forward_modal").modal('open');
  send(new Array('/buildontofromjsp.anonymous2', ':::EXIT24', new Array(addVariable('item', item), addVariable('m', m), addVariable('n', n), addVariable('note_open_id', note_open_id))));
});
$("#backward").click(function() {
  send(new Array('/buildontofromjsp.anonymous27', ':::ENTER', new Array(addVariable('item', item), addVariable('m', m), addVariable('n', n), addVariable('note_open_id', note_open_id))));
  var note_open_id = $("#note_open_id").val();
  $("#buildon_list").html("");
  for (var item = 0; item < buildonfromtoid.length; item++) 
    {
      if (note_open_id == buildonfromtoid[item].split("@#$")[1]) 
      {
        buildonfromnoteid.push(buildonfromtoid[item].split("@#$")[0]);
        for (var m = 0; m < realdatanoteidtitleauthor.length; m++) 
          {
            if (realdatanoteidtitleauthor[m].split("@#$")[0] == buildonfromtoid[item].split("@#$")[0]) 
            {
              for (var n = 0; n < realdatanoteidcontent.length; n++) 
                {
                  if (realdatanoteidcontent[n].split("@#$")[0] == buildonfromtoid[item].split("@#$")[0]) 
                  {
                    $("#buildon_list").append('<li> <div class="collapsible-header"><span style="font-size: 16px"><b>' + realdatanoteidtitleauthor[m].split("@#$")[1] + '</b></span></div> <div class="collapsible-body"><span style="font-size: 14px; padding:10px"> ' + realdatanoteidcontent[n].split("@#$")[1] + '</span></div></li>');
                  }
                }
            }
          }
      }
    }
  $("#forward_modal").modal('open');
  send(new Array('/buildontofromjsp.anonymous27', ':::EXIT45', new Array(addVariable('item', item), addVariable('m', m), addVariable('n', n), addVariable('note_open_id', note_open_id))));
});
</script>
 </head>
 <body></body>
</html>