<html>
 <head><script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /showbuildonjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var projectdata = {"database": localdb, "token": token, "authorid": id, "threadid": thread_id, "projectid": project_id};
function show_buildon() {
  send(new Array('/showbuildonjsp.show_buildon', ':::ENTER', new Array(addVariable('projectdata', projectdata))));
  $.ajax({url: "/WSG/buildon/get/bythread", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data) {
  send(new Array('/showbuildonjsp.anonymous17', ':::ENTER', new Array(addVariable('color', color), addVariable('data', data), addVariable('date_x0', date_x0), addVariable('date_x1', date_x1), addVariable('from_id', from_id), addVariable('green', green), addVariable('i', i), addVariable('j', j), addVariable('json', json), addVariable('max', max), addVariable('milliseconds_x0', milliseconds_x0), addVariable('milliseconds_x1', milliseconds_x1), addVariable('min', min), addVariable('projectdata', projectdata), addVariable('realdatatitle_to', realdatatitle_to), addVariable('to_id', to_id), addVariable('trace_lines', trace_lines), addVariable('trace_lines_to', trace_lines_to), addVariable('x0', x0), addVariable('x1', x1), addVariable('y0', y0), addVariable('y1', y1))));
  var json = $.parseJSON(data.obj);
  window.final_buildon_trace = [];
  if (json != null) 
  {
    for (var i = 0; i < json.length; i++) 
      {
        var from_id = 0;
        var to_id = 0;
        for (var j = 0; j <= realdatanoteid.length; j++) 
          {
            if (json[i].from_note_id == realdatanoteid[j]) 
            from_id = j;
            if (json[i].to_note_id == realdatanoteid[j]) 
            to_id = j;
          }
        var realdatatitle_to = '<--' + realdatatitle_left[from_id];
        buildonallids.push(realdatanoteid[from_id]);
        buildonallids.push(realdatanoteid[to_id]);
        buildonfromtoid.push(realdatanoteid[from_id] + "@#$" + realdatanoteid[to_id]);
        var x0 = realdatatime_left[from_id];
        var date_x0 = new Date(x0);
        var milliseconds_x0 = date_x0.getTime();
        var x1 = realdatatime_left[to_id];
        var date_x1 = new Date(x1);
        var milliseconds_x1 = date_x1.getTime();
        var y0 = realdataweight_left[from_id];
        var y1 = realdataweight_left[to_id];
        var max = 250;
        var min = 190;
        var green = Math.floor(Math.random() * (max - min + 1)) + min;
        var color = 'hsl(' + green + ', ' + 99 + '%, ' + 65 + '%)';
        var trace_lines_to = {x: [milliseconds_x1, milliseconds_x0], y: [y1, y0], type: 'scatter', text: [realdatatitle_to], mode: 'markers+text', textposition: 'right', marker: {size: 9, color: color}, textfont: {color: color}, hoverinfo: 'none'};
        var trace_lines = {x: [milliseconds_x1, milliseconds_x0], y: [y1, y0], type: 'line', text: [realdatatitle_left[y1], realdatatitle_left[y0]], mode: 'markers+lines+text', textposition: 'left', line: {color: color, width: 1, shape: 'spline'}, marker: {size: 9, color: color}, hoverinfo: 'none'};
        final_buildon_trace.push(trace_lines_to);
        final_buildon_trace.push(trace_lines);
      }
    Plotly.addTraces(TESTER, final_buildon_trace);
  } else {
    $('#showbuildon').attr('checked', true);
  }
  send(new Array('/showbuildonjsp.anonymous17', ':::EXIT20', new Array(addVariable('color', color), addVariable('data', data), addVariable('date_x0', date_x0), addVariable('date_x1', date_x1), addVariable('from_id', from_id), addVariable('green', green), addVariable('i', i), addVariable('j', j), addVariable('json', json), addVariable('max', max), addVariable('milliseconds_x0', milliseconds_x0), addVariable('milliseconds_x1', milliseconds_x1), addVariable('min', min), addVariable('projectdata', projectdata), addVariable('realdatatitle_to', realdatatitle_to), addVariable('to_id', to_id), addVariable('trace_lines', trace_lines), addVariable('trace_lines_to', trace_lines_to), addVariable('x0', x0), addVariable('x1', x1), addVariable('y0', y0), addVariable('y1', y1))));
}});
  send(new Array('/showbuildonjsp.show_buildon', ':::EXIT12', new Array(addVariable('projectdata', projectdata))));
}
</script>
 </head>
 <body></body>
</html>