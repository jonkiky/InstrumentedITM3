<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> --><!doctype html>
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../css/customerize.css" media="screen,projection"> 
  <script src="../js/d3.v3.min.js"></script> 
  <script src="../js/d3.tip.v0.6.3.js"></script> 
  <!--Let browser know website is optimized for mobile--> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
  <script src="../js/plotly-latest.min.js"></script> 
  <script src="../js/jquery-3.1.0.js"></script> 
  <script src="../js/jquery-ui.js"></script> 
  <script src="../js/jquery.sessionTimeout.js"></script> 
  <script type="text/javascript" src="../js/materialize.min.js"></script> 
  <style>
main {
    position: absolute;
    bottom: 0;
    top: 50px;
    width: 100%;
        word-wrap: break-word;
    word-break: break-word;
}

.jot-content div:last-child {
    border-bottom: 0px;
}
td{
    vertical-align: top;
    
   }
#graph-container {
	
	margin: 0px;
}

.brand-logo {
	height: 100px;
}

#resizable {
	width: 150px;
	height: 150px;
	padding: 0.5em;
}

.tabs .indicator {
	color: black;
	background-color: black;
}

.modal {
	width: 100% !important
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
	width: 90%;
	    height: calc(100% - 50px);
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

.collapsible-body {
	padding: 0px !important;
}


.jot-content div:last-child {
    border-bottom: 0px solid;
}

.jot-thread-content
{
    border-bottom: 1px solid;
}
#jofmodal{
top:0px !important
}

</style> 
 </head> 
 <body> 
  <header> 
   <!-- <%@ include file="../header.jsp" %>
		<%@ include file="../side_menu_hidden.jsp" %> --> 
  </header> 
  <main id="pdf_test"> 
   <br> 
   <div class="container" id="content"> 
    <div class="row" style=" height: calc(100% - 22px);"> 
     <div class="col s12"> 
      <ul class="tabs tabs-fixed-width"> 
       <li class="tab col s3 blue-grey lighten-5"><a href="#test1" class="blue-grey-text">Buddy projects</a></li> 
       <li class="tab col s3 blue-grey lighten-5"><a href="#test2" class="blue-grey-text">Resource projects</a></li> 
      </ul> 
     </div> 
     <div id="test1" class="col s12" style="height: 100%;"> 
      <div class="col s9" style="border-right: 1px solid;height: 100%;"> 
       <h6> <p> <u>Buddy projects from the current database/community</u> <a id="jof" style="line-height: 20px; height: 20px" class="btn right">journey of thinking</a> </p> </h6> 
       <div class="col s12" id="buddyproject"> 
        <div class="col s12" id="buddyprojectcontent" style="padding-bottom: 20px;"> 
        </div> 
       </div> 
       <div class="col s6" id="graph-container"></div> 
      </div> 
      <div class="col s3"> 
       <p style="font-size: 20px"> <u>"Super talk" across-classroom</u> </p> 
       <!-- <div id="editor"></div>
				<button id="cmd">generate PDF</button> --> 
       <a href="#" id="post_challenge" class="btn">Post a "Super talk" topic</a> 
       <div class="divider"></div> 
       <br> 
       <p style="font-size: 15px">List of existing "super talk" topics:</p> 
       <div class="divider"></div> 
       <div id="super-talk-list"> 
       </div> 
      </div> 
     </div> 
     <div id="test2" class="col s12" style="height: 740px;"></div> 
    </div> 
   </div> 
  </main> 
  <div id="add_field_modal" class="modal modal-fixed-footer"> 
   <div class="modal-content"> 
    <div class="container"> 
     <div class="row"> 
      <canvas class="col s7" id="canvas" width="650" height="1000"></canvas> 
      <div class="col s5"> 
       <ul class="collection with-header" id="jot"> 
       </ul> 
      </div> 
     </div> 
    </div> 
   </div> 
  </div> 
  <div id="thread_modal" class="modal modal-fixed-footer"> 
   <div class="modal-content"> 
    <div class="container"> 
     <div class="row"></div> 
    </div> 
   </div> 
  </div> 
  <div id="post_challenge_modal" class="modal modal-fixed-footer"> 
   <div class="modal-content"> 
    <div class="container"> 
     <div class="row"> 
      <p style="font-size: 20px; text-align: center">Post a "big question" to invite ideas from other classrooms</p> 
      <div class="input-field col s12"> 
       <input id="thread_name" type="text" class="validate"> 
       <label for="thread_name">Super talk name:</label> 
      </div> 
      <div class="input-field col s12"> 
       <input id="question" type="text" class="validate"> 
       <label for="question">Challenge question</label> 
      </div> 
      <div class="input-field col s12"> 
       <select multiple id="teacher"> </select> 
       <label>Proposed by</label> 
      </div> 
      <div class="input-field col s12"> 
       <input id="detail" type="text" class="validate"> 
       <label for="detail">Say more about your question to help other classrooms understand:</label> 
      </div> 
      <div class="input-field col s12"> 
       <input id="know_now" type="text" class="validate"> 
       <label for="know_now">What do you and your peers know about this issue now?</label> 
      </div> 
      <form action="#" class="col s12"> 
       <p style="font-size: 20px; text-align: center">Related idea thread(s) from your classroom:</p> 
       <div id="thread-list"> 
       </div> 
      </form> 
     </div> 
    </div> 
   </div> 
   <div class="modal-footer"> 
    <a href="#!" id="btn_super_talk_add" class="modal-action modal-close waves-effect waves-green btn-flat ">Submit</a> 
    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Cancel</a> 
   </div> 
  </div> 
  <div id="jofmodal" class="modal modal-fixed-footer" style="top: 0 !important;max-height: 100%;height: 100%;bottom: 0;width:100%"> 
   <div id="pdf_print" class="modal-content"> 
    <h4 class="center">Journey of Thinking</h4> 
    <div class="container" style="margin-left: 0; margin-right: 0;width:100%;max-width: 2880px; "> 
     <div id="jot_content" class="row" style="border: 1px solid;word-wrap: break-word;  margin-left: 0; margin-right: 0;"> 
     </div> 
    </div> 
   </div> 
   <div id="editor"></div> 
   <div class="modal-footer"> 
    <a href="#!" id="cmd" class="modal-action modal-close waves-effect waves-green btn-flat ">Download</a> 
    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Close</a> 
   </div> 
  </div> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../js/itm.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /cross_project_sharingjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var wondering_area_id = [];
var wondering_area_name = [];
var localdb = '<%=session.getAttribute("localdb")%>';
var token = '<%=session.getAttribute("token")%>';
var super_token = '<%=session.getAttribute("super_token")%>';
var community = '<%=session.getAttribute("community")%>';
var c_id = '<%=session.getAttribute("community_id")%>';
var community_id = getUrlParameter("community_id");
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
var project_name = "";
var project = "";
var all_project_id = [];
var data_for_visualization = [];
var viz_id = [];
function showWordCloud(cid, pid, tid) {
  send(new Array('/cross_project_sharingjsp.showWordCloud', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.showWordCloud', ':::EXIT32', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return '<iframe src="' + window.location.protocol + '//' + window.location.host + '/ITM3/thread/wordcloud.jsp?' + 'projectid=' + pid + '&communityid=' + cid + '&threadid=' + tid + '" height="350" frameborder="0" width="' + eval(window.innerWidth * 0.7 - 50) + '"></iframe>';
}
$(document).ready(function() {
  send(new Array('/cross_project_sharingjsp.anonymous37', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  function get_community_info() {
    send(new Array('/cross_project_sharingjsp.get_community_info', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    if (null != community_id) 
    {
      var userdata = {"database": "itm3", "token": token, "cid": community_id};
      $.ajax({url: "/WSG/community/byid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous52', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    community_id = getUrlParameter("community_id");
    community_name = json[0].community_name;
  } else {
    console.log("do not find this community");
  }
  get_project_info();
  send(new Array('/cross_project_sharingjsp.anonymous52', ':::EXIT60', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous62', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  setTimeout(function() {
  send(new Array('/cross_project_sharingjsp.anonymous63', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  Materialize.toast('Invalid URL', 4000);
  window.history.back();
  send(new Array('/cross_project_sharingjsp.anonymous63', ':::EXIT65', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, 3000);
  send(new Array('/cross_project_sharingjsp.anonymous62', ':::EXIT63', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    } else {
      setTimeout(function() {
  send(new Array('/cross_project_sharingjsp.anonymous70', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  Materialize.toast('Invalid URL', 4000);
  window.history.back();
  send(new Array('/cross_project_sharingjsp.anonymous70', ':::EXIT72', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, 3000);
    }
    send(new Array('/cross_project_sharingjsp.get_community_info', ':::EXIT41', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  function get_project_info() {
    send(new Array('/cross_project_sharingjsp.get_project_info', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    if (null != project_id) 
    {
      var userdata = {"database": localdb, "token": token, "projectid": project_id};
      $.ajax({url: "/WSG/project/get/byid", type: "POST", data: JSON.stringify(userdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous93', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    project_name = json[0].title;
    $("#page_title").html('<a href="../dashboard.jsp">' + community_name + '</a>-><a href="../project/openedit.jsp?community_id=' + community_id + '&localdb=' + localdb + '">' + json[0].title + '  Dashboard</a>');
  } else {
    console.log("do not find this project");
  }
  send(new Array('/cross_project_sharingjsp.anonymous93', ':::EXIT95', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous103', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  setTimeout(function() {
  send(new Array('/cross_project_sharingjsp.anonymous104', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/cross_project_sharingjsp.anonymous104', ':::EXIT105', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, 3000);
  send(new Array('/cross_project_sharingjsp.anonymous103', ':::EXIT104', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    } else {
      setTimeout(function() {
  send(new Array('/cross_project_sharingjsp.anonymous111', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  Materialize.toast('Invalid URL', 4000);
  send(new Array('/cross_project_sharingjsp.anonymous111', ':::EXIT112', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, 3000);
    }
    send(new Array('/cross_project_sharingjsp.get_project_info', ':::EXIT82', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('userdata', userdata), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  $(".modal").modal();
  $("#jof").click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous123', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('url', url), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var url = window.location.href.replace("cross_project_sharing", "cross_project_jot");
  window.open(url, '_blank');
  send(new Array('/cross_project_sharingjsp.anonymous123', ':::EXIT126', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('url', url), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  $(".button-collapse").sideNav();
  $("#show_slide").click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous130', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  $('.button-collapse').sideNav('show');
  send(new Array('/cross_project_sharingjsp.anonymous130', ':::EXIT131', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  Materialize.updateTextFields();
  $("#post_challenge").click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous134', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  $("#post_challenge_modal").modal("open");
  send(new Array('/cross_project_sharingjsp.anonymous134', ':::EXIT135', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  $('select').material_select();
  $('.materialboxed').materialbox();
  $('select').on('contentChanged', function() {
  send(new Array('/cross_project_sharingjsp.anonymous142', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  $(this).material_select();
  send(new Array('/cross_project_sharingjsp.anonymous142', ':::EXIT144', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  var jsondata = {"database": "itm3", "token": '<%=session.getAttribute("token")%>', "projectid": parseInt($("#projectid").text()), "localdb": "localdb"};
  $(".thread").click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous154', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  console.log($(this)[0].id);
  $.ajax({url: '../SET_THREAD_FOCUS', type: 'POST', data: {threadid: $(this)[0].id, threadname: $(this).text()}, success: function(response) {
  send(new Array('/cross_project_sharingjsp.anonymous164', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('response', response), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  window.location.href = "../thread/thread.jsp";
  send(new Array('/cross_project_sharingjsp.anonymous164', ':::EXIT166', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('response', response), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
  send(new Array('/cross_project_sharingjsp.anonymous154', ':::EXIT157', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  $(".project").click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous173', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  console.log($(this)[0].id);
  $.ajax({url: '../SET_PROJECT_FOCUS', type: 'POST', data: {projectid: $(this)[0].id, projectgoal: "Understand how the amazing human body works!", projectname: $(this).text()}, success: function(response) {
  send(new Array('/cross_project_sharingjsp.anonymous180', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('response', response), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  window.location.href = "../project/ourspace/dashboard.jsp";
  send(new Array('/cross_project_sharingjsp.anonymous180', ':::EXIT181', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('response', response), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
  send(new Array('/cross_project_sharingjsp.anonymous173', ':::EXIT176', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  function initUsers() {
    send(new Array('/cross_project_sharingjsp.initUsers', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    $("#teacher").empty().html(' ');
    $("#teacher").append($("<option selected></option>").attr("value", '<%=session.getAttribute("id")%>').text('<%=session.getAttribute("username")%>'));
    var json = JSON.parse(localStorage.users);
    if (null != json[0].id) 
    {
      for (var i in json) 
        {
          if (null != json[i].username) 
          {
            $("#teacher").append($("<option></option>").attr("value", json[i].str_id).text(json[i].first_name + "   " + json[i].last_name));
          }
          $("#teacher").trigger('contentChanged');
        }
    }
    send(new Array('/cross_project_sharingjsp.initUsers', ':::EXIT195', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  function init() {
    send(new Array('/cross_project_sharingjsp.init', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    get_community_info();
    initUsers();
    var json = {"database": 'itm3', "token": '<%=session.getAttribute("token")%>', "pid": '<%=session.getAttribute("projectid")%>', "cid": '<%=session.getAttribute("community_id")%>'};
    $.ajax({url: "/WSG/my_buddy_project/get", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous225', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jot_content_html', jot_content_html), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('section', section), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('tr', tr), addVariable('tr1', tr1), addVariable('type', type), addVariable('uniqueIds', uniqueIds), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      var section = {};
      for (var i in json) 
        {
          if (typeof (section[json[i].community_id]) == "undefined") 
          {
            section[json[i].community_id] = 1;
            $('#buddyprojectcontent').append("<div id='section_" + json[i].community_id + "'><h6><b>" + json[i].community + "</b></h6></div>");
            $('#jot_content').append("<div id='jot_" + json[i].community_id + "' style=\"word-wrap: break-word;\"></div>");
          }
          var tr = $('<div class="card horizontal" id="' + json[i].id + '"/>');
          var html = ' <div class="card-image"><img style="height:100px; width:75px;margin-top:33px" id="project_img_' + json[i].id + json[i].community_id + '"  src="' + json[i].logo + '"></div><div class="card-stacked"><div class="card-content" ><h6><strong><span id="project_title_' + json[i].id + json[i].community_id + '">' + json[i].project_title + '</span><br></strong></h6><p>&nbsp;<strong>Project goal:</strong> <span id="project_goal_' + json[i].id + json[i].community_id + '">' + '</span><br><strong>&nbsp;Curriculum area: </strong> <span id="project_area_' + json[i].id + json[i].community_id + '">' + '</span><br><strong>&nbsp;Teacher(s): </strong><span id="project_teacher_' + json[i].id + json[i].community_id + '"> ' + '</span><br><strong>&nbsp;Grade : </strong><span id="project_grade_level_' + json[i].id + json[i].community_id + '">';
          html = html + '<span></p><br><a href="javascript:enterProject(' + json[i].project_id + ',\'' + json[i].localdb + '\',\'' + json[i].community_id + '\',\'' + json[i].school + '\');" class="btn col s3">Enter</a> <a id="btn_' + json[i].project_id + i + '" style="margin-left:10px" onclick="toggleVisualization(' + json[i].project_id + i + ',' + json[i].project_id + ',\'' + json[i].localdb + '\',\'' + json[i].community_id + '\')" class="btn col s8">Show wondering areas and idea threads</a>';
          html = html + '</p>';
          html = html + '</div></div>';
          tr.append(html);
          $('#section_' + json[i].community_id).append(tr);
          var tr1 = $('<div style="display:none;border:1px solid grey" id="tree_' + json[i].project_id + i + '"></div>');
          viz_id.push("#tree_" + json[i].project_id + i);
          $('#section_' + json[i].community_id).append(tr1);
          all_project_id.push(json[i].project_id);
          var uniqueIds = [];
          $.each(all_project_id, function(i, el) {
  send(new Array('/cross_project_sharingjsp.anonymous258', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('el', el), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jot_content_html', jot_content_html), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('section', section), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('tr', tr), addVariable('tr1', tr1), addVariable('type', type), addVariable('uniqueIds', uniqueIds), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if ($.inArray(el, uniqueIds) === -1) 
  uniqueIds.push(el);
  send(new Array('/cross_project_sharingjsp.anonymous258', ':::EXIT259', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('el', el), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jot_content_html', jot_content_html), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('section', section), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('tr', tr), addVariable('tr1', tr1), addVariable('type', type), addVariable('uniqueIds', uniqueIds), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
          if (parseInt(i) + 1 != json.length) 
          {
            var jot_content_html = "<div id='jot_" + json[i].community_id + json[i].id + "' class=\"row\" style=\"border-bottom: 1px solid;margin-bottom: 0px; margin-left: 0; margin-right: 0; \">" + "<table ><tr>" + "<td style='width:30%'>" + "<img style=\"width:181px;\"  id='jot_img_" + json[i].community_id + json[i].id + "' src='#'/>" + "\t<br>Project title\uff1a<a> <span  id='jot_title_" + json[i].community_id + json[i].id + "'></span></a>" + "\t<br>Teacher(s)\uff1a<span id='jot_teacher_" + json[i].community_id + json[i].id + "'>  </span>" + "\t<br>School:<span id='jot_school_" + json[i].community_id + json[i].id + "'>  </span><br>" + "</td>" + "<td style=\"border-left: 1px solid;min-height: 150px; solid;width:70%\" class='jot-content'  id='jot_content_" + json[i].community_id + json[i].project_id + "'>" + "</td></tr>" + "</table >";
            $('#jot_' + json[i].community_id).append(jot_content_html);
          } else {
            var jot_content_html = "<div id='jot_" + json[i].community_id + json[i].id + "' class=\"row\" style=\"margin-bottom: 0px; margin-left: 0; margin-right: 0; \">" + "<table ><tr>" + "<td style='width:30%'>" + "<img style=\"width:181px;\"  id='jot_img_" + json[i].community_id + json[i].id + "' src='#'/>" + "\t<br>Project title\uff1a<a> <span  id='jot_title_" + json[i].community_id + json[i].id + "'></span></a>" + "\t<br>Teacher(s)\uff1a<span id='jot_teacher_" + json[i].community_id + json[i].id + "'>  </span>" + "\t<br>School:<span id='jot_school_" + json[i].community_id + json[i].id + "'>  </span><br>" + "</td>" + "<td style=\"border-left: 1px solid;min-height: 150px; solid;width:70%\"  class='jot-content'  id='jot_content_" + json[i].community_id + json[i].project_id + "'>" + "</td></tr>" + "</table >";
            $('#jot_' + json[i].community_id).append(jot_content_html);
          }
          initProject(json[i].localdb, json[i].project_id, json[i].id, json[i].community_id);
        }
      initSuperTalkList(json);
    }
  }
  send(new Array('/cross_project_sharingjsp.anonymous225', ':::EXIT227', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jot_content_html', jot_content_html), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('section', section), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('tr', tr), addVariable('tr1', tr1), addVariable('type', type), addVariable('uniqueIds', uniqueIds), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous300', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  console.log(jqXHR.responseText);
  send(new Array('/cross_project_sharingjsp.anonymous300', ':::EXIT302', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    send(new Array('/cross_project_sharingjsp.init', ':::EXIT220', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  init();
  function initProject(localdb, projectId, id, cid) {
    send(new Array('/cross_project_sharingjsp.initProject', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    var json = {"database": localdb, "token": super_token, "pid": projectId, "projectid": projectId};
    $.ajax({url: "/WSG/project/get/byid", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous326', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      $('#project_img_' + id + cid).attr("src", json[0].logo);
      $('#project_goal_' + id + cid).html(json[0].goal);
      $('#project_title_' + id + cid).html(json[0].title);
      $("#jot_img_" + cid + id).attr("src", json[0].logo);
      $("#jot_title_" + cid + id).html(json[0].title);
      $("#jot_school_" + cid + id).html(json[0].school);
    }
  }
  send(new Array('/cross_project_sharingjsp.anonymous326', ':::EXIT327', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    $.ajax({url: "/WSG/project/teacher/get/byid", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous349', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jot_names', jot_names), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('names', names), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      var names = "";
      var jot_names = "";
      for (var i in json) 
        {
          names += json[i].first_name + "    " + json[i].last_name + ",";
          jot_names += json[i].first_name + "    " + json[i].last_name + ",";
        }
      $('#project_teacher_' + id + cid).append(names.substring(0, name.length - 1));
      $("#jot_teacher_" + cid + id).append(jot_names.substring(0, jot_names.length - 1));
    }
  }
  send(new Array('/cross_project_sharingjsp.anonymous349', ':::EXIT350', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jot_names', jot_names), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('names', names), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    $.ajax({url: "/WSG/project/grade/get/byid", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous374', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('grade', grade), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      var grade = "";
      for (var i in json) 
        {
          grade += json[i].title + ",";
        }
      $('#project_grade_level_' + id + cid).append(grade.substring(0, grade.length - 1));
    }
  }
  send(new Array('/cross_project_sharingjsp.anonymous374', ':::EXIT375', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('grade', grade), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    $.ajax({url: "/WSG/project/curriculum/get/byid", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous397', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if (data.code == "success") 
  {
    if ($.trim(data.desc) != $.trim("No data aviliable.")) 
    {
      var json = $.parseJSON(data.obj);
      for (var i in json) 
        {
          $('#project_area_' + id + cid).append(json[i].name + ",  ");
        }
    }
  }
  send(new Array('/cross_project_sharingjsp.anonymous397', ':::EXIT398', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    send(new Array('/cross_project_sharingjsp.initProject', ':::EXIT392', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  initWondering_areaThread();
  function initWondering_areaThread() {
    send(new Array('/cross_project_sharingjsp.initWondering_areaThread', ':::ENTER', new Array(addVariable('all_buddy_project_id', all_buddy_project_id), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    var all_buddy_project_id = [];
    var json = {"database": 'itm3', "token": token, "pid": '<%=session.getAttribute("projectid")%>', "cid": '<%=session.getAttribute("community_id")%>'};
    $.ajax({url: "/WSG/my_buddy_project/get", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous430', ':::ENTER', new Array(addVariable('all_buddy_project_id', all_buddy_project_id), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var json = $.parseJSON(data.obj);
  if (null != json) 
  {
    for (var i = 0; i < json.length; i++) 
      {
        all_buddy_project_id.push(json[i].project_id);
      }
  }
  send(new Array('/cross_project_sharingjsp.anonymous430', ':::EXIT432', new Array(addVariable('all_buddy_project_id', all_buddy_project_id), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous440', ':::ENTER', new Array(addVariable('all_buddy_project_id', all_buddy_project_id), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  console.log(jqXHR.responseText);
  send(new Array('/cross_project_sharingjsp.anonymous440', ':::EXIT442', new Array(addVariable('all_buddy_project_id', all_buddy_project_id), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
    send(new Array('/cross_project_sharingjsp.initWondering_areaThread', ':::EXIT425', new Array(addVariable('all_buddy_project_id', all_buddy_project_id), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  send(new Array('/cross_project_sharingjsp.anonymous37', ':::EXIT415', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
function enterProject(ProjectId, crossdb, cid, cname) {
  send(new Array('/cross_project_sharingjsp.enterProject', ':::ENTER', new Array(addVariable('ProjectId', ProjectId), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('cname', cname), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('crossdb', crossdb), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('role', role), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  if (cid == '<%=session.getAttribute("community_id")%>') 
  {
    var role = 0;
    var json = JSON.parse(localStorage.projects);
    for (var i in json) 
      {
        if (null != json[i]) 
        {
          if (json[i].id == ProjectId) 
          {
            if (json[i].isMyProject) 
            {
              role = 3;
            }
          }
        }
      }
    $.ajax({url: '../SET_PROJECT_FOCUS', type: 'POST', data: {'projectid': ProjectId, 'projectrole': role}, success: function(response) {
  send(new Array('/cross_project_sharingjsp.anonymous470', ':::ENTER', new Array(addVariable('ProjectId', ProjectId), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('cname', cname), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('crossdb', crossdb), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('response', response), addVariable('role', role), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  window.location.href = "../project/ourspace/dashboard.jsp?project_id=" + ProjectId + "&localdb=" + crossdb + "&community_id=" + cid;
  send(new Array('/cross_project_sharingjsp.anonymous470', ':::EXIT471', new Array(addVariable('ProjectId', ProjectId), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('cname', cname), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('crossdb', crossdb), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('response', response), addVariable('role', role), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}});
  } else {
    window.location.href = "../project/ourspace/dashboard.jsp?project_id=" + ProjectId + "&localdb=" + crossdb + "&community_id=" + cid;
  }
  send(new Array('/cross_project_sharingjsp.enterProject', ':::EXIT452', new Array(addVariable('ProjectId', ProjectId), addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('cname', cname), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('crossdb', crossdb), addVariable('data_for_visualization', data_for_visualization), addVariable('domain', domain), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('localdb', localdb), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('role', role), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}
var threadname = [];
var wonderingarea = [];
var projecttitle = [];
function drawVisualization(nof_node, data_for_visualization, id, db, community_id, project_id) {
  send(new Array('/cross_project_sharingjsp.drawVisualization', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var projectData = $.parseJSON(data_for_visualization);
  var count = 0;
  var dataMap = projectData.reduce(function(map, node) {
  send(new Array('/cross_project_sharingjsp.anonymous489', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('map', map), addVariable('margin', margin), addVariable('node', node), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  map[node.name] = node;
  ++count;
  send(new Array('/cross_project_sharingjsp.anonymous489', ':::EXIT492', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('map', map), addVariable('margin', margin), addVariable('node', node), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return map;
}, {});
  var treeData = [];
  projectData.forEach(function(node) {
  send(new Array('/cross_project_sharingjsp.anonymous496', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nof_node', nof_node), addVariable('parent', parent), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var parent = dataMap[node.parent];
  if (parent) 
  {
    (parent.children || (parent.children = [])).push(node);
  } else {
    treeData.push(node);
  }
  send(new Array('/cross_project_sharingjsp.anonymous496', ':::EXIT498', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nof_node', nof_node), addVariable('parent', parent), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
  var count = treeData[0].children.length >= nof_node - treeData[0].children.length ? treeData[0].children.length : nof_node - treeData[0].children.length;
  var margin = {top: 10, right: 20, bottom: -50, left: 120}, width = 800 - margin.right - margin.left, height = count * 30 - margin.top - margin.bottom;
  var i = 0;
  var tree = d3.layout.tree().size([height, width]);
  var diagonal = d3.svg.diagonal().projection(function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous516', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.anonymous516', ':::EXIT516', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return [d.y, d.x];
});
  var svg = d3.select("#" + id).append("svg").attr("viewBox", "0 0 " + (width + margin.right + margin.left) + " " + (height + 30)).attr("preserveAspectRatio", "xMidYMid meet").append("g").attr("transform", "translate(" + margin.left + "," + margin.top + ")");
  root = treeData[0];
  update(root);
  function update(source) {
    send(new Array('/cross_project_sharingjsp.update', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    var nodes = tree.nodes(root).reverse(), links = tree.links(nodes);
    nodes.forEach(function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous536', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  d.y = d.depth * 300;
  send(new Array('/cross_project_sharingjsp.anonymous536', ':::EXIT536', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
});
    var node = svg.selectAll("g.node").data(nodes, function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous539', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.anonymous539', ':::EXIT539', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return d.id || (d.id = ++i);
});
    var nodeEnter = node.enter().append("g").attr("class", "node").attr("transform", function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous543', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.anonymous543', ':::EXIT544', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return "translate(" + d.y + "," + d.x + ")";
}).on("click", click).attr('cursor', 'pointer');
    nodeEnter.append("circle").attr("r", 10).style("fill", "steelblue");
    nodeEnter.append("text").attr("x", function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous553', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.anonymous553', ':::EXIT554', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return d.children || d._children ? -13 : 13;
}).attr("dy", "20px").attr("size", "9px").attr("text-anchor", "middle").text(function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous558', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.anonymous558', ':::EXIT558', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return d.name;
}).style("fill-opacity", 1);
    var link = svg.selectAll("path.link").data(links, function(d) {
  send(new Array('/cross_project_sharingjsp.anonymous562', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  send(new Array('/cross_project_sharingjsp.anonymous562', ':::EXIT562', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  return d.target.id;
});
    link.enter().insert("path", "g").attr("class", "link").attr("fill", "none").attr("stroke-width", 1).style("stroke-opacity", 0.5).attr("stroke", "#666666").attr("d", diagonal);
    send(new Array('/cross_project_sharingjsp.update', ':::EXIT570', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('link', link), addVariable('links', links), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('node', node), addVariable('nodeEnter', nodeEnter), addVariable('nodes', nodes), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('source', source), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  function click(d) {
    send(new Array('/cross_project_sharingjsp.click', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
    if (d.children) 
    {
      d._children = d.children;
      d.children = null;
      if (threadname.length > 0) 
      {
        if (threadname.indexOf(d.name) !== -1) 
        {
          threadid = d._children[0].name;
          window.location.href = "thread.jsp?community_id=" + community_id + "&localdb=" + db + "&project_id=" + project_id + "&thread_id=" + threadid;
        }
      }
    } else {
      d.children = d._children;
      d._children = null;
      if (threadname.length > 0) 
      {
        if (threadname.indexOf(d.name) !== -1) 
        {
          threadid = d.children[0].name;
          window.location.href = "thread.jsp?community_id=" + community_id + "&localdb=" + db + "&project_id=" + project_id + "&thread_id=" + threadid;
        }
      }
    }
    update(d);
    send(new Array('/cross_project_sharingjsp.click', ':::EXIT593', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('d', d), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  }
  send(new Array('/cross_project_sharingjsp.drawVisualization', ':::EXIT572', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('count', count), addVariable('country', country), addVariable('dataMap', dataMap), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('diagonal', diagonal), addVariable('domain', domain), addVariable('height', height), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('margin', margin), addVariable('nof_node', nof_node), addVariable('project', project), addVariable('projectData', projectData), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('svg', svg), addVariable('threadname', threadname), addVariable('token', token), addVariable('tree', tree), addVariable('treeData', treeData), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('width', width), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}
function getDataForVisualization(project_id, id, obj, db, community_id) {
  send(new Array('/cross_project_sharingjsp.getDataForVisualization', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
  var projectdata = {"database": db, "token": '<%=session.getAttribute("super_token")%>', "project_id": project_id};
  $.ajax({url: "/WSG/project/wondering_area/thread/get", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous608', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  var json = $.parseJSON(data.obj);
  if (json != null) 
  {
    for (var j = 0; j < json.length; j++) 
      {
        threadname.push(json[j].thread_name);
        wonderingarea.push(json[j].wondering_area);
        projecttitle.push(json[j].project_title);
      }
    var nest = d3.nest().key(function(json) {
  send(new Array('/cross_project_sharingjsp.anonymous619', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  send(new Array('/cross_project_sharingjsp.anonymous619', ':::EXIT620', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  return json.project_title;
}).key(function(json) {
  send(new Array('/cross_project_sharingjsp.anonymous622', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  send(new Array('/cross_project_sharingjsp.anonymous622', ':::EXIT623', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  return json.wondering_area;
}).key(function(json) {
  send(new Array('/cross_project_sharingjsp.anonymous625', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  send(new Array('/cross_project_sharingjsp.anonymous625', ':::EXIT626', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  return json.thread_name;
}).key(function(json) {
  send(new Array('/cross_project_sharingjsp.anonymous628', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  send(new Array('/cross_project_sharingjsp.anonymous628', ':::EXIT629', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  return json.thread_id;
}).entries(json);
    var nest1 = JSON.stringify(nest);
    projectData1 = nest1;
    var regex = new RegExp("key", 'g');
    projectData1 = projectData1.replace(regex, 'name');
    var regex1 = new RegExp("values", 'g');
    projectData1 = projectData1.replace(regex1, 'children');
    drawVisualization(json.length, projectData1, id, db, community_id, project_id);
  } else {
    var x = document.getElementById('tree_' + obj);
    x.style.display = 'none';
    $("#btn_" + obj).text("Show wondering areas and idea threads");
    Materialize.toast('No wondering area and idea thread available for this project.', 3500);
  }
  send(new Array('/cross_project_sharingjsp.anonymous608', ':::EXIT611', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data', data), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('localdb', localdb), addVariable('nest', nest), addVariable('nest1', nest1), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('regex', regex), addVariable('regex1', regex1), addVariable('school', school), addVariable('super_token', super_token), addVariable('textStatus', textStatus), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
}});
  send(new Array('/cross_project_sharingjsp.getDataForVisualization', ':::EXIT603', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projectdata', projectdata), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea))));
}
function toggleVisualization(obj, project_id, db, community_id) {
  send(new Array('/cross_project_sharingjsp.toggleVisualization', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  var x = document.getElementById('tree_' + obj);
  var id = "tree_" + obj;
  if (x.style.display != 'block') 
  {
    x.style.display = 'block';
    setTimeout(function() {
  send(new Array('/cross_project_sharingjsp.anonymous662', ':::ENTER', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
  getDataForVisualization(project_id, id, obj, db, community_id);
  send(new Array('/cross_project_sharingjsp.anonymous662', ':::EXIT662', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
}, 1000);
    $("#btn_" + obj).text("Hide wondering areas and idea threads");
  } else {
    x.style.display = 'none';
    d3.select("#tree_" + obj + " svg").remove();
    $("#btn_" + obj).text("Show wondering areas and idea threads");
  }
  send(new Array('/cross_project_sharingjsp.toggleVisualization', ':::EXIT660', new Array(addVariable('all_project_id', all_project_id), addVariable('buddy_project_id', buddy_project_id), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('community_id', community_id), addVariable('country', country), addVariable('data_for_visualization', data_for_visualization), addVariable('db', db), addVariable('domain', domain), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project', project), addVariable('project_id', project_id), addVariable('project_name', project_name), addVariable('projecttitle', projecttitle), addVariable('school', school), addVariable('super_token', super_token), addVariable('threadname', threadname), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('viz_id', viz_id), addVariable('wondering_area_id', wondering_area_id), addVariable('wondering_area_name', wondering_area_name), addVariable('wonderingarea', wonderingarea), addVariable('x', x))));
}
</script> 
  <script src="../js/jspdf.min.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /cross_project_sharingjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var doc = new jsPDF();
var specialElementHandlers = {'#editor': function(element, renderer) {
  send(new Array('/cross_project_sharingjsp.anonymous3', ':::ENTER', new Array(addVariable('doc', doc), addVariable('element', element), addVariable('renderer', renderer), addVariable('specialElementHandlers', specialElementHandlers))));
  send(new Array('/cross_project_sharingjsp.anonymous3', ':::EXIT4', new Array(addVariable('doc', doc), addVariable('element', element), addVariable('renderer', renderer), addVariable('specialElementHandlers', specialElementHandlers))));
  return true;
}};
$('#cmd').click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous8', ':::ENTER', new Array(addVariable('doc', doc), addVariable('specialElementHandlers', specialElementHandlers))));
  doc.fromHTML($('#pdf_print').html(), 15, 15, {'width': 170, 'elementHandlers': specialElementHandlers});
  doc.save('sample-file.pdf');
  send(new Array('/cross_project_sharingjsp.anonymous8', ':::EXIT13', new Array(addVariable('doc', doc), addVariable('specialElementHandlers', specialElementHandlers))));
});
</script> 
  <script src="../js/sigma.min.js"></script> 
  <script src="../js/plugins/sigma.parsers.json.min.js"></script> 
  <script src="../js/itm.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /cross_project_sharingjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
function init_super_talke_thread() {
  send(new Array('/cross_project_sharingjsp.init_super_talke_thread', ':::ENTER', new Array(addVariable('projectdata', projectdata))));
  var projectdata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectid": '<%=session.getAttribute("projectid")%>'};
  $.ajax({url: "/WSG/project/thread/get", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous14', ':::ENTER', new Array(addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus))));
  var json = $.parseJSON(data.obj);
  console.log(json);
  if (null != json) 
  {
    $('#thread-list').html("");
    for (var i = 0; i < json.length; i++) 
      {
        var html = '<p><input type="checkbox" data-id="' + json[i].id + '"  id="thread' + json[i].id + '" /><label for="thread' + json[i].id + '">' + json[i].threadfocus + '</label></p>';
        $("#thread-list").append(html);
      }
  }
  send(new Array('/cross_project_sharingjsp.anonymous14', ':::EXIT17', new Array(addVariable('data', data), addVariable('html', html), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous29', ':::ENTER', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus))));
  send(new Array('/cross_project_sharingjsp.anonymous29', ':::EXIT0', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus))));
}});
  send(new Array('/cross_project_sharingjsp.init_super_talke_thread', ':::EXIT9', new Array(addVariable('projectdata', projectdata))));
}
init_super_talke_thread();
function add_super_talk_author(projectId, authorId) {
  send(new Array('/cross_project_sharingjsp.add_super_talk_author', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('author_str_id', author_str_id), addVariable('i', i), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('name', name), addVariable('projectId', projectId))));
  var json = JSON.parse(localStorage.users);
  var name = "";
  var author_str_id = "";
  if (null != json[0].id) 
  {
    for (var i in json) 
      {
        if (authorId = json[i].id) 
        {
          name = json[i].first_name + " " + json[i].last_name;
          author_str_id = json[i].str_id;
          break;
        }
      }
  }
  var jsondata = {"database": 'super_talk', "token": '<%=session.getAttribute("super_token")%>', "threadid": projectId, "username": name, "lname": "", "fname": "", "cid": community_id, "cname": community, "projectid": project_id, "authorid": author_str_id};
  $.ajax({url: "/WSG/supertalk/author/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous70', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('author_str_id', author_str_id), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('name', name), addVariable('projectId', projectId), addVariable('textStatus', textStatus))));
  console.log("add project author success");
  send(new Array('/cross_project_sharingjsp.anonymous70', ':::EXIT71', new Array(addVariable('authorId', authorId), addVariable('author_str_id', author_str_id), addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('name', name), addVariable('projectId', projectId), addVariable('textStatus', textStatus))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous73', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('author_str_id', author_str_id), addVariable('errorThrown', errorThrown), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('name', name), addVariable('projectId', projectId), addVariable('textStatus', textStatus))));
  console.log(jqXHR.responseText);
  send(new Array('/cross_project_sharingjsp.anonymous73', ':::EXIT74', new Array(addVariable('authorId', authorId), addVariable('author_str_id', author_str_id), addVariable('errorThrown', errorThrown), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('name', name), addVariable('projectId', projectId), addVariable('textStatus', textStatus))));
}});
  send(new Array('/cross_project_sharingjsp.add_super_talk_author', ':::EXIT65', new Array(addVariable('authorId', authorId), addVariable('author_str_id', author_str_id), addVariable('i', i), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('name', name), addVariable('projectId', projectId))));
}
$("#btn_super_talk_add").click(function() {
  send(new Array('/cross_project_sharingjsp.anonymous80', ':::ENTER', new Array(addVariable('projectdata', projectdata))));
  if ($("#thread_name").val() == "" || $("#question").val() == "") 
  {
    Materialize.toast('Supertalk name is required, Challenge question is required. ', 4000);
    send(new Array('/cross_project_sharingjsp.anonymous80', ':::EXIT87', new Array(addVariable('projectdata', projectdata))));
    return;
  }
  var projectdata = {"database": "super_talk", "token": '<%=session.getAttribute("super_token")%>', "thread_name": $("#thread_name").val().replace(/"/g, "\\\"").replace(/'/g, "\\'"), "question": $("#question").val().replace(/"/g, "\\\"").replace(/'/g, "\\'"), "dsc": $("#detail").val().replace(/"/g, "\\\"").replace(/'/g, "\\'"), "issues": $("#know_now").val().replace(/"/g, "\\\"").replace(/'/g, "\\'"), "createtime": new Date(), "community": '<%=session.getAttribute("community")%>', "cid": '<%=session.getAttribute("community_id")%>', "projectid": '<%=session.getAttribute("projectid")%>', "project_name": project_name.replace(/"/g, "\\\"").replace(/'/g, "\\'")};
  $.ajax({url: "/WSG/supertalk/add", type: "POST", data: JSON.stringify(projectdata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous111', ':::ENTER', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('projectdata', projectdata), addVariable('teacherIds', teacherIds), addVariable('textStatus', textStatus))));
  if (data.code == "failure") 
  {
    console.log(data.desc, "error");
  } else {
    thread_id = data.obj[0].GENERATED_KEY;
    if ($("#teacher").val() != "") 
    {
      var teacherIds = $("#teacher").val();
      for (var i in teacherIds) 
        {
          add_super_talk_author(thread_id, teacherIds[i]);
        }
    }
  }
  send(new Array('/cross_project_sharingjsp.anonymous111', ':::EXIT112', new Array(addVariable('data', data), addVariable('i', i), addVariable('jqXHR', jqXHR), addVariable('projectdata', projectdata), addVariable('teacherIds', teacherIds), addVariable('textStatus', textStatus))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/cross_project_sharingjsp.anonymous125', ':::ENTER', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus))));
  send(new Array('/cross_project_sharingjsp.anonymous125', ':::EXIT0', new Array(addVariable('errorThrown', errorThrown), addVariable('jqXHR', jqXHR), addVariable('projectdata', projectdata), addVariable('textStatus', textStatus))));
}});
  send(new Array('/cross_project_sharingjsp.anonymous80', ':::EXIT106', new Array(addVariable('projectdata', projectdata))));
});
function initSuperTalkList(buddy_project_list) {
  send(new Array('/cross_project_sharingjsp.initSuperTalkList', ':::ENTER', new Array(addVariable('buddy_project', buddy_project), addVariable('buddy_project_list', buddy_project_list), addVariable('json', json))));
  var buddy_project = buddy_project_list;
  var json = {"database": "super_talk", "token": '<%=session.getAttribute("super_token")%>'};
  $.ajax({url: "/WSG/super_talk/get/all", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous145', ':::ENTER', new Array(addVariable('buddy_project', buddy_project), addVariable('buddy_project_list', buddy_project_list), addVariable('data', data), addVariable('flag', flag), addVariable('i', i), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('textStatus', textStatus))));
  if (data.code == "success") 
  {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        var flag = false;
        for (var j in buddy_project) 
          {
            if (json[i].community_id == buddy_project[j].from_community_id && json[i].project_id == buddy_project[j].from_project_id) 
            {
              flag = true;
              break;
            }
            if (json[i].community_id == buddy_project[j].to_community_id && json[i].project_id == buddy_project[j].to_project_id) 
            {
              flag = true;
              break;
            }
            if (json[i].community_id == '<%=session.getAttribute("community_id")%>' && json[i].project_id == '<%=session.getAttribute("projectid")%>') 
            {
              flag = true;
              break;
            }
          }
        if (flag && json[i].status == "accepted") 
        {
          initSingleSuperTalk(json[i].question, json[i].id, json[i].proposed_by);
        }
      }
  }
  send(new Array('/cross_project_sharingjsp.anonymous145', ':::EXIT147', new Array(addVariable('buddy_project', buddy_project), addVariable('buddy_project_list', buddy_project_list), addVariable('data', data), addVariable('flag', flag), addVariable('i', i), addVariable('j', j), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('textStatus', textStatus))));
}});
  send(new Array('/cross_project_sharingjsp.initSuperTalkList', ':::EXIT140', new Array(addVariable('buddy_project', buddy_project), addVariable('buddy_project_list', buddy_project_list), addVariable('json', json))));
}
function initSingleSuperTalk(topic, id, author) {
  send(new Array('/cross_project_sharingjsp.initSingleSuperTalk', ':::ENTER', new Array(addVariable('author', author), addVariable('id', id), addVariable('json', json), addVariable('topic', topic))));
  var json = {"database": "super_talk", "token": '<%=session.getAttribute("super_token")%>', "sid": id};
  $.ajax({url: "/WSG/supertalk/get/numberofnote", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/cross_project_sharingjsp.anonymous191', ':::ENTER', new Array(addVariable('author', author), addVariable('data', data), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('test', test), addVariable('textStatus', textStatus), addVariable('topic', topic))));
  if (data.code == "success") 
  {
    var json = $.parseJSON(data.obj);
    var test = '' + '<div>Topic name: <a href="javascript:enterSuperTalk(' + id + ')">' + topic + '</a></div>' + '<div>Proposed by:' + author + '</div>' + '<div>Number of Notes:' + json[0]['count(*)'] + '</div><div class="divider"></div>';
    $('#super-talk-list').append(test);
  }
  send(new Array('/cross_project_sharingjsp.anonymous191', ':::EXIT193', new Array(addVariable('author', author), addVariable('data', data), addVariable('id', id), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('test', test), addVariable('textStatus', textStatus), addVariable('topic', topic))));
}});
  send(new Array('/cross_project_sharingjsp.initSingleSuperTalk', ':::EXIT186', new Array(addVariable('author', author), addVariable('id', id), addVariable('json', json), addVariable('topic', topic))));
}
function enterSuperTalk(thread_id) {
  send(new Array('/cross_project_sharingjsp.enterSuperTalk', ':::ENTER', new Array(addVariable('thread_id', thread_id))));
  window.location.href = "supertalk.jsp?localdb=super_talk&community_id=SuperTalk20171115&project_id=" + project_id + "&thread_id=" + thread_id;
  send(new Array('/cross_project_sharingjsp.enterSuperTalk', ':::EXIT206', new Array(addVariable('thread_id', thread_id))));
}
sessionTimeOut('<%=session.getAttribute("SessionTimeOut")%>');
$(document).ajaxStop(function() {
  $(".jot-content div:last-child").css("border-bottom", "0px");
});
</script>  
 </body>
</html>