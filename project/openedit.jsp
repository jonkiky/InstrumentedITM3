<!--
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../validation.jsp"%>
--><!doctype html>
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../css/customerize.css"> 
  <link type="text/css" rel="stylesheet" href="../css/font-awesome-4.7.0/css/font-awesome.css"> 
  <link type="text/css" rel="stylesheet" href="../css/jquery-ui.css" media="screen,projection"> 
  <!--Let browser know website is optimized for mobile--> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <script src="../js/jquery-3.1.0.js"></script> 
  <script src="../js/jquery-ui.js"></script> 
  <script src="../js/jquery.sessionTimeout.js"></script> 
  <script src="../js/itm.js"></script> 
 </head> 
 <body> 
  <header> 
   <nav class="  blue-grey"> 
    <!--
			<%@ include file="../header_without_nav_bar.jsp"%>
			--> 
   </nav> 
  </header> 
  <main> 
   <div class="container" style="padding-top: 10px;"> 
    <div class="row"> 
     <div class="col s12"> 
      <ul class="tabs"> 
       <li class="tab col s4"><a class="active" href="#test1">Open My Projects</a></li> 
       <li class="tab col s4"><a href="#test2">Browse other Projects</a></li> 
       <li class="col s3" id="btn-new-project"><a href="teacherspace/setup.jsp" class="btn col s10 offset-s2">New project</a></li> 
      </ul> 
     </div> 
     <div id="test1" class="col s12"> 
      <div class="row"> 
       <div class="col s12"> 
        <div class="row"> 
         <div class="col s12" id="project-card"></div> 
        </div> 
       </div> 
      </div> 
     </div> 
     <div id="test2" class="col s12"> 
      <div class="row"> 
       <div class="col s12"> 
        <div class="row"> 
         <div class="col s12" id="project-card-explore"></div> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div> 
  </main> 
  <div id="email-modal" class="modal"> 
   <input type="hidden" id="email-join-project-id"> 
   <div class="modal-content" id="communities"> 
    <b> Request to join project :<span id="email-join-project-name"></span> </b> 
    <div class="row"> 
     <div class="col s12"> 
      <input type="text" id="email-address" placeholder="type your email here"> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="col s12"> 
      <textarea id="email-message" rows="8" cols="60" placeholder="Brief talk about your reason to join this project"></textarea> 
     </div> 
    </div> 
   </div> 
   <div class="modal-footer"> 
    <a href="#!" id="join-project-email-sent" class="modal-action modal-close waves-effect waves-green btn-flat ">Send</a> 
    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Close</a> 
   </div> 
  </div> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../js/notify.js"></script> 
  <script src="../js/itm_local_storage.js"></script> 
  <script src="../js/itm.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /openeditjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
console.log('projectid:<%=session.getAttribute("projectid")%>');
var localdb = getUrlParameter("localdb");
var community_id = getUrlParameter("community_id");
var project_id = getUrlParameter("projectid");
var super_token = '<%=session.getAttribute("super_token")%>';
var token = isCrossProject ? '<%=session.getAttribute("super_token")%>' : '<%=session.getAttribute("token")%>';
var id = '<%=session.getAttribute("id")%>';
var path = location.href;
var isCrossProject = community_id != '<%=session.getAttribute("community_id")%>' ? true : false;
if (localdb == null || community_id == null) 
{
  location.replace("../err.jsp?message='Invlidate URL,db or community id = null'");
}
var menu_projects = '/ITM3/project/openedit.jsp?community_id="+community_id+"&localdb="+localdb+"';
$(".menu_projects a").attr("href", menu_projects);
var create_projects = '/ITM3/project/teacherspace/setup.jsp?community_id="+community_id+"&localdb="+localdb+"';
$("#btn-new-project a").attr("href", menu_projects);
function get_community_info() {
  send(new Array('/openeditjsp.get_community_info', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token), addVariable('userdata', userdata))));
  if (null != getUrlParameter("community_id")) 
  {
    var userdata = {"database": "itm3", "token": token, "cid": getUrlParameter("community_id")};
    $.ajax({url: "/WSG/community/byid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/openeditjsp.anonymous52', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    community_id = getUrlParameter("community_id");
    localdb = json[0].localdb;
    community_name = json[0].community_name;
    $("#page_title").html("<a href='../dashboard.jsp'>" + community_name + "</a> >&nbsp;Project");
  } else {
    console.log("do not find this community");
  }
  get_project_info();
  send(new Array('/openeditjsp.anonymous52', ':::EXIT64', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/openeditjsp.anonymous66', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('userdata', userdata))));
  setTimeout(function() {
  send(new Array('/openeditjsp.anonymous67', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('userdata', userdata))));
  Materialize.toast('Invalid URL', 4000);
  window.history.back();
  send(new Array('/openeditjsp.anonymous67', ':::EXIT69', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('userdata', userdata))));
}, 3000);
  send(new Array('/openeditjsp.anonymous66', ':::EXIT67', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('userdata', userdata))));
}});
  } else {
    setTimeout(function() {
  send(new Array('/openeditjsp.anonymous74', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token), addVariable('userdata', userdata))));
  Materialize.toast('Invalid URL', 4000);
  window.history.back();
  send(new Array('/openeditjsp.anonymous74', ':::EXIT76', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token), addVariable('userdata', userdata))));
}, 3000);
  }
  send(new Array('/openeditjsp.get_community_info', ':::EXIT41', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token), addVariable('userdata', userdata))));
}
$(".button-collapse").sideNav();
$(".in-community").hide();
$("#show_slide").click(function() {
  send(new Array('/openeditjsp.anonymous85', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
  $('.button-collapse').sideNav('show');
  send(new Array('/openeditjsp.anonymous85', ':::EXIT86', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
});
$(".modal").modal({dismissible: false});
$("#btn-new-project").click(function() {
  send(new Array('/openeditjsp.anonymous92', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
  window.location.href = "teacherspace/setup.jsp";
  send(new Array('/openeditjsp.anonymous92', ':::EXIT93', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
});
init(localdb, token, id);
function initPage() {
  send(new Array('/openeditjsp.initPage', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('teachers', teachers), addVariable('token', token), addVariable('tr', tr))));
  var json = JSON.parse(localStorage.projects);
  for (var i = 0; i < json.length; i++) 
    {
      if (null != json[i]) 
      {
        if (json[i].isMyProject || json[i].isMember) 
        {
          var tr = $('<div class="card horizontal" id="' + json[i].id + '"/>');
          if (json[i].logo == "@logo" || "" == json[i].logo) 
          {
            json[i].logo = "/res/empty.jpg";
          }
          var html = '<div class="card-image"><img style="height:220px; width:200px" src="' + json[i].logo + '"></div><div class="card-stacked"><div class="card-stacked"><div class="card-content"><h5>' + json[i].title + '</h5><p>Project goal: ' + json[i].goal + '</p><p>Curriculum area: ';
          if (json[i].curriculum) 
          {
            for (var j in json[i].curriculum) 
              {
                html = html + json[i].curriculum[j].name + "&nbsp;";
              }
          }
          html = html + '</p><p>Teacher(s): ';
          if (json[i].authors) 
          {
            var teachers = "";
            for (var j in json[i].authors) 
              {
                if (json[i].authors[j].role == "teacher") 
                {
                  teachers = teachers + json[i].authors[j].first_name + "&nbsp;" + json[i].authors[j].last_name + ", ";
                }
              }
            html = html + teachers.substring(0, teachers.length - 2);
          }
          html = html + '</p><p>Grade :';
          if (json[i].grade) 
          {
            for (var j in json[i].grade) 
              {
                html = html + json[i].grade[j].title + "&nbsp;";
              }
          }
          if (json[i].isMyProject) 
          {
            html = html + '</p><br><br><a href="javascript:enter(' + json[i].id + ',' + json[i].role + ',\'' + localdb + '\')" class="btn ">Enter</a>&nbsp;&nbsp;';
            html = html + '<a href="teacherspace/modify.jsp?community_id=' + community_id + '&localdb=' + localdb + '&project_id=' + json[i].id + '" class="btn ">Edit</a>';
          } else {
            html = html + '</p><br><br><a href="javascript:enter(' + json[i].id + ',' + json[i].member_role + ',\'' + localdb + '\')" class="btn ">Enter</a>&nbsp;&nbsp;';
          }
          html = html + '</div></div></div>';
          tr.append(html);
          $('#project-card').append(tr);
        } else {
          var tr = $('<div class="card horizontal" id="' + json[i].id + '"/>');
          if (json[i].logo == "@logo" || "" == json[i].logo) 
          {
            json[i].logo = "/res/empty.jpg";
          }
          var html = '<div class="card-image"><img style="height:220px; width:200px" src="' + json[i].logo + '"></div><div class="card-stacked"><div class="card-stacked"><div class="card-content"><h5>' + json[i].title + '</h5><p>Project goal: ' + json[i].goal + '</p><p>Curriculum area: ';
          if (json[i].curriculum) 
          {
            for (var j in json[i].curriculum) 
              {
                html = html + json[i].curriculum[j].name + "&nbsp;";
              }
          }
          html = html + '</p><p>Teacher(s): ';
          if (json[i].authors) 
          {
            for (var j in json[i].authors) 
              {
                html = html + json[i].authors[j].first_name + "&nbsp;" + json[i].authors[j].last_name + "&nbsp; ,";
              }
          }
          html = html + '</p><p>Grade :';
          if (json[i].grade) 
          {
            for (var j in json[i].grade) 
              {
                html = html + json[i].grade[j].title + "&nbsp;";
              }
          }
          html = html + '</p><br><br><input placeholder="AccessCode" id="' + json[i].id + '_access_code" type="text"> ' + '<a href="javascript:joinWithCode(' + json[i].id + ');" class="btn ">Join With Code</a>' + '&nbsp;&nbsp;<a href="javascript:showJointProjectModal(' + json[i].id + ');" class="btn ">Request To Join</a>&nbsp;&nbsp;';
          html = html + '</div></div></div>';
          tr.append(html);
          $('#project-card-explore').append(tr);
        }
      }
    }
  send(new Array('/openeditjsp.initPage', ':::EXIT106', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('teachers', teachers), addVariable('token', token), addVariable('tr', tr))));
}
function enter(ProjectId, role, localdb) {
  send(new Array('/openeditjsp.enter', ':::ENTER', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('role', role), addVariable('super_token', super_token), addVariable('token', token))));
  $.ajax({url: '../SET_PROJECT_FOCUS', type: 'POST', data: {'projectid': ProjectId, 'projectrole': role}, success: function(response) {
  send(new Array('/openeditjsp.anonymous207', ':::ENTER', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('response', response), addVariable('role', role), addVariable('super_token', super_token), addVariable('token', token))));
  window.location.href = "ourspace/dashboard.jsp?localdb=" + localdb + "&community_id=" + community_id + "&project_id=" + ProjectId;
  send(new Array('/openeditjsp.anonymous207', ':::EXIT208', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('response', response), addVariable('role', role), addVariable('super_token', super_token), addVariable('token', token))));
}});
  send(new Array('/openeditjsp.enter', ':::EXIT203', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('role', role), addVariable('super_token', super_token), addVariable('token', token))));
}
function edit(ProjectId) {
  send(new Array('/openeditjsp.edit', ':::ENTER', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
  var projectJson = {"database": localdb, "token": token, "userId": id, "projectId": projectId, "projectName": "", "username": '<%=session.getAttribute("username")%>'};
  $.ajax({url: "/WSG/project/join/add", type: "POST", data: JSON.stringify(projectJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/openeditjsp.anonymous232', ':::ENTER', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token))));
  $.notify('Request to join project has been send .', 'success');
  send(new Array('/openeditjsp.anonymous232', ':::EXIT233', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token))));
}});
  send(new Array('/openeditjsp.edit', ':::EXIT227', new Array(addVariable('ProjectId', ProjectId), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
}
function joinWithCode(id) {
  send(new Array('/openeditjsp.joinWithCode', ':::ENTER', new Array(addVariable('accessCode', accessCode), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('joinWithCodeData', joinWithCodeData), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('role', role), addVariable('super_token', super_token), addVariable('token', token), addVariable('type', type))));
  var accessCode = $("#" + id + "_access_code").val();
  if (null == accessCode || "" == accessCode) 
  {
    $.notify('Please enter access code.', 'warn');
  } else {
    var json = JSON.parse(localStorage.projects);
    var type = -1;
    var role = "";
    switch (accessCode) {
      case json[id].access_code_manage:
        type = 3;
        role = "teacher";
        break;
      case json[id].access_code_read_only:
        type = 0;
        role = "vistor";
        break;
      case json[id].access_code_read_write:
        type = 2;
        role = "student";
        break;
      default:
        $.notify('Access code is not accepted.', 'warn');
    }
    if (type != -1) 
    {
      var joinWithCodeData = {"database": localdb, "token": token, "projectid": project_id, "authorid": id, "usertype": type, "userrole": role};
      $.ajax({url: "/WSG/project/member/add/byauthor", type: "POST", data: JSON.stringify(joinWithCodeData), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/openeditjsp.anonymous284', ':::ENTER', new Array(addVariable('accessCode', accessCode), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('joinWithCodeData', joinWithCodeData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('role', role), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type))));
  send(new Array('/openeditjsp.anonymous284', ':::EXIT0', new Array(addVariable('accessCode', accessCode), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('joinWithCodeData', joinWithCodeData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('role', role), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type))));
}});
      location.reload();
    }
  }
  send(new Array('/openeditjsp.joinWithCode', ':::EXIT242', new Array(addVariable('accessCode', accessCode), addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('joinWithCodeData', joinWithCodeData), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('role', role), addVariable('super_token', super_token), addVariable('token', token), addVariable('type', type))));
}
function showJointProjectModal(projectId) {
  send(new Array('/openeditjsp.showJointProjectModal', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('email', email), addVariable('html', html), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
  var email = '<%=session.getAttribute("email")%>';
  $("#email-join-project-id").val(projectId);
  $("#email-join-project-name").html("Join a project");
  if (email != "" && null != email && 'null' != email) 
  {
    $("#email-address").val(email);
  }
  var html = "I am :<br> I would like to join  project <br>";
  $("#email-message").html();
  $("#email-modal").modal("open");
  send(new Array('/openeditjsp.showJointProjectModal', ':::EXIT315', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('email', email), addVariable('html', html), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
}
$("#join-project-email-sent").click(function() {
  send(new Array('/openeditjsp.anonymous319', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('eAddr', eAddr), addVariable('eMessage', eMessage), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('pName', pName), addVariable('path', path), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
  var pid = $("#email-join-project-id").val();
  var pName = $("#email-join-project-name").val();
  var eAddr = $("#email-address").val();
  var eMessage = $("#email-message").val();
  if (pid == "" || pName == "" || eAddr == "" || eMessage == "") 
  {
    $.notify('Please fill out the email address and message', 'warn');
  } else {
    joinProject(pid, pName, eAddr, eMessage);
  }
  send(new Array('/openeditjsp.anonymous319', ':::EXIT325', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('eAddr', eAddr), addVariable('eMessage', eMessage), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('pName', pName), addVariable('path', path), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('token', token))));
});
function sentEmail(teacher_email, text, user_email, project_name) {
  send(new Array('/openeditjsp.sentEmail', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('emailJson', emailJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('super_token', super_token), addVariable('teacher_email', teacher_email), addVariable('text', text), addVariable('token', token), addVariable('user_email', user_email))));
  var emailJson = {"email": teacher_email, "message": text + " from " + user_email, "title": "Request to join project  " + project_name};
  $.ajax({url: "/IIUSs/util/sendEmail", type: "POST", data: emailJson, success: function(data, textStatus, jqXHR) {
  send(new Array('/openeditjsp.anonymous345', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('emailJson', emailJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('super_token', super_token), addVariable('teacher_email', teacher_email), addVariable('text', text), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_email', user_email))));
  send(new Array('/openeditjsp.anonymous345', ':::EXIT0', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('emailJson', emailJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('super_token', super_token), addVariable('teacher_email', teacher_email), addVariable('text', text), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_email', user_email))));
}});
  send(new Array('/openeditjsp.sentEmail', ':::EXIT341', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('emailJson', emailJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('path', path), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('super_token', super_token), addVariable('teacher_email', teacher_email), addVariable('text', text), addVariable('token', token), addVariable('user_email', user_email))));
}
function joinProject(projectId, name, email, text) {
  send(new Array('/openeditjsp.joinProject', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('email', email), addVariable('getTeacherJson', getTeacherJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('name', name), addVariable('path', path), addVariable('projectId', projectId), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('text', text), addVariable('token', token))));
  var getTeacherJson = {"database": localdb, "token": token, "pid": projectId};
  $.ajax({url: "/WSG/project/teacher/get/byid", type: "POST", data: JSON.stringify(getTeacherJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/openeditjsp.anonymous367', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('email', email), addVariable('getTeacherJson', getTeacherJson), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('name', name), addVariable('path', path), addVariable('projectId', projectId), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('text', text), addVariable('textStatus', textStatus), addVariable('token', token))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      for (var i in json) 
        {
          if (json[i].email != "" || null != json[i].email) 
          {
            sentEmail(json[i].email, text, email, name);
          }
        }
    }
  }
  send(new Array('/openeditjsp.anonymous367', ':::EXIT369', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('email', email), addVariable('getTeacherJson', getTeacherJson), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('name', name), addVariable('path', path), addVariable('projectId', projectId), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('text', text), addVariable('textStatus', textStatus), addVariable('token', token))));
}});
  var projectJson = {"database": localdb, "token": token, "userId": id, "projectId": projectId, "projectName": "", "username": '<%=session.getAttribute("username")%>'};
  $.ajax({url: window.location.protocol + "//" + window.location.host + "/" + "WSG/project/join/add", type: "POST", data: JSON.stringify(projectJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/openeditjsp.anonymous405', ':::ENTER', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('email', email), addVariable('getTeacherJson', getTeacherJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('name', name), addVariable('path', path), addVariable('projectId', projectId), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('text', text), addVariable('textStatus', textStatus), addVariable('token', token))));
  $.notify('Request to join project has been send .', 'success');
  send(new Array('/openeditjsp.anonymous405', ':::EXIT406', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('data', data), addVariable('email', email), addVariable('getTeacherJson', getTeacherJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('name', name), addVariable('path', path), addVariable('projectId', projectId), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('text', text), addVariable('textStatus', textStatus), addVariable('token', token))));
}});
  send(new Array('/openeditjsp.joinProject', ':::EXIT399', new Array(addVariable('community_id', community_id), addVariable('create_projects', create_projects), addVariable('email', email), addVariable('getTeacherJson', getTeacherJson), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('localdb', localdb), addVariable('menu_projects', menu_projects), addVariable('name', name), addVariable('path', path), addVariable('projectId', projectId), addVariable('projectJson', projectJson), addVariable('project_id', project_id), addVariable('super_token', super_token), addVariable('text', text), addVariable('token', token))));
}
$(".side-nav").find(".blue-grey").removeClass('blue-grey');
$(".side-nav").find(".active").removeClass('active');
$(".side-nav").find(".show").removeClass('show');
$(".in-teacher-space").addClass("active blue-grey lighten-2 ");
$(".in-teacher-space-body").addClass("show");
$(".in-teacher").addClass("active");
sessionTimeOut(1);
</script>  
 </body>
</html>