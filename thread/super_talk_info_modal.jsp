<html>
 <head></head>
 <body>
  <div id="thread_info_modal" class="modal"> 
   <input id="thread_id" type="hidden"> 
   <div class="modal-content" style="pointer-events: none;"> 
    <h4>Super Talk Info</h4> 
    <div class="input-field col s12"> 
     <input id="thread_name" type="text" class="validate"> 
     <label for="thread_name">Name/focus:</label> 
    </div> 
    <div class="input-field col s12"> 
     <input id="question" type="text" class="validate"> 
     <label for="question">Challenge question</label> 
    </div> 
    <div class="input-field col s12"> 
     <input id="detail" type="text" class="validate"> 
     <label for="detail">Say more about your question to help other classrooms understand:</label> 
    </div> 
    <div class="input-field col s12"> 
     <input id="know_now" type="text" class="validate"> 
     <label for="know_now" class="">What do you and your peers know about this issue now?</label> 
    </div> 
    <div class="input-field col s12"> 
     <input id="key_resource" type="text" class="validate"> 
     <label for="key_resource">Key resource (books/websites/videos) we may use</label> 
    </div> 
   </div> 
   <div class="modal-footer"> 
    <span><a style="margin-left: 10px; margin-right: 16px;" class="modal-trigger modal-close waves-effect waves-green btn " href="#!">Close</a></span> 
    <span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#!" id="thread_del_btn" style="margin-left: 10px;" class="waves-effect waves-green btn">Delete</a> </span> 
    <span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#!" id="thread_edit_btn" data-mode="edit" style="margin-left: 10px;" class="waves-effect waves-green btn">Edit</a> </span> 
   </div> 
  </div> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /super_talk_info_modaljsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
$("#thread_del_btn").click(function() {
  send(new Array('/super_talk_info_modaljsp.anonymous1', ':::ENTER', new Array(addVariable('threadInfo', threadInfo))));
  if ('<%=session.getAttribute("role")%>' != "2" && '<%=session.getAttribute("role")%>' != "3") 
  {
    Materialize.toast('Please contact teacher to delete this thread !', 3000);
    send(new Array('/super_talk_info_modaljsp.anonymous1', ':::EXIT4', new Array(addVariable('threadInfo', threadInfo))));
    return;
  }
  var threadInfo = {"database": "super_talk", "token": super_token, "threadid": $("#thread_info_modal #thread_id").val()};
  $.ajax({url: "/WSG/supertalk/del", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/super_talk_info_modaljsp.anonymous16', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
  location.reload(true);
  send(new Array('/super_talk_info_modaljsp.anonymous16', ':::EXIT17', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
}});
  send(new Array('/super_talk_info_modaljsp.anonymous1', ':::EXIT11', new Array(addVariable('threadInfo', threadInfo))));
});
$("#thread_edit_btn").click(function() {
  send(new Array('/super_talk_info_modaljsp.anonymous23', ':::ENTER', new Array(addVariable('threadInfo', threadInfo))));
  if ('<%=session.getAttribute("role")%>' != "2" && '<%=session.getAttribute("role")%>' != "3") 
  {
    Materialize.toast('Please contact teacher to edit this thread !', 3000);
    send(new Array('/super_talk_info_modaljsp.anonymous23', ':::EXIT26', new Array(addVariable('threadInfo', threadInfo))));
    return;
  }
  if ($("#thread_edit_btn").data("mode") == "edit") 
  {
    $("#thread_info_modal .modal-content").removeAttr("style");
    $("#thread_edit_btn").html("Save");
    $("#thread_edit_btn").data("mode", "save");
  } else {
    var threadInfo = {"database": "super_talk", "token": super_token, "threadid": $("#thread_info_modal #thread_id").val(), "threadfocus": $("#thread_info_modal #thread_name").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "authorid": '<%=session.getAttribute("id")%>', "mtime": new Date(), "resource": $("#thread_info_modal #key_resource").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "question": $("#thread_info_modal #question").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "dsc": $("#thread_info_modal #detail").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "issue": $("#thread_info_modal #know_now").val().replace(/'/g, "\\'").replace(/"/g, "\\\"")};
    $.ajax({url: "/WSG/supertalk/update", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/super_talk_info_modaljsp.anonymous52', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
  location.reload(true);
  send(new Array('/super_talk_info_modaljsp.anonymous52', ':::EXIT53', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
}});
    $("#thread_edit_btn").data("mode", "save");
  }
  send(new Array('/super_talk_info_modaljsp.anonymous23', ':::EXIT29', new Array(addVariable('threadInfo', threadInfo))));
});
function showThreadInfo(threadid) {
  send(new Array('/super_talk_info_modaljsp.showThreadInfo', ':::ENTER', new Array(addVariable('projectdata', projectdata), addVariable('threadid', threadid))));
  threadid = $.trim(threadid);
  if (threadid != "") 
  {
    $("#thread_info_modal #thread_id").val(threadid);
  }
  var projectdata = {"database": "super_talk", "token": super_token, "threadid": threadid};
  $.ajax({url: "/WSG/thread/get", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/super_talk_info_modaljsp.anonymous81', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid))));
  var json = $.parseJSON(data.obj);
  console.log(json);
  if (null != json) 
  {
    $("#thread_info_modal #thread_name").val(json[0].threadfocus);
    $("#thread_info_modal #key_resource").val(json[0].resources);
    $("#thread_info_modal #question").val(json[0].question);
    $("#thread_info_modal #detail").val(json[0].description);
    $("#thread_info_modal #know_now").val(json[0].issues);
    $("#thread_info_modal").modal("open");
    Materialize.updateTextFields();
  }
  send(new Array('/super_talk_info_modaljsp.anonymous81', ':::EXIT84', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid))));
}});
  send(new Array('/super_talk_info_modaljsp.showThreadInfo', ':::EXIT76', new Array(addVariable('projectdata', projectdata), addVariable('threadid', threadid))));
}
</script>
 </body>
</html>