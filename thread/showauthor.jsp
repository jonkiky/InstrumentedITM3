<html>
 <head><script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /showauthorjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
function show_author() {
  send(new Array('/showauthorjsp.show_author', ':::ENTER', new Array(addVariable('dragLayer', dragLayer), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right))));
  if (note_view_length > 0) 
  {
    var trace_left = {x: realdatatime_left, y: realdataweight_left, text: realdataauthor_left, mode: 'markers+text', type: 'scatter', textposition: 'right', marker: {size: 9, color: 'blue'}, textfont: {color: '#929292'}, hoverinfo: 'x+text'};
    var trace_right = {x: realdatatime_left1, y: realdataweight_left1, mode: 'markers+text', type: 'scatter', textposition: 'right', marker: {size: 10, color: 'red'}, hoverinfo: 'none'};
    var trace_author_right = {x: realdatatime_left, y: realdataauthor_left, mode: 'none', yaxis: 'y2', type: 'scatter'};
    var tempdata = [trace_left, trace_right];
    data = tempdata.concat(all_yaxis2_traces);
  } else {
    var trace_left = {x: realdatatime_left, y: realdataweight_left, text: realdataauthor_left, mode: 'markers+text', type: 'scatter', textposition: 'right', marker: {size: 9, color: 'blue'}, textfont: {color: '#929292'}, hoverinfo: 'x+text'};
    var trace_author_right = {x: realdatatime_left, y: realdataauthor_left, mode: 'none', yaxis: 'y2', type: 'scatter'};
    var tempdata = [trace_left];
    data = tempdata.concat(all_yaxis2_traces);
  }
  Plotly.newPlot(TESTER, data, {title: thread_title, shapes: all_shapes, xaxis: {showgrid: true, side: 'top', zeroline: true, zerolinecolor: 'rgb(148, 103, 189)', showline: true, tick0: 0, tickformat: "%m-%d-%y", tickfont: {color: 'rgb(148, 103, 189)', size: 14}, mirror: "all"}, yaxis: {showgrid: false, autorange: false, zeroline: false, showline: false, autotick: true, showticklabels: false, range: [-0.5, realdataweight_left.length]}, showLink: false, hovermode: 'closest', showlegend: false}, {displayModeBar: false});
  var temp_trace = {x: temp_realdatatime_left1, y: temp_realdataweight_left1, mode: 'markers', type: 'scatter', textposition: 'left', marker: {size: 10, color: 'red'}, hoverinfo: 'none'};
  Plotly.addTraces(TESTER, [temp_trace]);
  var dragLayer = document.getElementsByClassName('nsewdrag')[0];
  TESTER.on('plotly_hover', function(data) {
  send(new Array('/showauthorjsp.anonymous122', ':::ENTER', new Array(addVariable('data', data), addVariable('dragLayer', dragLayer), addVariable('i', i), addVariable('marker_y', marker_y), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('traceIndices', traceIndices), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right))));
  dragLayer.style.cursor = 'pointer';
  var marker_y = data.points[0].y;
  if (buildonallids.indexOf(realdatanoteid[marker_y]) !== -1) 
  {
    var traceIndices = [];
    for (var i = 0; i < TESTER.data.length; i++) 
      {
        if (i !== data.points[0].curveNumber && data.points["0"].data.type == "line") 
        {
          traceIndices.push(i);
        }
      }
    Plotly.restyle(TESTER, 'opacity', 0.1, traceIndices);
  }
  send(new Array('/showauthorjsp.anonymous122', ':::EXIT125', new Array(addVariable('data', data), addVariable('dragLayer', dragLayer), addVariable('i', i), addVariable('marker_y', marker_y), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('traceIndices', traceIndices), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right))));
});
  TESTER.on('plotly_unhover', function(data) {
  send(new Array('/showauthorjsp.anonymous139', ':::ENTER', new Array(addVariable('data', data), addVariable('dragLayer', dragLayer), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right), addVariable('update', update))));
  dragLayer.style.cursor = '';
  var update = {opacity: 1};
  Plotly.restyle(TESTER, update);
  send(new Array('/showauthorjsp.anonymous139', ':::EXIT144', new Array(addVariable('data', data), addVariable('dragLayer', dragLayer), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right), addVariable('update', update))));
});
  TESTER.on('plotly_click', function(data) {
  send(new Array('/showauthorjsp.anonymous147', ':::ENTER', new Array(addVariable('data', data), addVariable('dragLayer', dragLayer), addVariable('m', m), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right))));
  console.log(data);
  if (data.points[0].y % 1 == 0) 
  {
    $("#draggable").css("top", window.scrollY + 100);
    $("#draggable").css("right", window.innerWidth / 4);
    $("#draggable").show();
    i = data.points[0].y;
    currenton = i;
    finalDataTitle = "";
    finalDataAuthor = "";
    finalDataContent = "";
    finalDataNoteId = "";
    finalDataThreadId = "";
    finalDataNoteStrId = "";
    for (var m = 0; m < new_data_title.length; m++) 
      {
        if (new_data_title[m].split('@#$')[0] == i) 
        {
          finalDataTitle = new_data_title[m].split('@#$')[1];
        }
      }
    for (var m = 0; m < new_data_author.length; m++) 
      {
        if (new_data_author[m].split('@#$')[0] == i) 
        {
          finalDataAuthor = new_data_author[m].split('@#$')[1];
        }
      }
    for (var m = 0; m < new_data_content.length; m++) 
      {
        if (new_data_content[m].split('@#$')[0] == i) 
        {
          finalDataContent = new_data_content[m].split('@#$')[1];
        }
      }
    for (var m = 0; m < new_data_note_id.length; m++) 
      {
        if (new_data_note_id[m].split('@#$')[0] == i) 
        {
          finalDataNoteId = new_data_note_id[m].split('@#$')[1];
        }
      }
    for (var m = 0; m < new_data_note_str_id.length; m++) 
      {
        if (new_data_note_str_id[m].split('@#$')[0] == i) 
        {
          finalDataNoteStrId = new_data_note_str_id[m].split('@#$')[1];
        }
      }
    $("#title").text("\"" + finalDataTitle + "\"" + " by " + finalDataAuthor);
    $("#content").html(finalDataContent);
    $("#note_position_y").val(data.points[0].y);
    $("#note_position_x").val(data.points[0].x);
    note_position = i;
    title = new_data_title[i];
    data_note_id = +finalDataNoteId;
    $("#note_open_id").val(finalDataNoteStrId);
    data_note_str_id = finalDataNoteStrId;
    checkHighlight(finalDataContent, data_note_id);
    noteRead(data_note_id);
    temp_realdatatitle_left1.push(new_data_title[i]);
    temp_realdatatime_left1.push(data.points[0].x);
    temp_realdataweight_left1.push(i);
    temp_realdatatitleauthor1.push(new_data_title[i] + "\"" + " by " + new_data_author[i]);
  }
  send(new Array('/showauthorjsp.anonymous147', ':::EXIT149', new Array(addVariable('data', data), addVariable('dragLayer', dragLayer), addVariable('m', m), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right))));
});
  send(new Array('/showauthorjsp.show_author', ':::EXIT147', new Array(addVariable('dragLayer', dragLayer), addVariable('temp_trace', temp_trace), addVariable('tempdata', tempdata), addVariable('trace_author_right', trace_author_right), addVariable('trace_left', trace_left), addVariable('trace_right', trace_right))));
}
</script>
 </head>
 <body></body>
</html>