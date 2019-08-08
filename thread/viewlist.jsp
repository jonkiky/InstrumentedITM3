<!--  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> -->
<html>
 <head>   
  <meta charset="UTF-8"> 
  <style>
boody {
	    padding-left: 20px;
}
</style> 
 </head> 
 <body> 
  <div class="row"> 
   <div id="new-note-select-views"> 
   </div> 
  </div> 
  <script src="../js/jquery-3.1.0.js"></script> 
  <script type="text/javascript" src="../js/materialize.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../js/tinymce/tinymce.min.js"></script> 
  <script src="../js/notify.js"></script> 
  <script src="../js/itm.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /viewlistjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
function initViews() {
  send(new Array('/viewlistjsp.initViews', ':::ENTER', new Array(addVariable('jsondata', jsondata))));
  var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>'};
  $.ajax({url: "/WSG/view/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/viewlistjsp.anonymous11', ':::ENTER', new Array(addVariable('d', d), addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('textStatus', textStatus))));
  if (data.code == "success") 
  {
    var json = data.obj;
    if ($.trim(json) != "No data aviliable.") 
    {
      var d = $.parseJSON(json);
      initTable(d);
    }
  }
  send(new Array('/viewlistjsp.anonymous11', ':::EXIT12', new Array(addVariable('d', d), addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('textStatus', textStatus))));
}});
  send(new Array('/viewlistjsp.initViews', ':::EXIT6', new Array(addVariable('jsondata', jsondata))));
}
function initTable(data) {
  send(new Array('/viewlistjsp.initTable', ':::ENTER', new Array(addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('tr', tr))));
  $("#new-note-select-views").html("");
  if (null != data && "" != data) 
  {
    for (var i in data) 
      {
        var tr = $("#new-note-select-views");
        var html = '<div><span width="50px"><input class="note_list_id" type="checkbox" value="' + data[i].view_id + '"  id="notes_' + data[i].view_id + '"><label for="notes_' + data[i].view_id + '"></label>' + '</span>';
        if (null != data[i].title) 
        {
          html = html + '<span class="cell-title">' + data[i].title + '</span>';
        } else {
          html = html + '<span class="cell-title"> null </span>';
        }
        html = html + '</div>';
        tr.append(html);
      }
    select_views();
  }
  send(new Array('/viewlistjsp.initTable', ':::EXIT25', new Array(addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('tr', tr))));
}
function select_views() {
  send(new Array('/viewlistjsp.select_views', ':::ENTER', new Array(addVariable('jsondata', jsondata), addVariable('tid', tid))));
  var tid = getUrlParameter('threadid');
  if (typeof (tid) != "undefined") 
  {
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "tid": tid};
    $.ajax({url: "/WSG/thread_view/getbythreadid", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/viewlistjsp.anonymous56', ':::ENTER', new Array(addVariable('checkbox', checkbox), addVariable('d', d), addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('textStatus', textStatus), addVariable('tid', tid))));
  if (data.code == "success") 
  {
    var json = data.obj;
    if ($.trim(json) != "No data aviliable.") 
    {
      var d = $.parseJSON(json);
      var checkbox = $(".note_list_id");
      $.each(checkbox, function(obj) {
  send(new Array('/viewlistjsp.anonymous62', ':::ENTER', new Array(addVariable('checkbox', checkbox), addVariable('d', d), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('obj', obj), addVariable('textStatus', textStatus), addVariable('tid', tid))));
  for (var i in d) 
    {
      if (checkbox[obj].value == d[i].view_id) 
      {
        $(checkbox[obj]).prop("checked", true);
        break;
      }
    }
  send(new Array('/viewlistjsp.anonymous62', ':::EXIT63', new Array(addVariable('checkbox', checkbox), addVariable('d', d), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('obj', obj), addVariable('textStatus', textStatus), addVariable('tid', tid))));
});
    }
  }
  send(new Array('/viewlistjsp.anonymous56', ':::EXIT57', new Array(addVariable('checkbox', checkbox), addVariable('d', d), addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('textStatus', textStatus), addVariable('tid', tid))));
}});
  }
  send(new Array('/viewlistjsp.select_views', ':::EXIT45', new Array(addVariable('jsondata', jsondata), addVariable('tid', tid))));
}
initViews();
</script>  
 </body>
</html>