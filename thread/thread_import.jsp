<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../validation.jsp" %>
<%
/************validate the user session*******************/
 String current_user =" ";
 %> -->
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../css/customerize.css" media="screen,projection"> 
  <!--Let browser know website is optimized for mobile--> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
  <script src="../js/plotly-latest.min.js"></script> 
  <script src="../js/jquery-3.1.0.js"></script> 
  <script src="../js/jquery-ui.js"></script> 
  <script src="../js/jquery.sessionTimeout.js"></script> 
  <script src="../js/itm.js"></script> 
  <style>
#resizable {
	width: 150px;
	height: 150px;
	padding: 0.5em;
}

#resizable h3 {
	text-align: center;
	margin: 0;
}

@media ( min-width : 768px) {
}

.links line {
	stroke: #999;
	stroke-opacity: 0.6;
}

.nodes circle {
	stroke: #fff;
	stroke-width: 1.5px;
}

.container {
	margin: 0 auto;
	max-width: 1280px;
	width: 90%;
}

main {
	/*padding-left: 300px;*/
	
}

header {
	/*padding-left: 300px;*/
	
}

ul.side-nav.fixed li.logo {
	text-align: center;
	margin-top: 22px;
	margin-bottom: 62px;
	line-height: 64px;
}

.brand-logo {
	
}

nav.top-nav {
	
}

nav.top-nav a.brand-logo {
	font-size: 36px;
}
.btn-confirm{
 	width:80px;
 	padding:0px;
 }
 .blk_1{
 	width:90%;
 	display:inline-block;
 	padding-left:20px;
}
.blk_2{
	width:50%;
	display:inline-block;
	padding-left:20px;
}
.loading{
	float:left;
	width:100%;
	text-align:center;
	font-size:13px;
	line-height: 30px;
	height: 30px;
    margin: 5px 0px 5px 0px;
}

.cell-title{
	max-width: 150px;
     overflow-wrap: break-word;
}

.cell-author{
	    max-width: 100px;
}

.cell-content{
}
</style> 
 </head> 
 <body> 
  <header> 
   <nav class="  blue-grey"> 
    <!-- <%@ include file="../header.jsp" %>
			<%@ include file="../side_menu_hidden.jsp" %> --> 
   </nav> 
  </header> 
  <main> 
   <br>
   <br> 
   <div class="container"> 
    <div class="row"> 
     <div class="input-field  col s2 ">
      Find Notes:
     </div> 
     <div class=" input-field col s4 ">
       From
      <input type="date" id="from_date" class="datepicker"> 
     </div> 
     <div class="input-field  col s4 ">
       To
      <input type="date" id="to_date" class="datepicker"> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s2 ">
      In Views
     </div> 
     <div class="input-field  col s8 " id="views-list"> 
      <select multiple id="selected-views"> <option value="-1" id="vid_select_all" onclick="viewSelectAll()">Select All</option> </select> 
      <label>Views</label> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s2 ">
      In Project
     </div> 
     <div class="input-field  col s8 " id="projects-list"> 
      <select multiple id="selected-projects"> <option value="-1" id="pid_select_all">Select All</option> </select> 
      <label>Projects</label> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s2 ">
      Key Word:
     </div> 
     <div class="input-field  col s8 "> 
      <input id="search-key-words" type="text" class="validate"> 
      <label for="search-key-words">KeyWord</label> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s2 ">
      Key Word in 
     </div> 
     <div class="input-field  col s4 "> 
      <select id="fields"> <option value="0" selected>Anywhere</option> <option value="1">Note Content</option> <option value="2">Note Title</option> </select> 
      <label>Fields</label> 
     </div> 
     <div class="input-field  col s4"> 
      <select id="matching"> <option value="0" selected>Related Match</option> <option value="1">Exact Match</option> </select> 
      <label>Matching</label> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s2 ">
      Belongs to Author
     </div> 
     <div class="input-field  col s8 " id="users-list"> 
      <select multiple id="select-user"> <option value="-1" id="ur_select_all">Select All</option> </select> 
      <label>Author</label> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s2 "> 
      <a id="btn-search" class="btn">Search</a> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field  col s12 "> 
      <a id="btn-select-all" class="btn">Select All Notes</a> &nbsp;&nbsp; 
      <a id="btn-deselect-all" class="btn">Deselect All Notes</a> &nbsp;&nbsp; 
      <a id="btn-add-thread" class="btn">Add Into Thread</a> &nbsp;&nbsp; 
     </div> 
    </div> 
   </div> 
   <div class="container"> 
    <div style="padding-left: 10px; border: solid 5px; border-color: #78909c;"> 
     <table> 
      <thead> 
       <tr> 
        <th width="50px"></th> 
        <th class="cell-title">Title</th> 
        <th class="cell-author">Author</th> 
        <th class="cell-content">Content</th> 
       </tr> 
      </thead> 
      <tbody id="note_list"> 
      </tbody> 
     </table> 
    </div> 
   </div> 
  </main> 
  <br>
  <br>
  <br>
  <br>
  <br>
  <br> 
  <!--Import jQuery before materialize.js--> 
  <script src="../js/notify.js"></script> 
  <script type="text/javascript" src="../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /thread_importjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var localdb = '<%=session.getAttribute("localdb")%>';
var super_talk = getUrlParameter('localdb');
var token = '<%=session.getAttribute("token")%>';
var super_token = '<%=session.getAttribute("super_token")%>';
var community = getUrlParameter('community');
var community_id = getUrlParameter('c_id');
var type = getUrlParameter('type');
var urname = '<%=session.getAttribute("username")%>';
var id = '<%=session.getAttribute("id")%>';
var itmdb = '<%=session.getAttribute("ITMDatabase")%>';
var domain = getUrlParameter('domain');
var school = getUrlParameter('school');
var country = getUrlParameter('country');
var city = getUrlParameter('city');
var projectid = getUrlParameter('projectid');
var project_name = getUrlParameter('projectname');
var threadid = getUrlParameter('threadid');
var threadname = getUrlParameter('threadname');
var isCrossProject = community_id != '<%=session.getAttribute("community_id")%>' ? true : false;
if (isCrossProject) 
{
  window.history.back();
}
var current_thread_note_ids = [];
var isSearch = false;
$("#btn-select-all").click(function() {
  send(new Array('/thread_importjsp.anonymous35', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(".note_list_id").prop('checked', true);
  send(new Array('/thread_importjsp.anonymous35', ':::EXIT36', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
$("#btn-deselect-all").click(function() {
  send(new Array('/thread_importjsp.anonymous40', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(".note_list_id").prop('checked', false);
  send(new Array('/thread_importjsp.anonymous40', ':::EXIT41', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
function notInCurrentThreadNoteIds(noteid) {
  send(new Array('/thread_importjsp.notInCurrentThreadNoteIds', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('noteid', noteid), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  for (var i in current_thread_note_ids) 
    {
      if (current_thread_note_ids[i] == noteid) 
      {
        send(new Array('/thread_importjsp.notInCurrentThreadNoteIds', ':::EXIT47', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('noteid', noteid), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
        return false;
      }
    }
  send(new Array('/thread_importjsp.notInCurrentThreadNoteIds', ':::EXIT50', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('noteid', noteid), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  return true;
}
function getThreadNote() {
  send(new Array('/thread_importjsp.getThreadNote', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadInfo', threadInfo), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var threadInfo = {"database": super_talk, "token": super_token, "tid": threadid};
  $.ajax({url: "/WSG/thread/noteids/getbythreadid", type: "POST", data: JSON.stringify(threadInfo), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_importjsp.anonymous65', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    for (var i in json) 
      {
        current_thread_note_ids.push(json[i].note_id);
      }
  }
  send(new Array('/thread_importjsp.anonymous65', ':::EXIT70', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadInfo', threadInfo), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  send(new Array('/thread_importjsp.getThreadNote', ':::EXIT60', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadInfo', threadInfo), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
getThreadNote();
$("#btn-add-thread").click(function() {
  send(new Array('/thread_importjsp.anonymous81', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('#note_list input:checked').each(function() {
  send(new Array('/thread_importjsp.anonymous82', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var tid = threadid;
  if (null == tid) 
  {
    tid = 999;
  }
  var json = {"database": super_talk, "token": super_token, "projectid": projectid, "threadid": tid, "cid": community_id, "noteid": $(this).attr('value'), "ctime": new Date()};
  $.ajax({url: "/WSG/thread/note/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_importjsp.anonymous101', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
  }
  send(new Array('/thread_importjsp.anonymous101', ':::EXIT103', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  if (super_talk != localdb) 
  {
    addNoteToSuperTalkById($(this).attr('value'));
  }
  note_add_keywords($(this).attr('value'));
  send(new Array('/thread_importjsp.anonymous82', ':::EXIT112', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $.notify('Import notes have been added ', 'success');
  isSearch = true;
  send(new Array('/thread_importjsp.anonymous81', ':::EXIT117', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
function addNoteToSuperTalkById(id) {
  send(new Array('/thread_importjsp.addNoteToSuperTalkById', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var json = {"database": localdb, "token": super_token, "noteid": id};
  $.ajax({url: "/WSG/supertalk/note/add/bynoteid", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_importjsp.anonymous133', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  send(new Array('/thread_importjsp.anonymous133', ':::EXIT0', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  send(new Array('/thread_importjsp.addNoteToSuperTalkById', ':::EXIT128', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function note_add_keywords(noteid) {
  send(new Array('/thread_importjsp.note_add_keywords', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('noteid', noteid), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (keywords_for_search != "" || keywords_for_search != null) 
  {
    var json = {"database": super_talk, "token": super_token, "noteid": noteid, "threadid": threadid, "projectid": projectid, "cid": community_id, "keywords": keywords_for_search.replace(/'/g, "\\'").replace(/"/g, "\\\"")};
    $.ajax({url: "/WSG/note/keyword/add", type: "POST", data: JSON.stringify(json), dataType: "json"});
  }
  send(new Array('/thread_importjsp.note_add_keywords', ':::EXIT142', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('noteid', noteid), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
$(document).ajaxStop(function() {
  send(new Array('/thread_importjsp.anonymous164', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (isSearch) 
  {
    window.history.back();
  }
  send(new Array('/thread_importjsp.anonymous164', ':::EXIT165', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
$(".button-collapse").sideNav();
$(".in-community").hide();
$("#show_slide").click(function() {
  send(new Array('/thread_importjsp.anonymous175', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('.button-collapse').sideNav('show');
  send(new Array('/thread_importjsp.anonymous175', ':::EXIT176', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
$(".modal").modal();
$("#page_title").html("Import");
$('.datepicker').pickadate({selectMonths: true, selectYears: 15});
function init() {
  send(new Array('/thread_importjsp.init', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  initViews();
  initProjects();
  initUser();
  $('select').material_select();
  send(new Array('/thread_importjsp.init', ':::EXIT200', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
init();
var keywords_for_search = "";
$("#btn-search").click(function() {
  send(new Array('/thread_importjsp.anonymous209', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('fd', fd), addVariable('fields', fields), addVariable('from_date', from_date), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('matching', matching), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('search_key_words', search_key_words), addVariable('selected_projects', selected_projects), addVariable('selected_views', selected_views), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('to_date', to_date), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $("#note_list").html("").empty();
  var from_date = $("#from_date").val();
  var to_date = $("#to_date").val();
  var selected_views = $("#selected-views").val();
  var search_key_words = $("#search-key-words").val();
  var selected_projects = $("#selected-projects").val();
  var fields = $("#fields").val();
  var matching = $("#matching").val();
  keywords_for_search = $("#search-key-words").val().replace(/'/g, "\\'").replace(/"/g, "\\\"");
  var fd = {database: localdb, from_date: $("#from_date").val(), to_date: $("#to_date").val(), view_ids: JSON.stringify($("#selected-views").val()), keywords: $("#search-key-words").val(), project_ids: JSON.stringify($("#selected-projects").val()), category: $("#fields").val(), isExact: $("#matching").val(), users: JSON.stringify($("#select-user").val())};
  console.log("from date:" + from_date);
  console.log("to date:" + to_date);
  console.log("selected_views :" + selected_views);
  console.log("search_key_words:" + search_key_words);
  console.log("selected_projects:" + selected_projects);
  console.log("fields:" + fields);
  console.log("matching:" + matching);
  $.ajax({type: 'post', url: '/IIUSs/util/search', data: fd, dataType: 'json', async: true, success: function(data) {
  send(new Array('/thread_importjsp.anonymous243', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('data', data), addVariable('domain', domain), addVariable('fd', fd), addVariable('fields', fields), addVariable('from_date', from_date), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('matching', matching), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('search_key_words', search_key_words), addVariable('selected_projects', selected_projects), addVariable('selected_views', selected_views), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('to_date', to_date), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    var json = data.obj;
    if ($.trim(json) != "No data aviliable.") 
    {
      var d = $.parseJSON(json);
      if (d == "") 
      {
        $.notify('No note match. ', 'info');
      } else {
        initTable(d);
      }
    } else {
      $.notify('No note match. ', 'warn');
    }
  }
  send(new Array('/thread_importjsp.anonymous243', ':::EXIT245', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('data', data), addVariable('domain', domain), addVariable('fd', fd), addVariable('fields', fields), addVariable('from_date', from_date), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('matching', matching), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('search_key_words', search_key_words), addVariable('selected_projects', selected_projects), addVariable('selected_views', selected_views), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('to_date', to_date), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  send(new Array('/thread_importjsp.anonymous209', ':::EXIT237', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('fd', fd), addVariable('fields', fields), addVariable('from_date', from_date), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('matching', matching), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('search_key_words', search_key_words), addVariable('selected_projects', selected_projects), addVariable('selected_views', selected_views), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('to_date', to_date), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
$('select').on('contentChanged', function() {
  send(new Array('/thread_importjsp.anonymous266', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(this).material_select();
  send(new Array('/thread_importjsp.anonymous266', ':::EXIT268', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
function initProjects() {
  send(new Array('/thread_importjsp.initProjects', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var jsondata = {"database": localdb, "token": token};
  $.ajax({url: "/WSG/project/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_importjsp.anonymous283', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    var json = data.obj;
    if ($.trim(json) != "No data aviliable.") 
    {
      var d = $.parseJSON(json);
      for (var i in d) 
        {
          $("#selected-projects").append($("<option id='pid_" + d[i].id + "'></option>").attr("value", d[i].id).text(d[i].title));
        }
      $("#selected-projects").trigger('contentChanged');
    }
  }
  send(new Array('/thread_importjsp.anonymous283', ':::EXIT284', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  send(new Array('/thread_importjsp.initProjects', ':::EXIT278', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function initViews() {
  send(new Array('/thread_importjsp.initViews', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var jsondata = {"database": localdb, "token": token};
  $.ajax({url: "/WSG/view/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/thread_importjsp.anonymous315', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    var json = data.obj;
    if ($.trim(json) != "No data aviliable.") 
    {
      var d = $.parseJSON(json);
      for (var i in d) 
        {
          $("#selected-views").append($("<option id='vid_" + d[i].view_id + "'></option>").attr("value", d[i].view_id).text(d[i].title));
        }
      $("#selected-views").trigger('contentChanged');
    }
  }
  send(new Array('/thread_importjsp.anonymous315', ':::EXIT316', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  send(new Array('/thread_importjsp.initViews', ':::EXIT310', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function initUser() {
  send(new Array('/thread_importjsp.initUser', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var d = JSON.parse(localStorage.users);
  for (var i in d) 
    {
      $("#select-user").append($("<option id='user_" + d[i].str_id + "'></option>").attr("value", d[i].str_id).text(d[i].first_name + "\u3000" + d[i].last_name));
    }
  $("#select-user").trigger('contentChanged');
  send(new Array('/thread_importjsp.initUser', ':::EXIT345', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('d', d), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function initTable(data) {
  send(new Array('/thread_importjsp.initTable', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('content', content), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('tr', tr), addVariable('type', type), addVariable('urname', urname))));
  $("#note_list").html("");
  if (null != data && "" != data) 
  {
    for (var i in data) 
      {
        if (!notInCurrentThreadNoteIds(data[i].note_id)) 
        {
          continue;
        }
        var tr = $("#note_list");
        var html = '<tr><td width="50px"><input class="note_list_id" type="checkbox" value="' + data[i].note_id + '"  id="notes_' + data[i].note_id + '"><label for="notes_' + data[i].note_id + '"></label>' + '</td>';
        if (null != data[i].title) 
        {
          html = html + '<td class="cell-title">' + data[i].title + '</td>';
        } else {
          html = html + '<td class="cell-title"> null </td>';
        }
        if (null != data[i].first_name) 
        {
          html = html + '<td class="cell-author">' + $.trim(data[i].first_name) + "  " + $.trim(data[i].last_name) + '</td>';
        } else {
          html = html + '<td class="cell-author"> null </td>';
        }
        if (null != data[i].content || "" != data[i].content) 
        {
          var content = data[i].content.replace(/<\/?[^>]+(>|$)/g, "");
          content = $.trim(content.replace(/&nbsp;/g, ""));
          if (content.length > 50) 
          {
            html = html + '<td class="cell-content tooltipped" title="' + content + '">' + content.substring(0, 50) + '...</td>';
          } else {
            html = html + '<td class="cell-content">' + content + '</td>';
          }
        } else {
          html = html + '<td> null </td>';
        }
        html = html + '</tr>';
        tr.append(html);
      }
  }
  send(new Array('/thread_importjsp.initTable', ':::EXIT353', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('content', content), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('data', data), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('tr', tr), addVariable('type', type), addVariable('urname', urname))));
}
$(document).ready(function() {
  send(new Array('/thread_importjsp.anonymous392', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('.tooltipped').tooltip();
  $('#views-list li:first-child').click(function(index) {
  send(new Array('/thread_importjsp.anonymous394', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('#views-list li:not(:first-child)').each(function(index) {
  send(new Array('/thread_importjsp.anonymous395', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(this).click();
  send(new Array('/thread_importjsp.anonymous395', ':::EXIT396', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/thread_importjsp.anonymous394', ':::EXIT395', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $('#projects-list li:first-child').click(function(index) {
  send(new Array('/thread_importjsp.anonymous400', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('#projects-list li:not(:first-child)').each(function(index) {
  send(new Array('/thread_importjsp.anonymous401', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(this).click();
  send(new Array('/thread_importjsp.anonymous401', ':::EXIT402', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/thread_importjsp.anonymous400', ':::EXIT401', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $('#users-list li:first-child').click(function(index) {
  send(new Array('/thread_importjsp.anonymous406', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('#users-list li:not(:first-child)').each(function(index) {
  send(new Array('/thread_importjsp.anonymous407', ':::ENTER', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(this).click();
  send(new Array('/thread_importjsp.anonymous407', ':::EXIT408', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/thread_importjsp.anonymous406', ':::EXIT407', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('index', index), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/thread_importjsp.anonymous392', ':::EXIT406', new Array(addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('current_thread_note_ids', current_thread_note_ids), addVariable('domain', domain), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('isSearch', isSearch), addVariable('itmdb', itmdb), addVariable('keywords_for_search', keywords_for_search), addVariable('localdb', localdb), addVariable('project_name', project_name), addVariable('projectid', projectid), addVariable('school', school), addVariable('super_talk', super_talk), addVariable('super_token', super_token), addVariable('threadid', threadid), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
sessionTimeOut('<%=session.getAttribute("SessionTimeOut")%>');
</script>  
 </body>
</html>