<html>
 <head></head>
 <body>
  <div id="thread_info_modal" class="modal modal-fixed-footer" style="top:0px !important; max-height: 100%;height: 100%;bottom: 0;width:100%"> 
   <input id="thread_id" type="hidden"> 
   <div class="modal-content" style="font-size: 20px"> 
    <h4>Thread info</h4> 
    <div class="input-field col s12" id="thread_name_edit_panel"> 
     <input id="thread_name" type="text" class="validate"> 
     <label for="thread_name">Name/focus:</label> 
    </div> 
    <div class="col s12" id="thread_name_panel"> 
     <b>Name/focus:</b>
     <span id="thread_name_content"></span> 
    </div> 
    <div class="col s12" id="keywords_edit_panel"> 
     <div>
      keywords :
     </div> 
     <div class="col s12"> 
      <div class="chips chips-placeholder" id="thread_keywords"></div> 
     </div> 
    </div> 
    <div class="col s12" id="keywords_panel"> 
    </div> 
    <div>
     <b>Key resource (books/websites/videos) we may use</b>
    </div> 
    <div id="key_resource2"> 
    </div> 
    <div id="key_resource3" style="padding-left:15px"> 
    </div> 
    <div class="row" id="new-note-for-kf-select-view-content"> 
     <b>New notes written in the thread will also be saved in Knowledge Forum.View(S) selected:</b> 
    </div> 
    <div id="wf_views"> 
     <div class="row" id="new-note-for-kf-select-view"> 
      <div class="col s12 " style="height: 30px">
       New notes written in the thread will also be saved in Knowledge Forum.
      </div> 
      <div class="col s8 " style="height: 30px">
       Select a Knowledge Forum view(s) for this note... 
      </div> 
      <div class="col s12 "> 
       <iframe id="eidt_iFrame" style="width: 100%;"></iframe> 
      </div> 
     </div> 
    </div> 
    <br> 
    <div class="divider"></div> 
    <div id="wondering_area_edit"> 
     <div class="row"> 
      <p>This thread contributes to the following wondering area(s):</p> 
     </div> 
     <div id="wondering_area"></div> 
    </div> 
    <div id="wondering_area_seleced"></div> 
   </div> 
   <div class="modal-footer"> 
    <span><a style="margin-left: 10px; margin-right: 16px;" class="modal-action modal-close waves-effect waves-green btn-flat " href="#!">Close</a></span> 
    <span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#!" id="thread_del_btn" style="margin-left: 10px;" class="modal-action waves-green btn-flat">Delete</a> </span> 
    <span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#!" id="thread_edit_btn" data-mode="edit" style="margin-left: 10px;" class="modal-action waves-green btn-flat">Edit</a> </span> 
   </div> 
  </div> 
  <script src="/ITM3/js/tinymce/tinymce.min.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /thread_info_modaljsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
$(document).ready(function() {
  $("#eidt_iFrame").attr("src", window.location.protocol + "//" + window.location.host + 'ITM3/thread/viewlist.jsp');
});
$("#thread_info_modal").css("top", "0px");
$(document).ready(function() {
  tinymce.init({selector: '#key_resource', height: "180", menubar: false, plugins: ['advlist autolink lists link image charmap print preview hr anchor pagebreak', 'searchreplace wordcount visualblocks visualchars code fullscreen', 'insertdatetime media nonbreaking save table contextmenu directionality', 'template paste textcolor colorpicker textpattern imagetools codesample toc help'], toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |forecolor backcolor', image_advtab: true});
});
function initEdit(content) {
  send(new Array('/thread_info_modaljsp.initEdit', ':::ENTER', new Array(addVariable('content', content))));
  tinymce.init({selector: '#key_resource2', height: "180", menubar: false, plugins: ['advlist autolink lists link image charmap print preview hr anchor pagebreak', 'searchreplace wordcount visualblocks visualchars code fullscreen', 'insertdatetime media nonbreaking save table contextmenu directionality', 'template paste textcolor colorpicker textpattern imagetools codesample toc help'], toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent |forecolor backcolor', image_advtab: true});
  tinyMCE.activeEditor.setContent(content);
  send(new Array('/thread_info_modaljsp.initEdit', ':::EXIT40', new Array(addVariable('content', content))));
}
$("#thread_del_btn").click(function() {
  send(new Array('/thread_info_modaljsp.anonymous43', ':::ENTER', new Array(addVariable('threadInfo', threadInfo))));
  if ('<%=session.getAttribute("role")%>' != "2" && '<%=session.getAttribute("role")%>' != "3") 
  {
    Materialize.toast('Please contact teacher to delete this thread !', 3000);
    send(new Array('/thread_info_modaljsp.anonymous43', ':::EXIT46', new Array(addVariable('threadInfo', threadInfo))));
    return;
  }
  if (confirm("Are you sure you want to delete this thread?")) 
  {
    var threadInfo = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "threadid": $("#thread_info_modal #thread_id").val(), "projectid": '<%=session.getAttribute("projectid")%>'};
    $.ajax({url: "/WSG/project/thread/del", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous60', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
  delThread($("#thread_info_modal #thread_id").val());
  send(new Array('/thread_info_modaljsp.anonymous60', ':::EXIT62', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
}});
  }
  send(new Array('/thread_info_modaljsp.anonymous43', ':::EXIT48', new Array(addVariable('threadInfo', threadInfo))));
});
function delThread(id) {
  send(new Array('/thread_info_modaljsp.delThread', ':::ENTER', new Array(addVariable('id', id), addVariable('threadInfo', threadInfo))));
  var threadInfo = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "tid": id};
  $.ajax({url: "/WSG/thread/del", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous83', ':::ENTER', new Array(addVariable('data', data), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
  location.reload(true);
  send(new Array('/thread_info_modaljsp.anonymous83', ':::EXIT84', new Array(addVariable('data', data), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo))));
}});
  send(new Array('/thread_info_modaljsp.delThread', ':::EXIT78', new Array(addVariable('id', id), addVariable('threadInfo', threadInfo))));
}
function addThreadViewRelationship(tid) {
  send(new Array('/thread_info_modaljsp.addThreadViewRelationship', ':::ENTER', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('selected_views', selected_views), addVariable('tid', tid))));
  var checked = false;
  var selected_views = [];
  $("#eidt_iFrame").contents().find('#new-note-select-views input:checked').each(function() {
  send(new Array('/thread_info_modaljsp.anonymous92', ':::ENTER', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('selected_views', selected_views), addVariable('tid', tid))));
  checked = true;
  selected_views.push($(this).attr('value'));
  send(new Array('/thread_info_modaljsp.anonymous92', ':::EXIT94', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('selected_views', selected_views), addVariable('tid', tid))));
});
  if (!checked) 
  {
    Materialize.toast("please select a view ", 3000);
    send(new Array('/thread_info_modaljsp.addThreadViewRelationship', ':::EXIT99', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('selected_views', selected_views), addVariable('tid', tid))));
    return;
  }
  for (var i in selected_views) 
    {
      addThreadView(tid, selected_views[i]);
      location.reload(true);
    }
  send(new Array('/thread_info_modaljsp.addThreadViewRelationship', ':::EXIT102', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('selected_views', selected_views), addVariable('tid', tid))));
}
$("#thread_edit_btn").click(function() {
  send(new Array('/thread_info_modaljsp.anonymous110', ':::ENTER', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
  if ('<%=session.getAttribute("role")%>' != "2" && '<%=session.getAttribute("role")%>' != "3") 
  {
    Materialize.toast('Please contact teacher to edit this thread !', 3000);
    send(new Array('/thread_info_modaljsp.anonymous110', ':::EXIT113', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
    return;
  }
  if ($('#wondering_area input:checked').val() != "on") 
  {
    Materialize.toast('Please select a wondering area !', 3000);
    send(new Array('/thread_info_modaljsp.anonymous110', ':::EXIT118', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
    return;
  }
  if ($("#thread_edit_btn").data("mode") == "edit") 
  {
    $("#thread_info_modal .modal-content").removeAttr("style");
    $("#thread_edit_btn").html("Save");
    $("#thread_edit_btn").data("mode", "save");
    $("#thread_info_modal .mce-tinymce").show();
    $("#thread_info_modal #key_resource3").hide();
    $("#wf_views").show();
    $("#new-note-for-kf-select-view-content").hide();
    $("#keywords_edit_panel").show();
    $("#keywords_panel").hide();
    $("#wondering_area_eidt").show();
    $("#wondering_area_seleced").hide();
    $("#thread_name_edit_panel").show();
    $("#thread_name_panel").hide();
  } else {
    var checked = false;
    var selected_views = [];
    $("#eidt_iFrame").contents().find('#new-note-select-views input:checked').each(function() {
  send(new Array('/thread_info_modaljsp.anonymous144', ':::ENTER', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
  checked = true;
  selected_views.push($(this).attr('value'));
  send(new Array('/thread_info_modaljsp.anonymous144', ':::EXIT146', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
});
    if (!checked) 
    {
      Materialize.toast("please select a view ", 3000);
      send(new Array('/thread_info_modaljsp.anonymous110', ':::EXIT151', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
      return;
    }
    var keywords = $('#thread_info_modal #thread_keywords').material_chip('data');
    var keyword = "";
    for (var i in keywords) 
      {
        keyword = keyword + keywords[i].tag + ",";
      }
    var threadInfo = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "threadid": $("#thread_info_modal #thread_id").val(), "threadfocus": $("#thread_info_modal #thread_name").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "authorid": '<%=session.getAttribute("id")%>', "mtime": new Date(), "resource": tinyMCE.activeEditor.getContent().replace(/'/g, "\\'").replace(/"/g, "\\\"").replace(/\n/g, ""), "keywords": keyword.replace(/'/g, "\\'").replace(/"/g, "\\\"")};
    $.ajax({url: "/WSG/thread/update", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous177', ':::ENTER', new Array(addVariable('checked', checked), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
  console.log("111");
  send(new Array('/thread_info_modaljsp.anonymous177', ':::EXIT178', new Array(addVariable('checked', checked), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
}});
    $.ajax({url: "/WSG/thread/wondering/del/threadid", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous188', ':::ENTER', new Array(addVariable('checked', checked), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
  addThreadWonderingAreaRelationship();
  send(new Array('/thread_info_modaljsp.anonymous188', ':::EXIT190', new Array(addVariable('checked', checked), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
}});
    var threadInfo2 = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "tid": $("#thread_info_modal #thread_id").val()};
    $.ajax({url: "/WSG/thread_view/del", type: "POST", data: JSON.stringify(threadInfo2), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous205', ':::ENTER', new Array(addVariable('checked', checked), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
  addThreadViewRelationship($("#thread_info_modal #thread_id").val());
  send(new Array('/thread_info_modaljsp.anonymous205', ':::EXIT207', new Array(addVariable('checked', checked), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
}});
    $("#thread_edit_btn").data("mode", "save");
  }
  send(new Array('/thread_info_modaljsp.anonymous110', ':::EXIT120', new Array(addVariable('checked', checked), addVariable('i', i), addVariable('keyword', keyword), addVariable('keywords', keywords), addVariable('selected_views', selected_views), addVariable('threadInfo', threadInfo), addVariable('threadInfo2', threadInfo2))));
});
function addThreadWonderingAreaRelationship() {
  $('#wondering_area input:checked').each(function(e) {
  send(new Array('/thread_info_modaljsp.anonymous221', ':::ENTER', new Array(addVariable('e', e), addVariable('thread_w_json', thread_w_json), addVariable('wid', wid), addVariable('wname', wname))));
  var wid = $(this).data("id");
  var wname = $(this).val();
  var thread_w_json = {"database": localdb, "token": token, "threadid": $("#thread_info_modal #thread_id").val(), "areaid": wid};
  $.ajax({url: "/WSG/thread/wondering/add", type: "POST", data: JSON.stringify(thread_w_json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous236', ':::ENTER', new Array(addVariable('data', data), addVariable('e', e), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('thread_w_json', thread_w_json), addVariable('wid', wid), addVariable('wname', wname))));
  send(new Array('/thread_info_modaljsp.anonymous236', ':::EXIT0', new Array(addVariable('data', data), addVariable('e', e), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('thread_w_json', thread_w_json), addVariable('wid', wid), addVariable('wname', wname))));
}});
  send(new Array('/thread_info_modaljsp.anonymous221', ':::EXIT231', new Array(addVariable('e', e), addVariable('thread_w_json', thread_w_json), addVariable('wid', wid), addVariable('wname', wname))));
});
  location.reload(true);
}
function showThreadInfo(threadid) {
  send(new Array('/thread_info_modaljsp.showThreadInfo', ':::ENTER', new Array(addVariable('jsondata', jsondata), addVariable('projectdata', projectdata), addVariable('threadid', threadid))));
  $("#thread_edit_btn").html("Edit");
  $("#thread_edit_btn").data("mode", "edit");
  $("#wf_views").hide();
  $("#new-note-for-kf-select-view-content").show();
  $("#keywords_edit_panel").hide();
  $("#keywords_panel").show();
  $("#wondering_area_edit").hide();
  $("#wondering_area_seleced").show();
  $("#thread_name_edit_panel").hide();
  $("#thread_name_panel").show();
  threadid = $.trim(threadid);
  $("#eidt_iFrame").attr('src', window.location.protocol + "//" + window.location.host + "/ITM3/thread/viewlist.jsp?threadid=" + threadid);
  if (threadid != "") 
  {
    $("#thread_info_modal #thread_id").val(threadid);
  }
  var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "tid": threadid};
  $.ajax({url: "/WSG/thread_view/getbythreadid", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous282', ':::ENTER', new Array(addVariable('d', d), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid))));
  if (data.code == "success") 
  {
    var json = data.obj;
    if ($.trim(json) != "No data aviliable.") 
    {
      var d = $.parseJSON(json);
      $("#new-note-for-kf-select-view-content").empty().html("");
      $("#new-note-for-kf-select-view-content").append("<p><b>New notes written in the thread will also be saved in Knowledge Forum. View(S) Selected:</b></p>");
      for (var i in d) 
        {
          $("#new-note-for-kf-select-view-content").append("<p>&nbsp;&nbsp;&nbsp;&nbsp;" + d[i].title + "</p>");
        }
    }
  }
  send(new Array('/thread_info_modaljsp.anonymous282', ':::EXIT283', new Array(addVariable('d', d), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid))));
}});
  var projectdata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "threadid": threadid};
  $.ajax({url: "/WSG/thread/get", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous309', ':::ENTER', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('kword', kword), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('words', words))));
  var json = $.parseJSON(data.obj);
  console.log(json);
  if (null != json) 
  {
    $("#thread_info_modal #thread_name").val(json[0].threadfocus);
    $("#thread_info_modal #thread_name_content").html(json[0].threadfocus);
    $("#thread_info_modal #key_resource2").empty().html("");
    $("#thread_info_modal #key_resource2").append("&nbsp;&nbsp;&nbsp;&nbsp;" + json[0].resources);
    $("#thread_info_modal #key_resource3").empty().html("");
    $("#thread_info_modal #key_resource3").append("&nbsp;&nbsp;&nbsp;&nbsp;" + json[0].resources);
    initEdit(json[0].resources);
    $("#thread_info_modal .mce-tinymce").hide();
    $("#thread_info_modal #key_resource3").show();
    $("#thread_info_modal #key_resource3").css("pointer-events", "auto");
    var words = [];
    var kword = null;
    if (json[0].keywords) 
    {
      kword = json[0].keywords.split(',');
    }
    $("#keywords_panel").empty().html();
    $("#keywords_panel").append("<b>Keywords:</b>&nbsp;&nbsp;&nbsp;&nbsp;" + kword);
    for (var i in kword) 
      {
        if (kword[i] != "") 
        {
          words.push({tag: kword[i]});
        }
      }
    $('.chips-placeholder').material_chip({placeholder: 'Enter a keyword', secondaryPlaceholder: '+Keyword'});
    if (words.length != 0) 
    {
      $('.chips-placeholder').material_chip({data: words});
    }
    $("#thread_info_modal").modal("open");
    Materialize.updateTextFields();
  }
  send(new Array('/thread_info_modaljsp.anonymous309', ':::EXIT312', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('kword', kword), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('words', words))));
}});
  $.ajax({url: "/WSG/thread/wondering_area/get", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous367', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid))));
  var json = $.parseJSON(data.obj);
  console.log(json);
  if (null != json) 
  {
    initWondering_area_in_thread_info(json);
  }
  send(new Array('/thread_info_modaljsp.anonymous367', ':::EXIT370', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus), addVariable('threadid', threadid))));
}});
  send(new Array('/thread_info_modaljsp.showThreadInfo', ':::EXIT362', new Array(addVariable('jsondata', jsondata), addVariable('projectdata', projectdata), addVariable('threadid', threadid))));
}
function initWondering_area_in_thread_info(d) {
  send(new Array('/thread_info_modaljsp.initWondering_area_in_thread_info', ':::ENTER', new Array(addVariable('d', d), addVariable('userdata', userdata))));
  var userdata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "pid": '<%=session.getAttribute("projectid")%>'};
  $.ajax({url: "/WSG/wondering_area/get/byprojectid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_info_modaljsp.anonymous391', ':::ENTER', new Array(addVariable('d', d), addVariable('data', data), addVariable('i', i), addVariable('isSelected', isSelected), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('p', p), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    $("#thread_info_modal #wondering_area").text(" ");
    $("#wondering_area_seleced").empty().html();
    $("#wondering_area_seleced").append("<b>Wondering area(s)selected:</b>");
    for (var i = 0; i < json.length; i++) 
      {
        if (json[i].status == "accepted") 
        {
          var isSelected = false;
          for (var j in d) 
            {
              if (json[i].name == d[j].name) 
              {
                isSelected = true;
                break;
              }
            }
          if (isSelected) 
          {
            var p = '<p><input type="checkbox" checked="checked"  data-id="' + json[i].id + '" id="wf_thread_info' + json[i].id + '" /><label for="wf_thread_info' + json[i].id + '">' + json[i].name + '</label></p>';
            $("#thread_info_modal #wondering_area").append(p);
            $("#wondering_area_seleced").append("<p>&nbsp;&nbsp;&nbsp;&nbsp;" + json[i].name + "</p>");
          } else {
            var p = '<p><input type="checkbox" data-id="' + json[i].id + '" id="wf_thread_info' + json[i].id + '" /><label for="wf_thread_info' + json[i].id + '">' + json[i].name + '</label></p>';
            $("#thread_info_modal #wondering_area").append(p);
          }
        }
      }
  }
  send(new Array('/thread_info_modaljsp.anonymous391', ':::EXIT393', new Array(addVariable('d', d), addVariable('data', data), addVariable('i', i), addVariable('isSelected', isSelected), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('p', p), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/thread_info_modaljsp.anonymous421', ':::ENTER', new Array(addVariable('d', d), addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
  console.log(jqXHR.responseText);
  send(new Array('/thread_info_modaljsp.anonymous421', ':::EXIT422', new Array(addVariable('d', d), addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
}});
  send(new Array('/thread_info_modaljsp.initWondering_area_in_thread_info', ':::EXIT386', new Array(addVariable('d', d), addVariable('userdata', userdata))));
}
</script>
 </body>
</html>