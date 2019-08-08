<html>
 <head><script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /notereadaddjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
function noteRead(data_note_id) {
  send(new Array('/notereadaddjsp.noteRead', ':::ENTER', new Array(addVariable('data_note_id', data_note_id), addVariable('notecountdata', notecountdata))));
  var notecountdata = {"database": localdb, "token": token, "noteid": data_note_id, "authorid": id, "threadid": thread_id, "ctime": new Date()};
  if (isSupertalk) 
  {
    notecountdata = {"database": "super_talk", "token": super_token, "noteid": data_note_id, "authorid": id, "threadid": thread_id, "ctime": new Date()};
  }
  $.ajax({url: "/WSG/note_view_record/add", type: "POST", data: JSON.stringify(notecountdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/notereadaddjsp.anonymous29', ':::ENTER', new Array(addVariable('data', data), addVariable('data_note_id', data_note_id), addVariable('jqXHR', jqXHR), addVariable('notecountdata', notecountdata), addVariable('textStatus', textStatus))));
  send(new Array('/notereadaddjsp.anonymous29', ':::EXIT0', new Array(addVariable('data', data), addVariable('data_note_id', data_note_id), addVariable('jqXHR', jqXHR), addVariable('notecountdata', notecountdata), addVariable('textStatus', textStatus))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/notereadaddjsp.anonymous33', ':::ENTER', new Array(addVariable('data_note_id', data_note_id), addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('notecountdata', notecountdata), addVariable('textStatus', textStatus))));
  send(new Array('/notereadaddjsp.anonymous33', ':::EXIT0', new Array(addVariable('data_note_id', data_note_id), addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('notecountdata', notecountdata), addVariable('textStatus', textStatus))));
}});
  send(new Array('/notereadaddjsp.noteRead', ':::EXIT24', new Array(addVariable('data_note_id', data_note_id), addVariable('notecountdata', notecountdata))));
}
</script>
 </head>
 <body></body>
</html>