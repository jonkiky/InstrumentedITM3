<!-- 	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../validation.jsp" %> --><!doctype html>
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
  <script type="text/javascript" src="../../js/materialize.min.js"></script> 
  <script src="../../js/itm.js"></script> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
  <style>
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
    <div class="row"></div> 
    <div>
     <b><font size="3">Proposals of new wondering areas</font></b> 
    </div> 
    <div class="row"> 
     <div class="col s12"> 
      <div style=" border: solid 5px; border-color: #78909c;"> 
       <table class="bordered highlight"> 
        <thead> 
         <tr> 
          <th>title</th> 
          <th>date</th> 
          <th>proposed by</th> 
          <th>overarching questions / why important</th> 
          <th>approval status</th> 
          <th>action</th> 
         </tr> 
        </thead> 
        <tbody id="wabox"></tbody> 
       </table> 
      </div> 
     </div> 
    </div> 
    <div> 
     <b><font size="3">Buddy Project Invitation</font></b> 
    </div> 
    <div class="row"> 
     <div class="col s12"> 
      <div style=" border: solid 5px; border-color: #78909c;"> 
       <div class="row"> 
        <div class="col s12"> 
         <ul class="tabs"> 
          <li class="tab col s6 blue-grey lighten-5"><a href="#test1" class="active blue-grey-text">Invitation</a></li> 
          <li class="tab col s6 blue-grey lighten-5"><a href="#test2" class="blue-grey-text">My Invitation</a></li> 
         </ul> 
        </div> 
        <div id="test2" class="col s12"> 
         <table class="striped"> 
          <thead> 
           <tr> 
            <th>Project Name</th> 
            <th>School</th> 
            <th>City</th> 
            <th>Country</th> 
            <th>Grade level</th> 
            <th>Curriculum area</th> 
            <th>Teacher</th> 
            <th>Message</th> 
            <th>Status</th> 
           </tr> 
          </thead> 
          <tbody id="connected_buddy_projects"></tbody> 
         </table> 
        </div> 
        <div id="test1" class="col s12"> 
         <table class="striped"> 
          <thead> 
           <tr> 
            <th>Project Name</th> 
            <th>School</th> 
            <th>City</th> 
            <th>Country</th> 
            <th>Grade level</th> 
            <th>Curriculum area</th> 
            <th>Teacher</th> 
            <th>Message</th> 
            <th>Status</th> 
            <th>Actions</th> 
           </tr> 
          </thead> 
          <tbody id="connected_buddy_projects2"></tbody> 
         </table> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
    <div>
     <b><font size="3">Proposals of Super Talk topics</font></b> 
    </div> 
    <div class="row"> 
     <div class="col s12"> 
      <div style=" border: solid 5px; border-color: #78909c;"> 
       <table class="striped"> 
        <thead> 
         <tr> 
          <th>title</th> 
          <th>date</th> 
          <th>proposed by</th> 
          <th>column for each Big Question proposal property</th> 
          <th>approval status</th> 
         </tr> 
        </thead> 
        <tbody id="super-talk-box"></tbody> 
       </table> 
      </div> 
     </div> 
    </div> 
   </div> 
  </main> 
  <div id="wondering_modal" class="modal"> 
   <input id="wondering_message_id" type="hidden"> 
   <div class="modal-content"> 
    <fieldset> 
     <legend>Wondering Area Message</legend> 
     <div id="wondering_area_message"></div> 
    </fieldset> 
    <p></p> 
    <textarea rows="10" cols="50" id="input_wondering_area" placeholder="type here.."></textarea> 
   </div> 
   <div class="modal-footer"> 
    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cancel</a> 
    <a id="btn_wondering_area_message" class=" modal-action  waves-effect waves-green btn-flat">Sent</a> 
   </div> 
  </div> 
  <div id="super_talk_modal" class="modal"> 
   <input id="super_talk_id" type="hidden"> 
   <div class="modal-content"> 
    <fieldset> 
     <legend>Super Talk Message</legend> 
     <div id="super_talk_message"></div> 
    </fieldset> 
    <p></p> 
    <textarea rows="10" cols="50" id="input_super_talk" placeholder="type here.."></textarea> 
   </div> 
   <div class="modal-footer"> 
    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cancel</a> 
    <a href="#!" id="btn_super_talk_message" class=" modal-action  waves-effect waves-green btn-flat">Sent</a> 
   </div> 
  </div> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../../js/notify.js"></script> 
  <script src="../../js/itm.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /proposaljsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var localdb = getUrlParameter("localdb");
$(".modal").modal();
$(document).ready(function() {
  send(new Array('/proposaljsp.anonymous5', ':::ENTER', new Array(addVariable('localdb', localdb))));
  $('ul.tabs').tabs();
  $("#btn_wondering_area_message").click(function() {
  send(new Array('/proposaljsp.anonymous8', ':::ENTER', new Array(addVariable('localdb', localdb), addVariable('passJson', passJson))));
  var passJson = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "areaid": $("#wondering_message_id").val(), "areaMessage": $("#input_wondering_area").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "authorId": '<%=session.getAttribute("id")%>', "fname": $('<%=session.getAttribute("fname")%>').replace(/'/g, "\\'").replace(/"/g, "\\\""), "lname": $('<%=session.getAttribute("lname")%>').replace(/'/g, "\\'").replace(/"/g, "\\\""), "createtime": new Date()};
  $.ajax({url: "/WSG/wondering_area/message/add", type: "POST", data: JSON.stringify(passJson), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous25', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('passJson', passJson), addVariable('textStatus', textStatus))));
  Materialize.toast('Message has been sented', 4000);
  $("#wondering_modal").modal("close");
  send(new Array('/proposaljsp.anonymous25', ':::EXIT27', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('passJson', passJson), addVariable('textStatus', textStatus))));
}});
  send(new Array('/proposaljsp.anonymous8', ':::EXIT20', new Array(addVariable('localdb', localdb), addVariable('passJson', passJson))));
});
  $("#btn_super_talk_message").click(function() {
  send(new Array('/proposaljsp.anonymous33', ':::ENTER', new Array(addVariable('localdb', localdb), addVariable('passData', passData))));
  var passData = {"database": "itm3", "token": '<%=session.getAttribute("token")%>', "sid": $("#super_talk_id").val(), "authorid": '<%=session.getAttribute("id")%>', "communityid": '<%=session.getAttribute("community_id")%>', "createtime": new Date(), "supertalkMessage": $("#input_super_talk").val().replace(/'/g, "\\'").replace(/"/g, "\\\""), "fname": $('<%=session.getAttribute("fname")%>').replace(/'/g, "\\'").replace(/"/g, "\\\""), "lname": $('<%=session.getAttribute("lname")%>').replace(/'/g, "\\'").replace(/"/g, "\\\""), "uname": $('<%=session.getAttribute("username")%>').replace(/'/g, "\\'").replace(/"/g, "\\\""), "localdb": '<%=session.getAttribute("localdb")%>'};
  $.ajax({url: "/WSG/supertalk/message/add", type: "POST", data: JSON.stringify(passData), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous55', ':::ENTER', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('passData', passData), addVariable('textStatus', textStatus))));
  Materialize.toast('Message has been sented', 4000);
  $("#super_talk_modal").modal("close");
  send(new Array('/proposaljsp.anonymous55', ':::EXIT57', new Array(addVariable('data', data), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('passData', passData), addVariable('textStatus', textStatus))));
}});
  send(new Array('/proposaljsp.anonymous33', ':::EXIT49', new Array(addVariable('localdb', localdb), addVariable('passData', passData))));
});
  send(new Array('/proposaljsp.anonymous5', ':::EXIT33', new Array(addVariable('localdb', localdb))));
});
function supertalk_SentMessage(id) {
  send(new Array('/proposaljsp.supertalk_SentMessage', ':::ENTER', new Array(addVariable('id', id), addVariable('localdb', localdb), addVariable('passData', passData))));
  $("#super_talk_id").val(id);
  var passData = {"database": 'itm3', "token": '<%=session.getAttribute("token")%>', "sid": id};
  $.ajax({url: "/WSG/supertalk/message/get", type: "POST", data: JSON.stringify(passData), dataType: "json", success: function(data) {
  send(new Array('/proposaljsp.anonymous81', ':::ENTER', new Array(addVariable('c', c), addVariable('data', data), addVariable('id', id), addVariable('json', json), addVariable('localdb', localdb), addVariable('passData', passData))));
  $("#super_talk_message").empty().html("");
  if (null != data.obj) 
  {
    if (null != data.obj[0]) 
    {
      var json = $.parseJSON(data.obj);
      if (json != null) 
      {
        for (var c in json) 
          {
            $("#super_talk_message").append("<b>" + json[c].f_name + "  " + json[c].l_name + ":</b> <br>" + json[c].message + "<br>");
          }
      }
    }
  }
  $("#super_talk_modal").modal("open");
  send(new Array('/proposaljsp.anonymous81', ':::EXIT94', new Array(addVariable('c', c), addVariable('data', data), addVariable('id', id), addVariable('json', json), addVariable('localdb', localdb), addVariable('passData', passData))));
}});
  send(new Array('/proposaljsp.supertalk_SentMessage', ':::EXIT76', new Array(addVariable('id', id), addVariable('localdb', localdb), addVariable('passData', passData))));
}
function invitationAccept(id, from_project, from_project_name) {
  send(new Array('/proposaljsp.invitationAccept', ':::ENTER', new Array(addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('json', json), addVariable('localdb', localdb))));
  var json = {"database": "itm3", "token": '<%=session.getAttribute("token")%>', "superid": id, "superstatus": 'accepted'};
  $.ajax({url: "/WSG/project_buddy_project/status/update", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous116', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  var json = {"database": localdb, "token": '<%=session.getAttribute("token")%>'};
  $.ajax({url: "/WSG/wondering_area/count", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous128', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  if (data.code == "success") 
  {
    var json = $.parseJSON(data.obj);
    console.log("invites fo from ", json);
    const result = json.filter(function(item) {
  send(new Array('/proposaljsp.anonymous132', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  send(new Array('/proposaljsp.anonymous132', ':::EXIT133', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  return item.project_id == from_project;
});
    console.log(result);
    if (result.length == 0) 
    {
      console.log("Creating New Area");
      wfdata = {"database": localdb, "token": '<%=session.getAttribute("token")%>', "wname": "Cross-Classroom Shared Area", "logo": "@logo", "keywords": "", "wstatus": "accepted", "overarchingquestions": "", "whyimportant": "", "authorid": '<%=session.getAttribute("id")%>', "wcreatetime": new Date(), "message": "", "project_id": 0};
      $.ajax({url: "/WSG/wondering_area/add", type: "POST", data: JSON.stringify(wfdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous160', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var wid = data.obj[0]["GENERATED_KEY"];
      console.log("GENERATED_KEY", wid);
      var json = {"database": localdb, "token": '<%=session.getAttribute("token")%>', "areaid": parseInt(wid)};
      json['pid'] = from_project;
      $.ajax({url: "/WSG/project/wondering/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous178', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
  console.log("Added to " + from_project);
  send(new Array('/proposaljsp.anonymous178', ':::EXIT179', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
}});
      project_id = '<%=session.getAttribute("projectid")%>';
      json['pid'] = project_id;
      $.ajax({url: "/WSG/project/wondering/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous191', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
  console.log("Added to " + project_id);
  send(new Array('/proposaljsp.anonymous191', ':::EXIT192', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
}});
    }
  }
  send(new Array('/proposaljsp.anonymous160', ':::EXIT161', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
}});
    } else {
      result.forEach(function(item) {
  send(new Array('/proposaljsp.anonymous204', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  var json = {"database": localdb, "token": '<%=session.getAttribute("token")%>', "areaid": parseInt(item.area_id)};
  project_id = '<%=session.getAttribute("projectid")%>';
  json['pid'] = project_id;
  $.ajax({url: "/WSG/project/wondering/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous217', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  console.log("Added to " + project_id);
  send(new Array('/proposaljsp.anonymous217', ':::EXIT218', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
}});
  send(new Array('/proposaljsp.anonymous204', ':::EXIT212', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
});
    }
  } else {
    console.log("Creating New Area");
    wfdata = {"database": localdb, "token": '<%=session.getAttribute("token")%>', "wname": from_project_name + "'s Shared Area", "logo": "@logo", "keywords": "", "wstatus": "accepted", "overarchingquestions": "", "whyimportant": "", "authorid": '<%=session.getAttribute("id")%>', "wcreatetime": new Date(), "message": "", "project_id": 0};
    $.ajax({url: "/WSG/wondering_area/add", type: "POST", data: JSON.stringify(wfdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous247', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var wid = data.obj[0]["GENERATED_KEY"];
      console.log("GENERATED_KEY", wid);
      var json = {"database": localdb, "token": '<%=session.getAttribute("token")%>', "areaid": parseInt(wid)};
      json['pid'] = from_project;
      $.ajax({url: "/WSG/project/wondering/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous265', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
  console.log("Added to " + from_project);
  send(new Array('/proposaljsp.anonymous265', ':::EXIT266', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
}});
      project_id = '<%=session.getAttribute("projectid")%>';
      json['pid'] = project_id;
      $.ajax({url: "/WSG/project/wondering/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous278', ':::ENTER', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
  console.log("Added to " + project_id);
  send(new Array('/proposaljsp.anonymous278', ':::EXIT279', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
}});
    }
  }
  send(new Array('/proposaljsp.anonymous247', ':::EXIT248', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('wid', wid))));
}});
  }
  send(new Array('/proposaljsp.anonymous128', ':::EXIT129', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
}});
  initInvitation();
  send(new Array('/proposaljsp.anonymous116', ':::EXIT292', new Array(addVariable('data', data), addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
}});
  send(new Array('/proposaljsp.invitationAccept', ':::EXIT111', new Array(addVariable('from_project', from_project), addVariable('from_project_name', from_project_name), addVariable('id', id), addVariable('json', json), addVariable('localdb', localdb))));
}
function invitationDecline(id) {
  send(new Array('/proposaljsp.invitationDecline', ':::ENTER', new Array(addVariable('id', id), addVariable('json', json), addVariable('localdb', localdb))));
  var json = {"database": "itm3", "token": '<%=session.getAttribute("token")%>', "superid": id, "superstatus": 'decline'};
  $.ajax({url: "/WSG/project_buddy_project/status/update", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous311', ':::ENTER', new Array(addVariable('data', data), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
  initInvitation();
  send(new Array('/proposaljsp.anonymous311', ':::EXIT312', new Array(addVariable('data', data), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus))));
}});
  send(new Array('/proposaljsp.invitationDecline', ':::EXIT306', new Array(addVariable('id', id), addVariable('json', json), addVariable('localdb', localdb))));
}
function initInvitation() {
  send(new Array('/proposaljsp.initInvitation', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('json', json), addVariable('localdb', localdb), addVariable('project_id', project_id))));
  $("#connected_buddy_projects").html("");
  var c_id = '<%=session.getAttribute("community_id")%>';
  var project_id = '<%=session.getAttribute("projectid")%>';
  $("#connected_buddy_projects").empty().html("");
  $("#connected_buddy_projects2").empty().html("");
  if (c_id != "" && project_id != "") 
  {
    var json = {"database": "itm3", "token": '<%=session.getAttribute("token")%>', "pid": '<%=session.getAttribute("projectid")%>', "cid": '<%=session.getAttribute("community_id")%>'};
    $.ajax({url: "/WSG/my_buddy_project/invitation/get", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous335', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('textStatus', textStatus))));
  if (data.code == "success") 
  {
    var html = "";
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      console.log("buddy_project/invitation", json);
      for (var i in json) 
        {
          if (json[i].project_id != project_id || json[i].community != c_id) 
          {
            html = html + "<tr><td>" + json[i].project_title + "</td>" + "<td>" + json[i].school + "</td>" + "<td>" + json[i].city + "</td>" + "<td>" + json[i].country + "</td>" + "<td>" + json[i].grade_level + "</td>" + "<td>" + json[i].curriculum + "</td>" + "<td>" + json[i].teachers + "</td>" + "<td>" + json[i].message + "</td>" + "<td>" + json[i].status + "</td>" + "</tr>";
          }
        }
      $("#connected_buddy_projects").append(html);
    }
  }
  send(new Array('/proposaljsp.anonymous335', ':::EXIT336', new Array(addVariable('c_id', c_id), addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('textStatus', textStatus))));
}});
    $.ajax({url: "/WSG/buddy_project/invitation", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous365', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('textStatus', textStatus))));
  var html = "";
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      console.log("invites", json);
      for (var i in json) 
        {
          if (json[i].project_id != project_id || json[i].community != c_id) 
          {
            html = html + "<tr><td>" + json[i].project_title + "</td>" + "<td>" + json[i].school + "</td>" + "<td>" + json[i].city + "</td>" + "<td>" + json[i].country + "</td>" + "<td>" + json[i].grade_level + "</td>" + "<td>" + json[i].curriculum + "</td>" + "<td>" + json[i].teachers + "</td>" + "<td>" + json[i].message + "</td>" + "<td>" + json[i].status + "</td>";
            if (json[i].status.toLowerCase() == "pending") 
            {
              html = html + "<td><div onclick=\"invitationAccept('" + json[i].id + "','" + json[i].project_id + "','" + json[i].project_title + "')\" class='btn'>Accept</div>" + "&nbsp;&nbsp;<div onclick=\"invitationDecline('" + json[i].id + "')\" class='btn'>Dcline</div></td>" + "</tr>";
            }
            if (json[i].status.toLowerCase() == "accepted") 
            {
              html = html + "<td>" + "&nbsp;&nbsp;<div onclick=\"invitationDecline('" + json[i].id + "')\" class='btn'>Dcline</div></td>" + "</td></tr>";
            }
            if (json[i].status.toLowerCase() == "decline") 
            {
              html = html + "<td><div onclick=\"invitationAccept('" + json[i].id + "','" + json[i].project_id + "','" + json[i].project_title + "')\" class='btn'>Accept</div>" + "&nbsp;&nbsp;</td>" + "</tr>";
              html = html + "<td></td></tr>";
            }
          }
        }
      $("#connected_buddy_projects2").append(html);
    }
  }
  send(new Array('/proposaljsp.anonymous365', ':::EXIT367', new Array(addVariable('c_id', c_id), addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('textStatus', textStatus))));
}});
  }
  send(new Array('/proposaljsp.initInvitation', ':::EXIT323', new Array(addVariable('c_id', c_id), addVariable('json', json), addVariable('localdb', localdb), addVariable('project_id', project_id))));
}
$(document).ready(function() {
  send(new Array('/proposaljsp.anonymous411', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
  var project;
  if ("" != '<%=session.getAttribute("projectid")%>') 
  {
    var project_id = '<%=session.getAttribute("projectid")%>';
    var json = JSON.parse(localStorage.projects);
    project = json[project_id];
  }
  $("#page_title").html(project.title + "'s  Message Center");
  $(".button-collapse").sideNav();
  $("#show_slide").click(function() {
  send(new Array('/proposaljsp.anonymous421', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
  $('.button-collapse').sideNav('show');
  send(new Array('/proposaljsp.anonymous421', ':::EXIT422', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
});
  $(document).delegate('.accept', 'click', function acceptWA() {
  send(new Array('/proposaljsp.acceptWA', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
  console.log($(this)[0].id.replace("wa_accept", ""));
  var wadata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "wstatus": "accepted", "wid": $(this)[0].id.replace("wa_accept", "")};
  $.ajax({url: "/WSG/wondering_area/status/update", type: "POST", data: JSON.stringify(wadata), dataType: "json", success: function() {
  send(new Array('/proposaljsp.anonymous453', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
  $('#wabox').empty().html("");
  initWonderingArea();
  send(new Array('/proposaljsp.anonymous453', ':::EXIT455', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/proposaljsp.anonymous458', ':::ENTER', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('wadata', wadata))));
  console.log(jqXHR.responseText);
  send(new Array('/proposaljsp.anonymous458', ':::EXIT463', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('wadata', wadata))));
}});
  $(".badge").text($(".badge").text() - 1);
  send(new Array('/proposaljsp.acceptWA', ':::EXIT468', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
});
  $(document).delegate('.decline', 'click', function() {
  send(new Array('/proposaljsp.anonymous475', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
  var wadata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "wstatus": "decline", "wid": $(this)[0].id.replace("wa_decline", "")};
  $.ajax({url: "/WSG/wondering_area/update/status", type: "POST", data: JSON.stringify(wadata), dataType: "json", success: function() {
  send(new Array('/proposaljsp.anonymous490', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
  $('#wabox').empty().html("");
  initWonderingArea();
  send(new Array('/proposaljsp.anonymous490', ':::EXIT492', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/proposaljsp.anonymous495', ':::ENTER', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('wadata', wadata))));
  console.log(jqXHR.responseText);
  send(new Array('/proposaljsp.anonymous495', ':::EXIT500', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('wadata', wadata))));
}});
  $(".badge").text($(".badge").text() - 1);
  send(new Array('/proposaljsp.anonymous475', ':::EXIT505', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
});
  $(document).delegate('.message', 'click', function() {
  send(new Array('/proposaljsp.anonymous511', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
  var wadata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "areaid": parseInt($(this)[0].id.replace("wa_sent_message", ""))};
  $("#wondering_message_id").val($(this)[0].id.replace("wa_sent_message", ""));
  $.ajax({url: "/WSG/wondering_area/message/get", type: "POST", data: JSON.stringify(wadata), dataType: "json", success: function(data) {
  send(new Array('/proposaljsp.anonymous526', ':::ENTER', new Array(addVariable('c', c), addVariable('data', data), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
  $("#wondering_area_message").empty().html("");
  if (null != data.obj) 
  {
    if (null != data.obj[0]) 
    {
      var json = $.parseJSON(data.obj);
      if (json != null) 
      {
        for (var c in json) 
          {
            $("#wondering_area_message").append("<b>" + json[c].f_name + "  " + json[c].l_name + ":</b> <br>" + json[c].message + "<br>");
          }
      }
    }
  }
  $("#wondering_modal").modal("open");
  send(new Array('/proposaljsp.anonymous526', ':::EXIT538', new Array(addVariable('c', c), addVariable('data', data), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
}});
  send(new Array('/proposaljsp.anonymous511', ':::EXIT521', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('wadata', wadata))));
});
  $('.collection').delegate('a', 'click', function() {
  send(new Array('/proposaljsp.anonymous545', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
  window.location.href = "../thread/open.html";
  send(new Array('/proposaljsp.anonymous545', ':::EXIT546', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
});
  function init() {
    send(new Array('/proposaljsp.init', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
    initWonderingArea();
    initSuperTalk();
    initInvitation();
    send(new Array('/proposaljsp.init', ':::EXIT552', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
  }
  init();
  function initWonderingArea() {
    send(new Array('/proposaljsp.initWonderingArea', ':::ENTER', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('userdata', userdata))));
    var userdata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "pid": '<%=session.getAttribute("projectid")%>'};
    $.ajax({url: "/WSG/wondering_area/get/byprojectid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous570', ':::ENTER', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('tr', tr), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  console.log(json);
  for (var i = 0; i < json.length; i++) 
    {
      var tr = '<tr><td>' + json[i].name + '</td><td>' + json[i].create_time.substring(0, json[i].create_time.lastIndexOf("-") + 3) + '</td><td>' + json[i].first_name + " " + json[i].last_name + '</td><td>' + json[i].overarching_questions + " / " + json[i].why_important + '</td><td>' + json[i].status;
      if (json[i].status.toLowerCase() == "pending") 
      {
        tr = tr + '</td><td><button id="wa_accept' + json[i].id + '" class="btn accept" style="text-align: center;">Accept</button>' + '<button id="wa_decline' + json[i].id + '" class="btn decline" style="text-align: center; margin-left: 20px">Decline</button><button id="wa_sent_message' + json[i].id + '" class="btn message" style=" margin-left: 20px;">Message</button></td></tr>';
      }
      if (json[i].status.toLowerCase() == "accepted") 
      {
        tr = tr + '</td><td>' + '<button id="wa_decline' + json[i].id + '" class="btn decline" style="text-align: center; margin-left: 20px">Decline</button><button id="wa_sent_message' + json[i].id + '" class="btn message" style=" margin-left: 20px;">Message</button></td></tr>';
      }
      if (json[i].status.toLowerCase() == "decline") 
      {
        tr = tr + '</td><td><button id="wa_accept' + json[i].id + '" class="btn accept" style="text-align: center;">Accept</button>' + '<button id="wa_sent_message' + json[i].id + '" class="btn message" style=" margin-left: 20px;">Message</button></td></tr>';
      }
      $('#wabox').append(tr);
    }
  send(new Array('/proposaljsp.anonymous570', ':::EXIT574', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('tr', tr), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/proposaljsp.anonymous612', ':::ENTER', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
  console.log(jqXHR.responseText);
  send(new Array('/proposaljsp.anonymous612', ':::EXIT614', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
}});
    send(new Array('/proposaljsp.initWonderingArea', ':::EXIT565', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('userdata', userdata))));
  }
  send(new Array('/proposaljsp.anonymous411', ':::EXIT558', new Array(addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id))));
});
function superTalkStatus(id, status) {
  send(new Array('/proposaljsp.superTalkStatus', ':::ENTER', new Array(addVariable('id', id), addVariable('localdb', localdb), addVariable('status', status), addVariable('userdata', userdata))));
  if (status == 1) 
  {
    var userdata = {"database": 'super_talk', "token": '<%=session.getAttribute("super_token")%>', "supertalk_status": "accepted", "sid": id};
    $.ajax({url: "/WSG/supertalk/status/update", type: "POST", data: JSON.stringify(userdata), dataType: "json"});
    sleepFor(1000);
    initSuperTalk();
  } else {
    var userdata = {"database": 'super_talk', "token": '<%=session.getAttribute("super_token")%>', "supertalk_status": "decline", "sid": id};
    $.ajax({url: "/WSG/supertalk/status/update", type: "POST", data: JSON.stringify(userdata), dataType: "json"});
    sleepFor(1000);
    initSuperTalk();
  }
  send(new Array('/proposaljsp.superTalkStatus', ':::EXIT628', new Array(addVariable('id', id), addVariable('localdb', localdb), addVariable('status', status), addVariable('userdata', userdata))));
}
function initSuperTalk() {
  send(new Array('/proposaljsp.initSuperTalk', ':::ENTER', new Array(addVariable('localdb', localdb), addVariable('userdata', userdata))));
  $('#super-talk-box').empty().html("");
  var userdata = {"database": 'super_talk', "token": '<%=session.getAttribute("super_token")%>'};
  $.ajax({url: "/WSG/supertalk/get/all", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/proposaljsp.anonymous680', ':::ENTER', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  console.log(json);
  if (json != null) 
  {
    for (var i = 0; i < json.length; i++) 
      {
        tr = $('<tr/>');
        tr.append('<td>' + json[i].question + '</td>');
        tr.append('<td>' + json[i].create_time.substring(0, json[i].create_time.lastIndexOf("-") + 3) + '</td>');
        tr.append('<td>' + json[i].proposed_by + " " + '</td>');
        tr.append('<td> <b>Say more about your question to help other classrooms understand:</b><br>' + json[i].description + "  " + "<br><b>What do you and your peers know about this issue now?</b><br>" + json[i].issues + "  " + '<br></td>');
        tr.append('<td>' + json[i].status + '</td>');
        if (json[i].status.toLowerCase() == "accepted") 
        {
          tr.append('<td></td>');
          tr.append('<td><button onclick="superTalkStatus(\'' + json[i].id + '\',0)" id="st_decline' + json[i].id + '" class="btn " style=" margin-left: 20px;">Decline</button><button  onclick="supertalk_SentMessage(\'' + json[i].id + '\',1)" class="btn " style=" margin-left: 20px;">Message</button></td>');
        }
        if (json[i].status.toLowerCase() == "decline") 
        {
          tr.append('<td><button onclick="superTalkStatus(\'' + json[i].id + '\',1)" class="btn " style="text-align: center;">Accept</button>' + '<button  onclick="supertalk_SentMessage(\'' + json[i].id + '\',1)" class="btn " style=" margin-left: 20px;">Message</button></td>');
          tr.append('<td></td>');
        }
        if (json[i].status.toLowerCase() == "pending") 
        {
          tr.append('<td><button onclick="superTalkStatus(\'' + json[i].id + '\',1)" class="btn " style="text-align: center;">Accept</button><button onclick="superTalkStatus(\'' + json[i].id + '\',0)" id="st_decline' + json[i].id + '" class="btn " style=" margin-left: 20px;">Decline</button><button  onclick="supertalk_SentMessage(\'' + json[i].id + '\',1)" class="btn " style=" margin-left: 20px;">Message</button></td>');
        }
        $('#super-talk-box').append(tr);
      }
  }
  send(new Array('/proposaljsp.anonymous680', ':::EXIT684', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/proposaljsp.anonymous731', ':::ENTER', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
  console.log(jqXHR.responseText);
  send(new Array('/proposaljsp.anonymous731', ':::EXIT733', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('textStatus', textStatus), addVariable('userdata', userdata))));
}});
  send(new Array('/proposaljsp.initSuperTalk', ':::EXIT675', new Array(addVariable('localdb', localdb), addVariable('userdata', userdata))));
}
$(".side-nav").find(".blue-grey").removeClass('blue-grey');
$(".side-nav").find(".active").removeClass('active');
$(".side-nav").find(".show").removeClass('show');
$(".in-teacher-space").addClass("active blue-grey lighten-2 ");
$(".in-teacher-space-body").addClass("show");
$(".in-teacher").addClass("active");
</script>  
 </body>
</html>