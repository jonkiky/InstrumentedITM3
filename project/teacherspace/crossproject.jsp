<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../validation.jsp" %> --><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/customerize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/jquery-ui.css" media="screen,projection"> 
  <!--Let browser know website is optimized for mobile--> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
  <script src="../../js/jquery-3.1.0.js"></script> 
  <script src="../../js/jquery-ui.js"></script> 
  <script src="../../js/jquery.sessionTimeout.js"></script> 
  <style>
.tabs .indicator {
	color: black;
	background-color: black;
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

.collapsible-body {
	padding: 0px !important;
}
s
</style> 
 </head> 
 <body> 
  <header> 
   <!-- <%@ include file="../../header.jsp" %>
		<%@ include file="../../side_menu_hidden.jsp" %> --> 
  </header> 
  <main> 
   <div class="container"> 
    <div class="row"> 
     <div class="col s12"> 
      <p>You may add "buddy projects" for students to engage in live sharing and interactions across classrooms, or add "resource projects" for students to learn from published and archived by other classrooms</p> 
     </div> 
     <div class="col s12"> 
      <ul class="tabs tabs-fixed-width"> 
       <li class="tab col s3 blue-grey lighten-5"><a href="#test1" class="blue-grey-text">Buddy projects</a></li> 
       <li class="tab col s3 blue-grey lighten-5"><a href="#test2" class="blue-grey-text">Resource projects</a></li> 
      </ul> 
     </div> 
     <div id="test1" class="col s12"> 
      <p class="grey-text"> <input type="checkbox" id="ck-buddy-project"> <label for="ck-buddy-project" class="black-text">This project is open for buddy connection with other classrooms</label> (project info will be visible to other database/community's manager users when searching for and adding buddy projects) </p> 
      <p> </p>
      <div class="divider"></div> 
      <div class="col s12"> 
       <h5>Buddy Project Invitation</h5> 
       <table class="highlight"> 
        <thead> 
         <tr> 
          <th>Project Name</th> 
          <th>School</th> 
          <th>Grade level</th> 
          <th>Curriculum area</th> 
          <th>Teacher</th> 
          <th>Status</th> 
          <th>Actions</th> 
         </tr> 
        </thead> 
        <tbody id="connected_buddy_projects"> 
        </tbody> 
       </table> 
      </div> 
      <br> 
      <br> 
      <div class="divider"></div> 
      <div class="row"> 
       <br>
       <br> 
       <div class="btn" id="add-buddy-project">
        Add
       </div> 
      </div> 
     </div> 
     <div id="test2" class="col s12">
       Related projects published from other databases/communities 
      <div class="divider"></div> 
      <!-- <div class="card horizontal">
					<div class="card-image">
						<img src="../download.jpeg">
					</div>
					<div class="card-stacked">
						<div class="card-content">
							<h5>Project Title</h5>
							<p>Project goal</p>
							<p>Curriculum area</p>
							<p>Teacher(s)</p>
							<p>Group(s)/Class(es)</p>
						</div>
					</div>
				</div> --> 
      <br>
      <br> 
      <div class="btn">
       Add more
      </div> 
     </div> 
    </div> 
   </div> 
  </main> 
  <div id="modal1" class="modal"> 
   <div class="modal-content"> 
    <h4>Find and Add buddy projects</h4> 
    <p>Please browse the list of projects open for buddy connections, select a project, and send an invitation. The connection will be added once the invitation has been reviewed and confirmed by the teacher of the project.</p> 
    <p>1. Please select potential buddy projects to be added.</p> 
    <p>Projects open for buddy connections: (click a column name to sort based on it).</p> 
    <div id="all_buddy_project_list"> 
    </div> 
   </div> 
  </div> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../../js/notify.js"></script> 
  <script src="../../js/itm.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /crossprojectjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var token = '<%=session.getAttribute("token")%>';
var community = '<%=session.getAttribute("community")%>';
var c_id = '<%=session.getAttribute("community_id")%>';
var type = '<%=session.getAttribute("role")%>';
var urname = '<%=session.getAttribute("username")%>';
var id = '<%=session.getAttribute("id")%>';
var itmdb = '<%=session.getAttribute("ITMDatabase")%>';
var domain = '<%=session.getAttribute("domain")%>';
var token = '<%=session.getAttribute("token")%>';
var school = '<%=session.getAttribute("school")%>';
var country = '<%=session.getAttribute("country")%>';
var city = '<%=session.getAttribute("city")%>';
var project_id = '<%=session.getAttribute("projectid")%>';
var buddy_project_id = "";
var project = "";
var invited_buddy_project = {};
function SendMessage() {
  send(new Array('/crossprojectjsp.SendMessage', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if ($("#message").val() == "") 
  {
    $.notify('Please type a brief message to be sent out to the teachers of the selected projects', 'warn');
    send(new Array('/crossprojectjsp.SendMessage', ':::EXIT24', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    return;
  }
  $('#all_buddy_project_list input:checked').each(function(e) {
  send(new Array('/crossprojectjsp.anonymous26', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('desc', desc), addVariable('domain', domain), addVariable('e', e), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var pid = $(this).data("id");
  var cid = $(this).data("cid");
  var desc = $("#message").val();
  if (buddy_project_id == "") 
  {
    $.notify('Invite buddy project fails', 'warn');
  } else {
    var teacherJson = {"database": 'itm3', "token": '20171029163219826664', "message": desc, "toprojectid": pid, "fromprojectid": project_id, "from_community_id": c_id, "to_community_id": cid};
    $.ajax({url: "/WSG/project_buddy_project/add", type: "POST", data: JSON.stringify(teacherJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous49', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('desc', desc), addVariable('domain', domain), addVariable('e', e), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(1);
  send(new Array('/crossprojectjsp.anonymous49', ':::EXIT50', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('desc', desc), addVariable('domain', domain), addVariable('e', e), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  $.notify('Invitation has be sent', 'success');
  initTable();
  $('#all_buddy_project_list').modal('close');
  send(new Array('/crossprojectjsp.anonymous26', ':::EXIT56', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('desc', desc), addVariable('domain', domain), addVariable('e', e), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/crossprojectjsp.SendMessage', ':::EXIT26', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function closeModal() {
  send(new Array('/crossprojectjsp.closeModal', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('#all_buddy_project_list').modal('close');
  send(new Array('/crossprojectjsp.closeModal', ':::EXIT63', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function initTable() {
  send(new Array('/crossprojectjsp.initTable', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $("#connected_buddy_projects").html("");
  if (c_id != "" && project_id != "") 
  {
    var json = {"database": 'itm3', "token": '20171029163219826664', "pid": project_id, "cid": c_id};
    $.ajax({url: "/WSG/my_buddy_project/get", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous83', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  invited_buddy_project = {};
  var html = "<tr>";
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      for (var i in json) 
        {
          invited_buddy_project[json[i].community_id + "_@_" + json[i].project_id] = 1;
          if (json[i].community_id != c_id) 
          {
            html = html + "<td>" + json[i].project_title + "</td>" + "<td>" + json[i].school + "</td>" + "<td>" + json[i].grade_level + "</td>" + "<td>" + json[i].curriculum + "</td>" + "<td>" + json[i].teachers + "</td>" + "<td>" + json[i].status + "</td>" + "<td><div onclick=\"disConnected('" + json[i].project_id + "','" + json[i].community_id + "')\" class='btn'>Disconnect</div></td>" + "</tr>";
          }
          if (json[i].project_id != project_id && json[i].community_id == c_id) 
          {
            html = html + "<td>" + json[i].project_title + "</td>" + "<td>" + json[i].school + "</td>" + "<td>" + json[i].grade_level + "</td>" + "<td>" + json[i].curriculum + "</td>" + "<td>" + json[i].teachers + "</td>" + "<td>" + json[i].status + "</td>" + "<td><div onclick=\"disConnected('" + json[i].project_id + "','" + json[i].community_id + "')\" class='btn'>Disconnect</div></td>" + "</tr>";
          }
        }
      $("#connected_buddy_projects").html(html);
    }
  }
  send(new Array('/crossprojectjsp.anonymous83', ':::EXIT86', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  send(new Array('/crossprojectjsp.initTable', ':::EXIT71', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
function disConnected(pid, cid) {
  send(new Array('/crossprojectjsp.disConnected', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var teacherJson = {"database": 'itm3', "token": '20171029163219826664', "fpid": pid, "fcid": cid, "tpid": project_id, "tcid": c_id};
  $.ajax({url: "/WSG/my_buddy_project/del", type: "POST", data: JSON.stringify(teacherJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous135', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $.notify('Disconnected', 'Success');
  initTable();
  send(new Array('/crossprojectjsp.anonymous135', ':::EXIT138', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  send(new Array('/crossprojectjsp.disConnected', ':::EXIT130', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}
$(document).ready(function() {
  send(new Array('/crossprojectjsp.anonymous148', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log('localdb:<%=session.getAttribute("localdb")%>');
  console.log('token:<%=session.getAttribute("token")%>');
  console.log('community:<%=session.getAttribute("community")%>');
  console.log('c_id:<%=session.getAttribute("community_id")%>');
  console.log('type:<%=session.getAttribute("role")%>');
  console.log('urname:<%=session.getAttribute("username")%>');
  console.log('id:<%=session.getAttribute("id")%>');
  console.log('itmdb:<%=session.getAttribute("ITMDatabase")%>');
  console.log('domain:<%=session.getAttribute("domain")%>');
  console.log('token:<%=session.getAttribute("token")%>');
  console.log('school:<%=session.getAttribute("school")%>');
  console.log('country:<%=session.getAttribute("country")%>');
  console.log('city:<%=session.getAttribute("city")%>');
  if (project_id != "") 
  {
    var json = JSON.parse(localStorage.projects);
    project = json[project_id];
    if (project != "") 
    {
      $("#page_title").html(project.title + "'s Cross-project connections");
    }
  }
  $(".button-collapse").sideNav();
  $("#show_slide").click(function() {
  send(new Array('/crossprojectjsp.anonymous175', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('.button-collapse').sideNav('show');
  send(new Array('/crossprojectjsp.anonymous175', ':::EXIT176', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $('.collection').delegate('a', 'click', function() {
  send(new Array('/crossprojectjsp.anonymous179', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  window.location.href = "../thread/open.html";
  send(new Array('/crossprojectjsp.anonymous179', ':::EXIT180', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $('.modal').modal({dismissible: false});
  Materialize.updateTextFields();
  function init() {
    send(new Array('/crossprojectjsp.init', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var json = {"database": 'itm3', "token": '20171029163219826664'};
    $.ajax({url: "/WSG/all_buddy_project/get/all", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous199', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      for (var i in json) 
        {
          if (json[i].project_id == project_id && json[i].community_id == c_id) 
          {
            $("#ck-buddy-project").prop('checked', true);
            buddy_project_id = json[i].id;
          }
        }
    }
  }
  send(new Array('/crossprojectjsp.anonymous199', ':::EXIT200', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    initTable();
    send(new Array('/crossprojectjsp.init', ':::EXIT213', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  init();
  $("#add-buddy-project").click(function() {
  send(new Array('/crossprojectjsp.anonymous220', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (!$("#ck-buddy-project").is(':checked')) 
  {
    $.notify('Please check the checkbox to mark the project is buddy-project', 'warn');
  } else {
    $("#all_buddy_project_list").empty().html("");
    var json = {"database": 'itm3', "token": '20171029163219826664'};
    $.ajax({url: "/WSG/all_buddy_project/get/all", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous240', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      var html = '<table class="highlight"> <thead><tr>' + ' <th  >CheckBox</th>' + '<th  >Project Name</th>' + '<th  >GradeLevel</th>' + '<th  >Curriculum Area</th>' + '<th  >Teacher</th>' + '<th  >School</th>' + '</tr></thead>';
      for (var i in json) 
        {
          if (!(json[i].community_id + "_@_" + json[i].project_id in invited_buddy_project)) 
          {
            if (json[i].project_id != project_id || json[i].community_id != c_id) 
            {
              html = html + '<tr >' + '<td  ><input type="checkbox" id="p_' + json[i].id + '" data-id="' + json[i].project_id + '" data-cid="' + json[i].community_id + '" /><label for="p_' + json[i].id + '"></label></td>' + '<td  >' + json[i].project_title + '</td>' + '<td  >' + json[i].grade_level + '</td>' + '<td  >' + json[i].curriculum + '</td>' + '<td  >' + json[i].teachers + '</td>' + '<td  >' + json[i].school + '</td>' + '</tr>';
            } else {
              buddy_project_id = json[i].id;
            }
          }
        }
      html = html + '\t</table>' + '<div class="divider"></div>' + ' <div class="row"><input placeholder="Type a brief message to be sent out to the teachers of the selected projects:" class="validate" id="message" type="text" ><label for="message" ></label><div onclick="SendMessage();"id="btn-invite" class="btn">Invite</div>' + '&nbsp;&nbsp;&nbsp;<div onclick="closeModal();"  class="btn">Cancel</div></div> ';
      $("#all_buddy_project_list").html(html);
      $('#all_buddy_project_list').modal('open');
    } else {
      $("#all_buddy_project_list").empty().html("No data");
    }
  }
  send(new Array('/crossprojectjsp.anonymous240', ':::EXIT241', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  send(new Array('/crossprojectjsp.anonymous220', ':::EXIT223', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  function updateBuddyProject(flag) {
    send(new Array('/crossprojectjsp.updateBuddyProject', ':::ENTER', new Array(addVariable('authorsInfo', authorsInfo), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('curriculumInfo', curriculumInfo), addVariable('domain', domain), addVariable('flag', flag), addVariable('gradeInfo', gradeInfo), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    if (flag) 
    {
      var authorsInfo = "";
      if (project.authors) 
      {
        for (var j in project.authors) 
          {
            authorsInfo = authorsInfo + project.authors[j].first_name + "&nbsp;" + project.authors[j].last_name + ",";
          }
      }
      var gradeInfo = "";
      if (project.grade) 
      {
        for (var j in project.grade) 
          {
            gradeInfo = gradeInfo + project.grade[j].title + "  ";
          }
      }
      var curriculumInfo = "";
      if (project.curriculum) 
      {
        for (var j in project.curriculum) 
          {
            curriculumInfo = curriculumInfo + project.curriculum[j].name + " ";
          }
      }
      var projectJson = {"database": 'itm3', "token": '20171029163219826664', "projectid": project_id, "community_id": c_id, "community": '<%=session.getAttribute("community")%>', "title": project.title.replace(/"/g, "\\\"").replace(/'/g, "\\'"), "localdb": localdb, "school": school, "city": city, "country": country, "goal": project.goal.replace(/"/g, "\\\"").replace(/'/g, "\\'"), "gradelevel": gradeInfo, "area": curriculumInfo.replace(/"/g, "\\\"").replace(/'/g, "\\'"), "teachers": authorsInfo, "logo": project.logo};
      $.ajax({url: "/WSG/all_buddy_project/add", type: "POST", data: JSON.stringify(projectJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous346', ':::ENTER', new Array(addVariable('authorsInfo', authorsInfo), addVariable('buddy_projectJson', buddy_projectJson), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('curriculumInfo', curriculumInfo), addVariable('data', data), addVariable('domain', domain), addVariable('flag', flag), addVariable('gradeInfo', gradeInfo), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(1);
  if (data.code == "success") 
  {
    buddy_project_id = data.obj[0]["GENERATED_KEY"];
    if (buddy_project_id != "") 
    {
      if (project.authors) 
      {
        for (var j in project.authors) 
          {
          }
        var buddy_projectJson = {"database": 'itm3', "token": '20171029163219826664', "pid": project_id, "community_id": c_id, "all_buddy_project_id": buddy_project_id, "buddy_project_id": buddy_project_id};
      }
      $.notify('Project has been marked as buddy project ', 'success');
    } else {
      $.notify('Mark as buddy project fails', 'warn');
    }
  } else {
    $.notify('Mark as buddy project fails', 'warn');
  }
  send(new Array('/crossprojectjsp.anonymous346', ':::EXIT348', new Array(addVariable('authorsInfo', authorsInfo), addVariable('buddy_projectJson', buddy_projectJson), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('curriculumInfo', curriculumInfo), addVariable('data', data), addVariable('domain', domain), addVariable('flag', flag), addVariable('gradeInfo', gradeInfo), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    } else {
      var teacherJson = {"database": 'itm3', "token": '20171029163219826664', "pid": project_id};
      $.ajax({url: "/WSG/all_buddy_project/del", type: "POST", data: JSON.stringify(teacherJson), dataType: "json"});
      $.ajax({url: "/WSG/all_buddy_project_teacher/del", type: "POST", data: JSON.stringify(teacherJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/crossprojectjsp.anonymous398', ':::ENTER', new Array(addVariable('authorsInfo', authorsInfo), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('curriculumInfo', curriculumInfo), addVariable('data', data), addVariable('domain', domain), addVariable('flag', flag), addVariable('gradeInfo', gradeInfo), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $.notify('Project has been unmarked as buddy project ', 'success');
  send(new Array('/crossprojectjsp.anonymous398', ':::EXIT399', new Array(addVariable('authorsInfo', authorsInfo), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('curriculumInfo', curriculumInfo), addVariable('data', data), addVariable('domain', domain), addVariable('flag', flag), addVariable('gradeInfo', gradeInfo), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    }
    send(new Array('/crossprojectjsp.updateBuddyProject', ':::EXIT301', new Array(addVariable('authorsInfo', authorsInfo), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('curriculumInfo', curriculumInfo), addVariable('domain', domain), addVariable('flag', flag), addVariable('gradeInfo', gradeInfo), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('school', school), addVariable('teacherJson', teacherJson), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  $("#ck-buddy-project").click(function() {
  send(new Array('/crossprojectjsp.anonymous406', ':::ENTER', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(1);
  if ($("#ck-buddy-project").is(':checked')) 
  {
    updateBuddyProject(true);
  } else {
    updateBuddyProject(false);
  }
  send(new Array('/crossprojectjsp.anonymous406', ':::EXIT408', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/crossprojectjsp.anonymous148', ':::EXIT406', new Array(addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('domain', domain), addVariable('id', id), addVariable('invited_buddy_project', invited_buddy_project), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
console.log(' <%=session.getAttribute("projectid")%>');
$(".side-nav").find(".blue-grey").removeClass('blue-grey');
$(".side-nav").find(".active").removeClass('active');
$(".side-nav").find(".show").removeClass('show');
$(".in-teacher-space").addClass("active blue-grey lighten-2 ");
$(".in-teacher-space-body").addClass("show");
$(".in-teacher").addClass("active");
sessionTimeOut('<%=session.getAttribute("SessionTimeOut")%>');
</script>  
 </body>
</html>