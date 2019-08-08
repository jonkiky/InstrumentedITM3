<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> --><!doctype html>
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/customerize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/jquery-ui.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/font-awesome-4.7.0/css/font-awesome.css"> 
  <link type="text/css" rel="stylesheet" href="../../css/font-awesome-4.7.0/css/font-awesome.css" media="screen,projection"> 
  <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet"> 
  <!--Let browser know website is optimized for mobile--> 
  <script src="../../js/jquery-3.1.0.js"></script> 
  <script src="../../js/jquery-ui.js"></script> 
  <script src="../../js/jquery.sessionTimeout.js"></script> 
  <script src="../../js/itm.js"></script> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
  <style>
    .datepicker-text {
        width:100px !important;
    }

	/* The Modal (background) */
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		padding-top: 100px; /* Location of the box */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed*/
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		max-height:100%;
	}

	/* Modal Content */
	.modal-content {
		background-color: #fefefe;
		margin: auto;
		padding: 20px;
		border: 1px solid #888;
		width: 80%;
	}

	/* The Close Button */
	.close {
		color: #aaaaaa;
		float: right;
		font-size: 28px;
		font-weight: bold;
	}

	.close:hover,
	.close:focus {
		color: #000;
		text-decoration: none;
		cursor: pointer;
	}


</style>
 </head>  
 <body> 
  <header> 
   <!-- <%@ include file="../../header.jsp" %>
		<%@ include file="../../side_menu_hidden.jsp" %> --> 
  </header> 
  <main> 
   <div class="container"> 
    <br> 
    <div class="row"> 
     <nav style="line-height:20px; height:20px;font-size: 15px;"> 
      <div class="nav-wrapper blue-grey" style="line-height:20px; height:20px"> 
       <div class="col s12"> 
        <a href="#!" onclick="enterProject()" style="color:#dddddd">Dashboard&nbsp;&nbsp;&nbsp;</a> 
        <a href="#!" class="white-text">Activity Radar&nbsp;&nbsp;&nbsp;</a> 
       </div> 
      </div>
     </nav> 
     <div class="col s12"> 
      <ul id="tabs-swipe-demo" class="tabs"> 
       <li class="tab col s4"><a class="active" href="#test-swipe-1">Wondering Area</a></li> 
       <li class="tab col s4"><a href="#test-swipe-2">Thread Mapping</a></li> 
       <li class="tab col s4" style="width: 32%;"><a href="#test-swipe-3">Users</a></li> 
      </ul> 
     </div> 
    </div> 
    <div id="test-swipe-1" class="col s12 "> 
     <h6> Time period (recent <a id="w_1hr" href="javascript:initWRadar('h')">1 hour</a> / <a id="w_1day" href="javascript:initWRadar('d')">1 day</a> / <a id="w_1week" href="javascript:initWRadar('w')">1 week</a> / <a id="w_alltime" href="javascript:initWRadar('null')">all time</a> / set a date : <input type="text" class="datepicker-text" id="datepicker-1">) </h6> 
     <div style="padding-left: 20px; border: solid 5px; border-color: #78909c;"> 
      <table> 
       <tbody>
        <tr id="wondering_area_box"> 
         <th>Wondering area</th> 
         <th>threads</th> 
         <th>new posts</th> 
         <th>my posts</th> 
         <th>build-ons to my posts</th> 
         <th>new highlights</th> 
         <th>updated Journey of Thinking</th> 
        </tr> 
       </tbody>
      </table> 
     </div> 
    </div> 
    <div id="test-swipe-2" class="col s12 "> 
     <h6> Time period (recent <a id="t_1hr" href="javascript:initRadar('h')">1 hour</a> / <a id="t_1day" href="javascript:initRadar('d')">1 day</a> / <a id="t_1week" href="javascript:initRadar('w')">1 week</a> / <a id="t_alltime" href="javascript:initRadar('null')">all time</a> / set a date : <input type="text" class="datepicker-text" id="datepicker-2">) </h6> 
     <div style="padding-left: 20px; border: solid 5px; border-color: #78909c;"> 
      <table> 
       <thead id="threadbox"> 
        <tr> 
         <th>Threads</th> 
         <th>new posts</th> 
         <th>my posts</th> 
         <th>build-ons to my posts</th> 
         <th>new highlights</th> 
         <th>updated Journey of Thinking</th> 
        </tr> 
       </thead> 
      </table> 
     </div> 
    </div> 
    <div id="test-swipe-3" class="col s12 "> 
     <h6> Time period (recent <a id="u_1hr" href="javascript:initUserRadar('h')">1 hour</a> / <a id="u_1day" href="javascript:initUserRadar('d')">1 day</a> / <a id="u_1week" href="javascript:initUserRadar('w')">1 week</a> / <a id="u_alltime" href="javascript:initUserRadar('null')">all time</a> / set a date : <input type="text" class="datepicker-text" id="datepicker-3">) </h6> 
     <div style="padding-left: 20px; border: solid 5px; border-color: #78909c;"> 
      <table> 
       <thead id="userbox"> 
        <tr> 
         <th>Name</th> 
         <th>Idea Threads Posted In</th> 
         <th>Notes Posted</th> 
         <th>Total Words</th> 
         <th>Build-on Received</th> 
         <th>Notes Read</th> 
         <th>Journey of Thinking</th> 
         <th>Research Journal</th> 
        </tr> 
       </thead> 
      </table> 
     </div> 
     <div id="myModal" class="modal"> 
      <!-- Modal content --> 
      <div class="modal-content"> 
       <span class="close">×</span> 
       <br> 
       <div class="col s12"> 
        <ul id="tabs-swipe" class="tabs"> 
         <li class="tab col s4"><a class="active" href="#swipe-1">List of Notes</a></li> 
         <li class="tab col s4" style="width: 32%;"><a href="#swipe-2">List of Journey of Thinking</a></li> 
         <li class="tab col s4"><a href="#swipe-3">List of Journals</a></li> 
        </ul> 
       </div> 
       <br> 
       <br> 
       <div id="swipe-1" style="padding-left: 20px; border: solid 5px; border-color: #78909c;"> 
        <table> 
         <thead id="usernotesbox"> 
          <tr> 
           <th>Time Created</th> 
           <th>Idea Thread</th> 
           <th>Title</th> 
           <th>Text Body</th> 
          </tr> 
         </thead> 
        </table> 
       </div> 
       <div id="swipe-2" style="padding-left: 20px; border: solid 5px; border-color: #78909c;"> 
        <table> 
         <thead id="userjotbox"> 
          <tr> 
           <th>Time Created</th> 
           <th>Idea Thread</th> 
           <th>Title</th> 
           <th>Text Body</th> 
          </tr> 
         </thead> 
        </table> 
       </div> 
       <div id="swipe-3" style="padding-left: 20px; border: solid 5px; border-color: #78909c;"> 
        <table> 
         <thead id="userjournalsbox"> 
          <tr> 
           <th>Time Created</th> 
           <th>Wondering Area Topic</th> 
           <th>New Idea</th> 
           <th>Plan:Deeper Issues</th> 
           <th>Resources to use</th> 
           <th>Share</th> 
          </tr> 
         </thead> 
        </table> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div>   
  </main> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../../js/notify.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /activity_raderjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
$(".button-collapse").sideNav();
$(".in-community").hide();
$("#show_slide").click(function() {
  send(new Array('/activity_raderjsp.anonymous4', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  $('.button-collapse').sideNav('show');
  send(new Array('/activity_raderjsp.anonymous4', ':::EXIT5', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
var localdb = getUrlParameter("crossdb");
var community_id = getUrlParameter("community_id");
var project_id = parseInt(getUrlParameter("projectid"));
var community_name = getUrlParameter("community_name");
var token = '<%=session.getAttribute("super_token")%>';
var id = '<%=session.getAttribute("id")%>';
var path = location.href;
var isCrossProject = community_id != '<%=session.getAttribute("community_id")%>' ? true : false;
var selection = 1;
function enterProject() {
  send(new Array('/activity_raderjsp.enterProject', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  window.location.href = "dashboard.jsp?project_id=" + project_id + "&localdb=" + localdb + "&community_id=" + community_id + "&community_name=" + community_name;
  send(new Array('/activity_raderjsp.enterProject', ':::EXIT24', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
function validateURL() {
  send(new Array('/activity_raderjsp.validateURL', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  if (null == getUrlParameter("crossdb") || null == getUrlParameter("community_id") || null == getUrlParameter("projectid")) 
  {
    setTimeout(function() {
  send(new Array('/activity_raderjsp.anonymous32', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/activity_raderjsp.anonymous32', ':::EXIT33', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}, 3000);
  }
  send(new Array('/activity_raderjsp.validateURL', ':::EXIT31', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
function get_community_info() {
  send(new Array('/activity_raderjsp.get_community_info', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  if (null != getUrlParameter("community_id")) 
  {
    var userdata = {"database": "itm3", "token": token, "cid": getUrlParameter("community_id")};
    $.ajax({url: "/WSG/community/byid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous54', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    community_id = getUrlParameter("community_id");
    localdb = json[0].localdb;
    community_name = json[0].community_name;
  } else {
    console.log("do not find this community");
  }
  get_project_info();
  send(new Array('/activity_raderjsp.anonymous54', ':::EXIT64', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous66', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  setTimeout(function() {
  send(new Array('/activity_raderjsp.anonymous67', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/activity_raderjsp.anonymous67', ':::EXIT68', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, 3000);
  send(new Array('/activity_raderjsp.anonymous66', ':::EXIT67', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}});
  } else {
    setTimeout(function() {
  send(new Array('/activity_raderjsp.anonymous74', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/activity_raderjsp.anonymous74', ':::EXIT75', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, 3000);
  }
  send(new Array('/activity_raderjsp.get_community_info', ':::EXIT43', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}
function get_project_info() {
  send(new Array('/activity_raderjsp.get_project_info', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  if (null != getUrlParameter("projectid")) 
  {
    var userdata = {"database": localdb, "token": token, "projectid": parseInt(getUrlParameter("projectid"))};
    $.ajax({url: "/WSG/project/get/byid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous97', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    if (isCrossProject) 
    {
      $("#page_title").html('<a href="../../dashboard.jsp">[CROSS COMMUNITY]' + community_name + '</a>-><a href="../openedit.jsp?community_id=' + community_id + '&localdb=' + localdb + '">' + json[0].title + '  Dashboard</a>');
    } else {
      $("#page_title").html('<a href="../../dashboard.jsp">' + community_name + '</a>-><a href="../openedit.jsp?community_id=' + community_id + '&localdb=' + localdb + '">' + json[0].title + '  Dashboard</a>');
    }
  } else {
    console.log("do not find this project");
  }
  send(new Array('/activity_raderjsp.anonymous97', ':::EXIT99', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous109', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  setTimeout(function() {
  send(new Array('/activity_raderjsp.anonymous110', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/activity_raderjsp.anonymous110', ':::EXIT111', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, 3000);
  send(new Array('/activity_raderjsp.anonymous109', ':::EXIT110', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}});
  } else {
    setTimeout(function() {
  send(new Array('/activity_raderjsp.anonymous117', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/activity_raderjsp.anonymous117', ':::EXIT118', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, 3000);
  }
  send(new Array('/activity_raderjsp.get_project_info', ':::EXIT86', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}
var project = "";
$('select').material_select();
function init() {
  send(new Array('/activity_raderjsp.init', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  intiActivityRadar();
  get_community_info();
  send(new Array('/activity_raderjsp.init', ':::EXIT130', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
init();
var modal = document.getElementById('myModal');
var span = document.getElementsByClassName("close")[0];
var area = [];
var thread = [];
var notes = [];
var jotData = [];
var members = [];
var area_time = null;
var buildOn = [];
function intiActivityRadar() {
  send(new Array('/activity_raderjsp.intiActivityRadar', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  var userdata = {"database": localdb, "token": token, "pid": project_id};
  $.ajax({url: "/WSG/wondering_area/get/byprojectid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous157', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    for (var i in json) 
      {
        area[json[i].id] = json[i];
      }
    getThread();
  }
  send(new Array('/activity_raderjsp.anonymous157', ':::EXIT160', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous167', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
  console.log(jqXHR.responseText);
  send(new Array('/activity_raderjsp.anonymous167', ':::EXIT168', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}});
  send(new Array('/activity_raderjsp.intiActivityRadar', ':::EXIT152', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userdata', userdata))));
}
function getThread() {
  send(new Array('/activity_raderjsp.getThread', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('projectdata', projectdata), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var projectdata = {"database": localdb, "token": token, "projectid": project_id};
  $.ajax({url: "/WSG/project/thread/get", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous187', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('projectdata', projectdata), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    for (var i in json) 
      {
        thread[json[i].id] = json[i];
      }
    get_thread_note();
  }
  send(new Array('/activity_raderjsp.anonymous187', ':::EXIT190', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('projectdata', projectdata), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous199', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('projectdata', projectdata), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  send(new Array('/activity_raderjsp.anonymous199', ':::EXIT0', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('projectdata', projectdata), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.getThread', ':::EXIT182', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('projectdata', projectdata), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
var noteIds = '';
function get_thread_note() {
  send(new Array('/activity_raderjsp.get_thread_note', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmpthreaddata', tmpthreaddata), addVariable('token', token))));
  var tmpthreaddata = {"database": localdb, "token": token, "pid": project_id};
  $.ajax({url: "/WSG/thread/note/get/byproject", type: "POST", data: JSON.stringify(tmpthreaddata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous221', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('noteJson', noteJson), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmpthreaddata', tmpthreaddata), addVariable('token', token))));
  noteIds = '';
  var noteJson = $.parseJSON(data.obj);
  if (null != noteJson) 
  {
    for (var i in noteJson) 
      {
        noteIds = noteIds + "'" + noteJson[i].author_id + "',";
        if (typeof (notes[noteJson[i].note_id]) != "undefined") 
        {
          notes[noteJson[i].note_id].thread_id = String(notes[noteJson[i].note_id].thread_id) + "&" + String(noteJson[i].thread_id);
        } else {
          notes[noteJson[i].note_id] = noteJson[i];
        }
      }
    noteIds = noteIds.substring(0, noteIds.length - 1);
  }
  get_user_note();
  send(new Array('/activity_raderjsp.anonymous221', ':::EXIT238', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('noteJson', noteJson), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmpthreaddata', tmpthreaddata), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.get_thread_note', ':::EXIT215', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmpthreaddata', tmpthreaddata), addVariable('token', token))));
}
function get_user_note() {
  send(new Array('/activity_raderjsp.get_user_note', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
  var tmptUserdata = {"database": localdb, "token": token, "authorid": '<%=session.getAttribute("id")%>'};
  $.ajax({url: "/WSG/note/get/byauthor", type: "POST", data: JSON.stringify(tmptUserdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous258', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token), addVariable('userNoteJson', userNoteJson))));
  var userNoteJson = $.parseJSON(data.obj);
  if (null != userNoteJson) 
  {
    for (var i in userNoteJson) 
      {
        notes[userNoteJson[i].note_id] = $.extend(notes[userNoteJson[i].note_id], {"isMyNote": true});
      }
  }
  get_buildon();
  send(new Array('/activity_raderjsp.anonymous258', ':::EXIT266', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token), addVariable('userNoteJson', userNoteJson))));
}});
  send(new Array('/activity_raderjsp.get_user_note', ':::EXIT253', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
}
function get_buildon() {
  send(new Array('/activity_raderjsp.get_buildon', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
  var tmptUserdata = {"database": localdb, "token": token, "authorid": '<%=session.getAttribute("id")%>'};
  $.ajax({url: "/WSG/buildon/get/byauthorid", type: "POST", data: JSON.stringify(tmptUserdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous284', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token), addVariable('userBuildonJson', userBuildonJson))));
  var userBuildonJson = $.parseJSON(data.obj);
  if (null != userBuildonJson) 
  {
    for (var i in userBuildonJson) 
      {
        if ("undefined" != typeof (notes[userBuildonJson[i].to_note_id])) 
        {
          if ("undefined" == typeof (notes[userBuildonJson[i].to_note_id].buildon)) 
          {
            notes[userBuildonJson[i].to_note_id] = $.extend(notes[userBuildonJson[i].to_note_id], {"buildon": [userBuildonJson[i]]});
          } else {
            notes[userBuildonJson[i].to_note_id].buildon.push(userBuildonJson[i]);
          }
        }
      }
  }
  get_thread_note_highlight();
  send(new Array('/activity_raderjsp.anonymous284', ':::EXIT298', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token), addVariable('userBuildonJson', userBuildonJson))));
}});
  send(new Array('/activity_raderjsp.get_buildon', ':::EXIT279', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
}
function get_thread_note_highlight() {
  send(new Array('/activity_raderjsp.get_thread_note_highlight', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
  var tmptUserdata = {"database": localdb, "token": token};
  $.ajax({url: "/WSG/highlight/get/all", type: "POST", data: JSON.stringify(tmptUserdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous314', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('highlightJson', highlightJson), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
  var highlightJson = $.parseJSON(data.obj);
  if (null != highlightJson) 
  {
    for (var i in highlightJson) 
      {
        if ("undefined" != typeof (notes[highlightJson[i].note_id])) 
        {
          if ("undefined" == typeof (notes[highlightJson[i].note_id].highlight)) 
          {
            notes[highlightJson[i].note_id] = $.extend(notes[highlightJson[i].note_id], {"highlight": [highlightJson[i]]});
          } else {
            notes[highlightJson[i].note_id].highlight.push(highlightJson[i]);
          }
        }
      }
  }
  getJOTByProjectId();
  send(new Array('/activity_raderjsp.anonymous314', ':::EXIT329', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('highlightJson', highlightJson), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.get_thread_note_highlight', ':::EXIT309', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
}
function getJOTByProjectId() {
  send(new Array('/activity_raderjsp.getJOTByProjectId', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
  var tmptUserdata = {"database": localdb, "token": token, "pid": 'project_id'};
  $.ajax({url: "/WSG/project/jot/get/byprojectid", type: "POST", data: JSON.stringify(tmptUserdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous346', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jotJson', jotJson), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
  var jotJson = $.parseJSON(data.obj);
  jotData = jotJson;
  if (null != jotJson) 
  {
    for (var i in jotJson) 
      {
        if ("undefined" != typeof (thread[jotJson[i].thread_id])) 
        {
          if ("undefined" == typeof (thread[jotJson[i].thread_id].jot)) 
          {
            thread[jotJson[i].thread_id] = $.extend(thread[jotJson[i].thread_id], {"jot": [jotJson[i]]});
          } else {
            thread[jotJson[i].thread_id].jot.push(jotJson[i]);
          }
        }
      }
  }
  combineNoteThread();
  send(new Array('/activity_raderjsp.anonymous346', ':::EXIT360', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jotJson', jotJson), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.getJOTByProjectId', ':::EXIT341', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('tmptUserdata', tmptUserdata), addVariable('token', token))));
}
function get_wondering_area_thread() {
  send(new Array('/activity_raderjsp.get_wondering_area_thread', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('linkdata', linkdata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var linkdata = {"database": localdb, "token": token, "pid": project_id};
  $.ajax({url: "/WSG/wondering_area/thread/get/byprojectid", type: "POST", data: JSON.stringify(linkdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous377', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('linkdata', linkdata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    for (var i = 0; i < json.length; i++) 
      {
        if (null != thread[json[i].thread_id]) 
        {
          if (typeof (area[json[i].wondering_area_id]) != "undefined") 
          {
            if (typeof (area[json[i].wondering_area_id].thread) != "undefined") 
            {
              area[json[i].wondering_area_id].thread.push(thread[json[i].thread_id]);
            } else {
              area[json[i].wondering_area_id] = $.extend(area[json[i].wondering_area_id], {"thread": [thread[json[i].thread_id]]});
            }
          } else {
            console.log("An error with wondering area and thread. The project has a thread link to unknown wondering area");
          }
        } else {
          console.log("can not find thread info");
        }
      }
  }
  get_project_members();
  initRadar(null);
  initWRadar(null);
  send(new Array('/activity_raderjsp.anonymous377', ':::EXIT401', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('linkdata', linkdata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous403', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('linkdata', linkdata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  console.log(jqXHR.responseText);
  send(new Array('/activity_raderjsp.anonymous403', ':::EXIT405', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('linkdata', linkdata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.get_wondering_area_thread', ':::EXIT372', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('linkdata', linkdata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
function combineData() {
  send(new Array('/activity_raderjsp.combineData', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  for (var i in thread) 
    {
      for (var j in members) 
        {
          if (thread[i].author_id == members[j].author_id) 
          {
            if ("undefined" == typeof (members[j].threads)) 
            {
              members[j] = $.extend(members[j], {"threads": [thread[i]]});
            } else {
              members[j].threads.push(thread[i]);
            }
            break;
          }
        }
    }
  initUserRadar(null);
  send(new Array('/activity_raderjsp.combineData', ':::EXIT425', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
function combineNoteThread() {
  send(new Array('/activity_raderjsp.combineNoteThread', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('threads', threads), addVariable('token', token))));
  for (var i in notes) 
    {
      var threads = String(notes[i].thread_id).split("&");
      for (var j in threads) 
        {
          if ("undefined" != typeof (thread[threads[j]])) 
          {
            if (notes[i].thread_id != "") 
            {
              if ("undefined" == typeof (thread[threads[j]].notes)) 
              {
                thread[threads[j]] = $.extend(thread[threads[j]], {"notes": [notes[i]]});
              } else {
                thread[threads[j]].notes.push(notes[i]);
              }
            }
          }
        }
    }
  get_wondering_area_thread();
  send(new Array('/activity_raderjsp.combineNoteThread', ':::EXIT446', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('threads', threads), addVariable('token', token))));
}
function get_project_members() {
  send(new Array('/activity_raderjsp.get_project_members', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var data = {"database": localdb, "token": '<%=session.getAttribute("token")%>', "projectid": project_id};
  $.ajax({url: "/WSG/project/user/get", type: "POST", data: JSON.stringify(data), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous464', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    for (var i = 0; i < json.length; i++) 
      {
        members[json[i].author_id] = json[i];
      }
    getJournals();
  }
  send(new Array('/activity_raderjsp.anonymous464', ':::EXIT467', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous475', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  console.log(jqXHR.responseText);
  send(new Array('/activity_raderjsp.anonymous475', ':::EXIT477', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.get_project_members', ':::EXIT459', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
function getBuildOnForUsers() {
  send(new Array('/activity_raderjsp.getBuildOnForUsers', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('inputdata', inputdata), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var inputdata = {"database": localdb, "token": token};
  $.ajax({url: "/WSG/buildon/get", type: "POST", data: JSON.stringify(inputdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous494', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('inputdata', inputdata), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  buildOn = $.parseJSON(data.obj);
  combineData();
  send(new Array('/activity_raderjsp.anonymous494', ':::EXIT498', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('id', id), addVariable('inputdata', inputdata), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous500', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('inputdata', inputdata), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  console.log(jqXHR.responseText);
  send(new Array('/activity_raderjsp.anonymous500', ':::EXIT502', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('inputdata', inputdata), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.getBuildOnForUsers', ':::EXIT489', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('inputdata', inputdata), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
function getJournals() {
  send(new Array('/activity_raderjsp.getJournals', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('journaldata', journaldata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var journaldata = {"database": localdb, "token": token};
  $.ajax({url: "/WSG/journal/get", type: "POST", data: JSON.stringify(journaldata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/activity_raderjsp.anonymous521', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('journaldata', journaldata), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  var json = $.parseJSON(data.obj);
  if (json != null && members != null) 
  {
    for (var i in json) 
      {
        if (typeof (members[json[i].User_id].journals) != "undefined") 
        {
          members[json[i].User_id].journals.push(json[i]);
        } else {
          members[json[i].User_id] = $.extend(members[json[i].User_id], {"journals": [json[i]]});
        }
      }
  }
  getBuildOnForUsers();
  send(new Array('/activity_raderjsp.anonymous521', ':::EXIT536', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('data', data), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('journaldata', journaldata), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/activity_raderjsp.anonymous538', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('journaldata', journaldata), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  console.log(jqXHR.responseText);
  send(new Array('/activity_raderjsp.anonymous538', ':::EXIT540', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('journaldata', journaldata), addVariable('jqXHR', jqXHR), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('textStatus', textStatus), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}});
  send(new Array('/activity_raderjsp.getJournals', ':::EXIT516', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('journaldata', journaldata), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
}
var thread_time = null;
function initRadar(time) {
  send(new Array('/activity_raderjsp.initRadar', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_highlights', num_highlights), addVariable('num_jot', num_jot), addVariable('num_my_post', num_my_post), addVariable('num_new_post', num_new_post), addVariable('num_thread', num_thread), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('time', time), addVariable('token', token), addVariable('tr', tr))));
  if (time != 't') 
  {
    document.getElementById("datepicker-1").value = "";
    document.getElementById("datepicker-2").value = "";
    document.getElementById("datepicker-3").value = "";
  }
  $("#threadbox").empty().html("");
  $("#threadbox").html("<tr>" + "<th>Threads</th>" + "<th>new posts</th>" + "<th>my posts</th>" + "<th>build-ons to my posts</th>" + "<th>new highlights</th>" + "<th>updated Journey of Thinking</th>" + "</tr>");
  thread_time = time;
  var bound_time = new Date("1966-06-07T14:51:16.195Z");
  var d = new Date();
  if (null != time) 
  {
    switch (time) {
      case "h":
        bound_time = d.setHours(d.getHours() - 1);
        break;
      case "d":
        bound_time = d.setDate(d.getDate() - 1);
        break;
      case "w":
        bound_time = d.setDate(d.getDate() - 7);
        break;
      case "t":
        if (selection == 1) 
        {
          bound_time = d.setDate((new Date($("#datepicker-1").val())).getDate());
        } else if (selection == 2) 
        {
          bound_time = d.setDate((new Date($("#datepicker-2").val())).getDate());
        } else {
          bound_time = d.setDate((new Date($("#datepicker-3").val())).getDate());
        }
        break;
    }
  }
  if (null != thread && "" != thread) 
  {
    for (var i in thread) 
      {
        var num_thread = 0;
        var num_new_post = 0;
        var num_my_post = 0;
        var num_build_on = 0;
        var num_highlights = 0;
        var num_jot = 0;
        var tr = $("#threadbox");
        if ("undefined" != typeof (thread[i].jot)) 
        {
          for (var k in thread[i].jot) 
            {
              if (new Date(thread[i].jot[k].time_stamp).getTime() > new Date(bound_time).getTime()) 
              {
                num_jot = num_jot + 1;
              }
            }
        }
        if (null != thread[i].notes) 
        {
          for (var j in thread[i].notes) 
            {
              if ("undefined" != typeof (thread[i].notes[j].highlight)) 
              {
                for (var m in thread[i].notes[j].highlight) 
                  {
                    if (new Date(thread[i].notes[j].highlight[m].create_time).getTime() > new Date(bound_time).getTime()) 
                    {
                      num_highlights = num_highlights + 1;
                    }
                  }
              }
              if (new Date(thread[i].notes[j].create_time).getTime() > new Date(bound_time).getTime()) 
              {
                num_new_post = num_new_post + 1;
                if ("undefined" != typeof (thread[i].notes[j].isMyNote)) 
                {
                  if (thread[i].notes[j].isHighlight) 
                  {
                    if (bound_time != "") 
                    {
                      num_highlights = num_highlights + 1;
                    }
                  }
                }
                if ("undefined" != typeof (thread[i].notes[j].isMyNote)) 
                {
                  if (thread[i].notes[j].isMyNote) 
                  {
                    num_my_post = num_my_post + 1;
                  }
                }
              }
              if ("undefined" != typeof (thread[i].notes[j].buildon)) 
              {
                for (var m in thread[i].notes[j].buildon) 
                  {
                    if (new Date(thread[i].notes[j].buildon[m].create_time).getTime() > new Date(bound_time).getTime()) 
                    {
                      num_build_on = num_build_on + 1;
                    }
                  }
              }
            }
        }
        tr.append('<tr ><td ><a class="threadsclick" target="_blank" href="#" id="' + thread[i].id + '">&nbsp;&nbsp;' + thread[i].threadfocus + '</a></td>' + '<td>&nbsp;' + num_new_post + '</td>' + '<td>&nbsp;' + num_my_post + '</td>' + '<td>&nbsp;' + num_build_on + '</td>' + '<td>&nbsp;' + num_highlights + '</td>' + '<td>&nbsp;' + num_jot + '</td>' + '</tr>');
      }
  }
  send(new Array('/activity_raderjsp.initRadar', ':::EXIT590', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_highlights', num_highlights), addVariable('num_jot', num_jot), addVariable('num_my_post', num_my_post), addVariable('num_new_post', num_new_post), addVariable('num_thread', num_thread), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('time', time), addVariable('token', token), addVariable('tr', tr))));
}
var bndTime = '';
function initUserRadar(time) {
  send(new Array('/activity_raderjsp.initUserRadar', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('b', b), addVariable('bld', bld), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('denominator', denominator), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('note', note), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_jot', num_jot), addVariable('num_journals', num_journals), addVariable('num_notes', num_notes), addVariable('num_thread', num_thread), addVariable('num_words', num_words), addVariable('p', p), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thr', thr), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('threadhtml', threadhtml), addVariable('time', time), addVariable('token', token), addVariable('tot_build_on', tot_build_on), addVariable('tot_jot', tot_jot), addVariable('tot_journals', tot_journals), addVariable('tot_notes', tot_notes), addVariable('tot_thread', tot_thread), addVariable('tot_words', tot_words), addVariable('usrbx', usrbx), addVariable('wordArr', wordArr), addVariable('words', words), addVariable('y', y))));
  area_time = time;
  $("#userbox").empty().html();
  $("#userbox").html("<tr>" + "<th>Name</th>" + "<th>Idea Threads Posted In</th>" + "<th>Notes Posted</th>" + "<th>Total Words</th>" + "<th>Build-on Received</th>" + "<th>Notes Read</th>" + "<th>Journey of Thinking</th>" + "<th>Research Journal</th>" + "</tr>");
  var bound_time = new Date("1966-06-07T14:51:16.195Z");
  var d = new Date();
  if (time != 't') 
  {
    document.getElementById("datepicker-1").value = "";
    document.getElementById("datepicker-2").value = "";
    document.getElementById("datepicker-3").value = "";
  }
  if (null != time) 
  {
    switch (time) {
      case "h":
        bound_time = d.setHours(d.getHours() - 1);
        break;
      case "d":
        bound_time = d.setDate(d.getDate() - 1);
        break;
      case "w":
        bound_time = d.setDate(d.getDate() - 7);
        break;
      case "t":
        if (selection == 1) 
        {
          bound_time = d.setDate((new Date($("#datepicker-1").val())).getDate());
        } else if (selection == 2) 
        {
          bound_time = d.setDate((new Date($("#datepicker-2").val())).getDate());
        } else {
          bound_time = d.setDate((new Date($("#datepicker-3").val())).getDate());
        }
        break;
    }
  }
  bndTime = bound_time;
  if (members != null) 
  {
    var denominator = 0;
    var usrbx = $("#userbox");
    var tot_thread = 0;
    var tot_notes = 0;
    var tot_words = 0;
    var tot_build_on = 0;
    var tot_journals = 0;
    var tot_jot = 0;
    for (var i in members) 
      {
        var num_thread = 0;
        var num_notes = 0;
        var num_words = 0;
        var words = '';
        var num_build_on = 0;
        var num_journals = 0;
        var num_jot = 0;
        denominator += 1;
        if (typeof (members[i].journals) != "undefined") 
        {
          for (var k in members[i].journals) 
            {
              if (new Date(members[i].journals[k].creation_time).getTime() > new Date(bound_time).getTime()) 
              {
                num_journals += 1;
              }
            }
        }
        if (typeof (members[i].threads) != "undefined") 
        {
          var thr = members[i].threads;
          for (var k in thr) 
            {
              if (new Date(thr[k].create_time).getTime() > new Date(bound_time).getTime()) 
              {
                num_thread = num_thread + 1;
              }
            }
        }
        for (var p in thread) 
          {
            if (typeof (thread[p].notes) != "undefined") 
            {
              var note = thread[p].notes;
              for (var m in note) 
                {
                  if (new Date(note[m].create_time).getTime() > new Date(bound_time).getTime()) 
                  {
                    if (typeof (note[m].author_id) != "undefined") 
                    {
                      if (members[i].author_id == note[m].author_id) 
                      {
                        num_notes = num_notes + 1;
                        if (words == '') 
                        {
                          words = note[m].content;
                        } else {
                          words = words + ' ' + note[m].content;
                        }
                        if (buildOn != null) 
                        {
                          for (var bld in buildOn) 
                            {
                              if (buildOn[bld].linktype == "buildson") 
                              {
                                if (buildOn[bld].to_note_id == note[m].note_id) 
                                {
                                  num_build_on += 1;
                                }
                              }
                            }
                        }
                      }
                    }
                  }
                }
            }
          }
        if (words != '') 
        {
          var wordArr = words.split(" ");
          num_words = wordArr.length;
        }
        if (jotData != null) 
        {
          for (var b in jotData) 
            {
              if (new Date(jotData[b].time_stamp).getTime() > new Date(bound_time).getTime()) 
              {
                for (var y in thread) 
                  {
                    if (thread[y].thread_id == jotData[b].thread_id) 
                    {
                      if (jotData[b].author_id == members[i].author_id) 
                      {
                        num_jot += 1;
                      }
                    }
                  }
              }
            }
        }
        var threadhtml = '';
        if (num_thread != 0) 
        {
          threadhtml = ' (<a  href="#" ><i class="fa fa-plus " data-id="' + members[i].author_id + " member" + '"aria-hidden="true"></i></a>)';
        }
        tot_thread += num_thread;
        tot_notes += num_notes;
        tot_words += num_words;
        tot_build_on += num_build_on;
        tot_journals += num_journals;
        tot_jot += num_jot;
        usrbx.append('<tr><td> &nbsp;&nbsp;<a  href="#" ><i class="subtable" data-id="' + i + '">' + members[i].first_name + '&nbsp;' + members[i].last_name + '</i></a>' + '</td>' + '<td>' + num_thread + threadhtml + '</td>' + '<td>' + num_notes + '</td>' + '<td>' + num_words + '</td>' + '<td>' + num_build_on + '</td>' + '<td>' + 0 + '</td>' + '<td>' + num_jot + '</td>' + '<td>' + num_journals + '</td>' + '</tr>');
      }
    usrbx.append('<tr></tr><tr rowspan = 2></tr><tr></tr><tr></tr><tr><td> &nbsp;&nbsp;' + 'Avg. of Students' + '</td>' + '<td>' + tot_thread / denominator + '</td>' + '<td>' + tot_notes / denominator + '</td>' + '<td>' + tot_words / denominator + '</td>' + '<td>' + tot_build_on / denominator + '</td>' + '<td>' + 0 + '</td>' + '<td>' + tot_jot / denominator + '</td>' + '<td>' + tot_journals / denominator + '</td>' + '</tr>');
  }
  send(new Array('/activity_raderjsp.initUserRadar', ':::EXIT710', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('b', b), addVariable('bld', bld), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('denominator', denominator), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('note', note), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_jot', num_jot), addVariable('num_journals', num_journals), addVariable('num_notes', num_notes), addVariable('num_thread', num_thread), addVariable('num_words', num_words), addVariable('p', p), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thr', thr), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('threadhtml', threadhtml), addVariable('time', time), addVariable('token', token), addVariable('tot_build_on', tot_build_on), addVariable('tot_jot', tot_jot), addVariable('tot_journals', tot_journals), addVariable('tot_notes', tot_notes), addVariable('tot_thread', tot_thread), addVariable('tot_words', tot_words), addVariable('usrbx', usrbx), addVariable('wordArr', wordArr), addVariable('words', words), addVariable('y', y))));
}
span.onclick = function() {
  send(new Array('/activity_raderjsp.anonymous870', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  modal.style.display = "none";
  send(new Array('/activity_raderjsp.anonymous870', ':::EXIT871', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
};
window.onclick = function(event) {
  send(new Array('/activity_raderjsp.anonymous874', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('event', event), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  if (event.target == modal) 
  {
    modal.style.display = "none";
  }
  send(new Array('/activity_raderjsp.anonymous874', ':::EXIT875', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('event', event), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
};
$(document).delegate('.subtable', 'click', function() {
  send(new Array('/activity_raderjsp.anonymous881', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('b', b), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('note', note), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('p', p), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userID', userID), addVariable('userjotbox', userjotbox), addVariable('userjournalsbox', userjournalsbox), addVariable('usernotesbox', usernotesbox), addVariable('y', y))));
  modal.style.display = "block";
  var userID = $(this).data("id") + "";
  $("#userjournalsbox").empty().html();
  $("#userjournalsbox").html("<tr>" + "<th>Time Created</th>" + "<th>Wondering Area Topic</th>" + "<th>New Idea</th>" + "<th>Plan:Deeper Issues</th>" + "<th>Resources to use</th>" + "<th>Share</th>" + "</tr>");
  $("#usernotesbox").empty().html();
  $("#usernotesbox").html("<tr>" + "<th>Time Created</th>" + "<th>Idea Thread</th>" + "<th>Title</th>" + "<th>Text Body</th>" + "</tr>");
  $("#userjotbox").empty().html();
  $("#userjotbox").html("<tr>" + "<th>Time Created</th>" + "<th>Idea Thread</th>" + "<th>Title</th>" + "<th>Text Body</th>" + "</tr>");
  var userjournalsbox = $("#userjournalsbox");
  var userjotbox = $("#userjotbox");
  var usernotesbox = $("#usernotesbox");
  if (userID != '') 
  {
    for (var p in thread) 
      {
        if (typeof (thread[p].notes) != "undefined") 
        {
          var note = thread[p].notes;
          for (var m in note) 
            {
              if (new Date(note[m].create_time).getTime() > new Date(bndTime).getTime()) 
              {
                if (typeof (note[m].author_id) != "undefined") 
                {
                  if (userID == note[m].author_id) 
                  {
                    usernotesbox.append('<tr>' + '<td>' + note[m].create_time + '</td>' + '<td>' + thread[p].threadfocus + '</td>' + '<td>' + note[m].title + '</td>' + '<td>' + note[m].content + '</td>' + '</tr>');
                  }
                }
              }
            }
        }
      }
    if (typeof (members[userID].journals) != "undefined") 
    {
      for (var k in members[userID].journals) 
        {
          if (new Date(members[userID].journals[k].creation_time).getTime() > new Date(bndTime).getTime()) 
          {
            userjournalsbox.append('<tr>' + '<td>' + members[userID].journals[k].creation_time + '</td>' + '<td>' + members[userID].journals[k].topic + '</td>' + '<td>' + members[userID].journals[k].new_knowledge + '</td>' + '<td>' + members[userID].journals[k].issues + '</td>' + '<td>' + members[userID].journals[k].resources + '</td>' + '<td>' + members[userID].journals[k].sharepeers + '</td>' + '</tr>');
          }
        }
    }
    if (jotData != null) 
    {
      for (var b in jotData) 
        {
          if (new Date(jotData[b].time_stamp).getTime() > new Date(bndTime).getTime()) 
          {
            for (var y in thread) 
              {
                if (thread[y].thread_id == jotData[b].thread_id) 
                {
                  if (jotData[b].author_id == userID) 
                  {
                    userjotbox.append('<tr>' + '<td>' + jotData[b].time_stamp + '</td>' + '<td>' + jotData[b].threadfocus + '</td>' + '<td>' + 'Our Problem: ' + jotData[b].ourproblem + '</td>' + '<td>' + jotData[b].bigidea + '</td>' + '</tr>');
                  }
                }
              }
          }
        }
    }
  }
  send(new Array('/activity_raderjsp.anonymous881', ':::EXIT918', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('b', b), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('note', note), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('p', p), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token), addVariable('userID', userID), addVariable('userjotbox', userjotbox), addVariable('userjournalsbox', userjournalsbox), addVariable('usernotesbox', usernotesbox), addVariable('y', y))));
});
function initWRadar(time) {
  send(new Array('/activity_raderjsp.initWRadar', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_highlights', num_highlights), addVariable('num_jot', num_jot), addVariable('num_my_post', num_my_post), addVariable('num_new_post', num_new_post), addVariable('num_thread', num_thread), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('time', time), addVariable('token', token), addVariable('tr', tr))));
  if (time != 't') 
  {
    document.getElementById("datepicker-1").value = "";
    document.getElementById("datepicker-2").value = "";
    document.getElementById("datepicker-3").value = "";
  }
  area_time = time;
  $("#wondering_area_box").empty().html();
  $("#wondering_area_box").html("<tr>" + "<th>Wondering area</th>" + "<th>Threads</th>" + "<th>new posts</th>" + "<th>my posts</th>" + "<th>build-ons to my posts</th>" + "<th>new highlights</th>" + "<th>updated Journey of Thinking</th>" + "</tr>");
  var bound_time = new Date("1966-06-07T14:51:16.195Z");
  var d = new Date();
  if (null != time) 
  {
    switch (time) {
      case "h":
        bound_time = d.setHours(d.getHours() - 1);
        break;
      case "d":
        bound_time = d.setDate(d.getDate() - 1);
        break;
      case "w":
        bound_time = d.setDate(d.getDate() - 7);
        break;
      case "t":
        if (selection == 1) 
        {
          bound_time = d.setDate((new Date($("#datepicker-1").val())).getDate());
        } else if (selection == 2) 
        {
          bound_time = d.setDate((new Date($("#datepicker-2").val())).getDate());
        } else {
          bound_time = d.setDate((new Date($("#datepicker-3").val())).getDate());
        }
        break;
    }
  }
  if (null != area && "" != area) 
  {
    for (var i in area) 
      {
        var num_thread = 0;
        var num_new_post = 0;
        var num_my_post = 0;
        var num_build_on = 0;
        var num_highlights = 0;
        var num_jot = 0;
        if (null != area[i].thread && "" != area[i].thread) 
        {
          for (var j in area[i].thread) 
            {
              var thread = area[i].thread[j];
              num_thread = num_thread + 1;
              if ("undefined" != typeof (thread.jot)) 
              {
                for (var k in thread.jot) 
                  {
                    if (new Date(thread.jot[k].time_stamp).getTime() > new Date(bound_time).getTime()) 
                    {
                      num_jot = num_jot + 1;
                    }
                  }
              }
              if (null != thread.notes) 
              {
                for (var k in thread.notes) 
                  {
                    if ("undefined" != typeof (thread.notes[k].highlight)) 
                    {
                      for (var m in thread.notes[k].highlight) 
                        {
                          if (new Date(thread.notes[k].highlight[m].create_time).getTime() > new Date(bound_time).getTime()) 
                          {
                            num_highlights = num_highlights + 1;
                          }
                        }
                    }
                    if (new Date(thread.notes[k].create_time).getTime() > new Date(bound_time).getTime()) 
                    {
                      num_new_post = num_new_post + 1;
                      if ("undefined" != typeof (thread.notes[k].isMyNote)) 
                      {
                        if (thread.notes[k].isMyNote) 
                        {
                          num_my_post = num_my_post + 1;
                        }
                      }
                    }
                    if ("undefined" != typeof (thread.notes[k].buildon)) 
                    {
                      for (var m in thread.notes[k].buildon) 
                        {
                          if (new Date(thread.notes[k].buildon[m].create_time).getTime() > new Date(bound_time).getTime()) 
                          {
                            num_build_on = num_build_on + 1;
                          }
                        }
                    }
                  }
              }
            }
        }
        var tr = $("#wondering_area_box");
        tr.append('<tr><td> <a  href="#" ><i class="fa fa-plus " data-id="' + area[i].id + '"aria-hidden="true"></i></a>&nbsp;&nbsp;' + area[i].name + '</td>' + '<td>' + num_thread + '</td>' + '<td>' + num_new_post + '</td>' + '<td>' + num_my_post + '</td>' + '<td>' + num_build_on + '</td>' + '<td>' + num_highlights + '</td>' + '<td>' + num_jot + '</td>' + '</tr>');
      }
  }
  send(new Array('/activity_raderjsp.initWRadar', ':::EXIT1045', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('i', i), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_highlights', num_highlights), addVariable('num_jot', num_jot), addVariable('num_my_post', num_my_post), addVariable('num_new_post', num_new_post), addVariable('num_thread', num_thread), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('time', time), addVariable('token', token), addVariable('tr', tr))));
}
$(document).delegate('.fa-minus', 'click', function() {
  send(new Array('/activity_raderjsp.anonymous1115', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('i', i), addVariable('id', id), addVariable('idx', idx), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('th', th), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  $(this).removeClass("fa-minus").addClass("fa-plus");
  var idx = $(this).data("id") + "";
  if (!(idx.indexOf("member") >= 0)) 
  {
    if (null != area[$(this).data("id")].thread) 
    {
      for (var i in area[$(this).data("id")].thread) 
        {
          var thread = area[$(this).data("id")].thread[i];
          $(".addon" + $(this).data("id")).remove();
        }
    }
  } else {
    var id = $(this).data("id").split(" ");
    if (null != members[id[0]].threads) 
    {
      var th = members[id[0]].threads;
      for (var i in th) 
        {
          var thread = th[i];
          $(".addon" + thread.id).remove();
        }
    }
  }
  send(new Array('/activity_raderjsp.anonymous1115', ':::EXIT1118', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('i', i), addVariable('id', id), addVariable('idx', idx), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('th', th), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
$(document).delegate('.fa-plus', 'click', function() {
  send(new Array('/activity_raderjsp.anonymous1141', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('b', b), addVariable('bld', bld), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('i', i), addVariable('id', id), addVariable('ids', ids), addVariable('idx', idx), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('note', note), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_highlights', num_highlights), addVariable('num_jot', num_jot), addVariable('num_my_post', num_my_post), addVariable('num_new_post', num_new_post), addVariable('num_notes', num_notes), addVariable('num_thread', num_thread), addVariable('num_words', num_words), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('thrs', thrs), addVariable('token', token), addVariable('tr', tr), addVariable('wordArr', wordArr), addVariable('words', words))));
  var bound_time = new Date("1966-06-07T14:51:16.195Z");
  var d = new Date();
  if (null != area_time) 
  {
    switch (area_time) {
      case "h":
        bound_time = d.setHours(d.getHours() - 1);
        break;
      case "d":
        bound_time = d.setDate(d.getDate() - 1);
        break;
      case "w":
        bound_time = d.setDate(d.getDate() - 7);
        break;
      case "t":
        if (selection == 1) 
        {
          bound_time = d.setDate((new Date($("#datepicker-1").val())).getDate());
        } else if (selection == 2) 
        {
          bound_time = d.setDate((new Date($("#datepicker-2").val())).getDate());
        } else {
          bound_time = d.setDate((new Date($("#datepicker-3").val())).getDate());
        }
        break;
    }
  }
  var tr = $(this.parentElement.parentElement.parentElement);
  $(this).removeClass("fa-plus").addClass("fa-minus");
  var idx = $(this).data("id") + "";
  if (!(idx.indexOf("member") >= 0)) 
  {
    if (null != area[$(this).data("id")].thread) 
    {
      for (var i in area[$(this).data("id")].thread) 
        {
          var num_thread = 0;
          var num_new_post = 0;
          var num_my_post = 0;
          var num_build_on = 0;
          var num_highlights = 0;
          var num_jot = 0;
          var thread = area[$(this).data("id")].thread[i];
          if ("undefined" != typeof (thread.jot)) 
          {
            for (var k in thread.jot) 
              {
                if (new Date(thread.jot[k].time_stamp).getTime() > new Date(bound_time).getTime()) 
                {
                  num_jot = num_jot + 1;
                }
              }
          }
          if (null != thread.notes) 
          {
            for (var j in thread.notes) 
              {
                if ("undefined" != typeof (thread.notes[j].highlight)) 
                {
                  for (var m in thread.notes[j].highlight) 
                    {
                      if (new Date(thread.notes[j].highlight[m].create_time).getTime() > new Date(bound_time).getTime()) 
                      {
                        num_highlights = num_highlights + 1;
                      }
                    }
                }
                if (new Date(thread.notes[j].create_time).getTime() > new Date(bound_time).getTime()) 
                {
                  num_new_post = num_new_post + 1;
                  if ("undefined" != typeof (thread.notes[j].isMyNote)) 
                  {
                    if (thread.notes[j].isHighlight) 
                    {
                      if (bound_time != "") 
                      {
                        num_highlights = num_highlights + 1;
                      }
                    }
                  }
                  if ("undefined" != typeof (thread.notes[j].isMyNote)) 
                  {
                    if (thread.notes[j].isMyNote) 
                    {
                      num_my_post = num_my_post + 1;
                    }
                  }
                }
              }
          }
          tr.after('<tr class="addon' + $(this).data("id") + '"><td colspan=2><a class="threadsclick"    href="#" id="' + thread.id + '">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + thread.threadfocus + '</a></td>' + '<td>&nbsp;' + num_new_post + '</td>' + '<td>&nbsp;' + num_my_post + '</td>' + '<td>&nbsp;' + num_build_on + '</td>' + '<td>&nbsp;' + num_highlights + '</td>' + '<td>&nbsp;' + num_jot + '</td>' + '</tr>');
        }
    }
  } else {
    var ids = $(this).data("id").split(" ");
    if (null != members[ids[0]].threads) 
    {
      var thrs = members[ids[0]].threads;
      for (var k in thrs) 
        {
          var num_notes = 0;
          var num_words = 0;
          var words = '';
          var num_jot = 0;
          var num_build_on = 0;
          if (jotData != null) 
          {
            for (var b in jotData) 
              {
                if (new Date(jotData[b].time_stamp).getTime() > new Date(bound_time).getTime()) 
                {
                  if (jotData[b].author_id == members[ids[0]].author_id && jotData[b].thread_id == thrs[k].thread_id) 
                  {
                    num_jot += 1;
                  }
                }
              }
          }
          if (new Date(thrs[k].create_time).getTime() > new Date(bound_time).getTime()) 
          {
            if (typeof (thrs[k].notes) != "undefined") 
            {
              var note = thrs[k].notes;
              for (var m in note) 
                {
                  if (note[m].author_id == ids[0]) 
                  {
                    num_notes = num_notes + 1;
                    if (note[m].content != '') 
                    {
                      if (words == '') 
                      {
                        words = note[m].content;
                      } else {
                        words = words + ' ' + note[m].content;
                      }
                    }
                    if (buildOn != null) 
                    {
                      for (var bld in buildOn) 
                        {
                          if (buildOn[bld].linktype == "buildson") 
                          {
                            if (buildOn[bld].to_note_id == note[m].note_id) 
                            {
                              num_build_on += 1;
                            }
                          }
                        }
                    }
                  }
                }
            }
          }
          if (words != '') 
          {
            var wordArr = words.split(' ');
            num_words = wordArr.length;
          }
          tr.after('<tr class="addon' + thrs[k].id + '"><td></td><td><a class="threadsclick"    href="#" id="' + thrs[k].id + '">' + thrs[k].threadfocus + '</a></td>' + '<td>' + num_notes + '</td>' + '<td>' + num_words + '</td>' + '<td>' + num_build_on + '</td>' + '<td>' + 0 + '</td>' + '<td>' + num_jot + '</td>' + '</tr>');
        }
    }
  }
  send(new Array('/activity_raderjsp.anonymous1141', ':::EXIT1174', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('b', b), addVariable('bld', bld), addVariable('bndTime', bndTime), addVariable('bound_time', bound_time), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('d', d), addVariable('i', i), addVariable('id', id), addVariable('ids', ids), addVariable('idx', idx), addVariable('isCrossProject', isCrossProject), addVariable('j', j), addVariable('jotData', jotData), addVariable('k', k), addVariable('localdb', localdb), addVariable('m', m), addVariable('members', members), addVariable('modal', modal), addVariable('note', note), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('num_build_on', num_build_on), addVariable('num_highlights', num_highlights), addVariable('num_jot', num_jot), addVariable('num_my_post', num_my_post), addVariable('num_new_post', num_new_post), addVariable('num_notes', num_notes), addVariable('num_thread', num_thread), addVariable('num_words', num_words), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('thrs', thrs), addVariable('token', token), addVariable('tr', tr), addVariable('wordArr', wordArr), addVariable('words', words))));
});
$(document).delegate('.threadsclick', 'click', function() {
  send(new Array('/activity_raderjsp.anonymous1317', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  window.open("../../thread/thread.jsp?localdb=" + localdb + "&community_id=" + community_id + "&project_id=" + project_id + "&thread_id=" + $(this)[0].id);
  send(new Array('/activity_raderjsp.anonymous1317', ':::EXIT1319', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
$(".side-nav").find(".blue-grey").removeClass('blue-grey');
$(".side-nav").find(".active").removeClass('active');
$(".side-nav").find(".show").removeClass('show');
$(".in-work-space").addClass("active blue-grey lighten-2 ");
$(".in-work-space-body").addClass("show");
$(".in-work").addClass("active");
$(function() {
  send(new Array('/activity_raderjsp.anonymous1338', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  $("#datepicker-1").datepicker({maxDate: 0});
  $("#datepicker-1").datepicker().on("change", function() {
  send(new Array('/activity_raderjsp.anonymous1342', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  selection = 1;
  initWRadar('t');
  send(new Array('/activity_raderjsp.anonymous1342', ':::EXIT1345', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
  $("#datepicker-2").datepicker({maxDate: 0});
  $("#datepicker-2").datepicker().on("change", function() {
  send(new Array('/activity_raderjsp.anonymous1351', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  selection = 2;
  initRadar('t');
  send(new Array('/activity_raderjsp.anonymous1351', ':::EXIT1354', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
  $("#datepicker-3").datepicker({maxDate: 0});
  $("#datepicker-3").datepicker().on("change", function() {
  send(new Array('/activity_raderjsp.anonymous1360', ':::ENTER', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
  selection = 3;
  initUserRadar('t');
  send(new Array('/activity_raderjsp.anonymous1360', ':::EXIT1363', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
  send(new Array('/activity_raderjsp.anonymous1338', ':::EXIT1360', new Array(addVariable('area', area), addVariable('area_time', area_time), addVariable('bndTime', bndTime), addVariable('buildOn', buildOn), addVariable('community_id', community_id), addVariable('community_name', community_name), addVariable('id', id), addVariable('isCrossProject', isCrossProject), addVariable('jotData', jotData), addVariable('localdb', localdb), addVariable('members', members), addVariable('modal', modal), addVariable('noteIds', noteIds), addVariable('notes', notes), addVariable('path', path), addVariable('project', project), addVariable('project_id', project_id), addVariable('selection', selection), addVariable('span', span), addVariable('thread', thread), addVariable('thread_time', thread_time), addVariable('token', token))));
});
</script>  
 </body>
</html>