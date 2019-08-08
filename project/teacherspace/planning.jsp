<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../validation.jsp" %> --><!doctype html>
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/customerize.css" media="screen,projection"> 
  <!--Let browser know website is optimized for mobile--> 
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
     <div class="col s12" style="padding-top: 10px"> 
      <p style="padding-left: 20px; border: solid 5px; border-color: #78909c; height: 300px;"> <br> <br> Write in Google Doc <br> <br> <br> The "big ideas" (main concepts, principles, and processes) to be learned: <br> Overarching process of inquiry and timeline </p> 
      <p style="padding-left: 20px; border: solid 5px; border-color: #78909c; height: 300px;"> <br> <br> Upload reflection videos or other attachments <br> <br> <br> Points of reflection<br> · How I design and facilitat this inquiry:<br> · Productive moments and activities:<br> · Opportunities for future improvements:<br> </p> 
     </div> 
    </div> 
   </div> 
  </main> 
  <div id="modal1" class="modal"> 
   <div class="modal-content"> 
    <p>Jump to the thread page of the project</p> 
   </div> 
   <div class="modal-footer"> 
    <a href="#!" id="go" class=" modal-action modal-close waves-effect waves-green btn-flat">Go</a> 
   </div> 
  </div> 
  <!--Import jQuery before materialize.js--> 
  <!-- <%@ include file="../../javascript.jsp" %>--> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /planningjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
  send(new Array('/planningjsp.anonymous1', ':::ENTER', new Array(addVariable('json', json), addVariable('project_id', project_id))));
  if ("" != '<%=session.getAttribute("projectid")%>') 
  {
    var project_id = '<%=session.getAttribute("projectid")%>';
    var json = JSON.parse(localStorage.projects);
    project = json[project_id];
  }
  $("#page_title").html(project.title + "'s Planning and Reflection");
  $(".button-collapse").sideNav();
  $("#show_slide").click(function() {
  send(new Array('/planningjsp.anonymous10', ':::ENTER', new Array(addVariable('json', json), addVariable('project_id', project_id))));
  $('.button-collapse').sideNav('show');
  send(new Array('/planningjsp.anonymous10', ':::EXIT11', new Array(addVariable('json', json), addVariable('project_id', project_id))));
});
  $('.collection').delegate('a', 'click', function() {
  send(new Array('/planningjsp.anonymous14', ':::ENTER', new Array(addVariable('json', json), addVariable('project_id', project_id))));
  window.location.href = "../thread/open.html";
  send(new Array('/planningjsp.anonymous14', ':::EXIT15', new Array(addVariable('json', json), addVariable('project_id', project_id))));
});
  $("#go").click(function() {
  send(new Array('/planningjsp.anonymous22', ':::ENTER', new Array(addVariable('json', json), addVariable('project_id', project_id))));
  send(new Array('/planningjsp.anonymous22', ':::EXIT0', new Array(addVariable('json', json), addVariable('project_id', project_id))));
});
  send(new Array('/planningjsp.anonymous1', ':::EXIT22', new Array(addVariable('json', json), addVariable('project_id', project_id))));
});
$(".side-nav").find(".blue-grey").removeClass('blue-grey');
$(".side-nav").find(".active").removeClass('active');
$(".side-nav").find(".show").removeClass('show');
$(".in-teacher-space").addClass("active blue-grey lighten-2 ");
$(".in-teacher-space-body").addClass("show");
$(".in-teacher").addClass("active");
</script>  
 </body>
</html>