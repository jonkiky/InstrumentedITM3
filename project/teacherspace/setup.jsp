<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> --><!doctype html>
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../../css/jquery-ui.css" media="screen,projection"> 
  <script src="../../js/jquery-3.1.0.js"></script> 
  <script src="../../js/jquery-ui.js"></script> 
  <script src="../../js/jquery.sessionTimeout.js"></script> 
  <script src="../../js/itm.js"></script> 
  <!--Let browser know website is optimized for mobile--> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
 </head> 
 <body> 
  <header> 
   <!-- <%@ include file="../../header.jsp" %>
		<%@ include file="../../side_menu_hidden.jsp" %>--> 
  </header> 
  <main> 
   <div class="container"> 
    <br> 
    <div class="row"> 
     <div class="input-field col s8 offset-s2" style="padding-top: 10px"> 
      <input value="" id="title" type="text" class="validate"> 
      <label for="title">Project title:</label> 
     </div> 
     <div class="input-field col s8 offset-s2">
       School Year
     </div> 
     <div class="input-field col s4 offset-s2"> 
      <select id="fromYear"> <option value="2013">2013</option> <option value="2014">2014</option> <option value="2015">2015</option> <option value="2016">2016</option> <option value="2017">2017</option> <option value="2018">2018</option> <option value="2019">2019</option> <option value="2020">2020</option> <option value="2021">2021</option> <option value="2022">2022</option> <option value="2023">2023</option> <option value="2024">2024</option> </select> 
      <label>From: Year</label> 
     </div> 
     <div class="input-field col s4"> 
      <select id="fromMonth"> <option value="1">January</option> <option value="2">February</option> <option value="3">March</option> <option value="4">April</option> <option value="5">May</option> <option value="6">June</option> <option value="7">July</option> <option value="8">August</option> <option value="9">September</option> <option value="10">October</option> <option value="11">November</option> <option value="12">December</option> </select> 
      <label>Month</label> 
     </div> 
     <div class="input-field col s4 offset-s2"> 
      <select id="toYear"> <option value="2013">2013</option> <option value="2014">2014</option> <option value="2015">2015</option> <option value="2016">2016</option> <option value="2017">2017</option> <option value="2018">2018</option> <option value="2019">2019</option> <option value="2020">2020</option> <option value="2021">2021</option> <option value="2022">2022</option> <option value="2023">2023</option> <option value="2024">2024</option> </select> 
      <label>To: Year</label> 
     </div> 
     <div class="input-field col s4"> 
      <select id="toMonth"> <option value="1">January</option> <option value="2">February</option> <option value="3">March</option> <option value="4">April</option> <option value="5">May</option> <option value="6">June</option> <option value="7">July</option> <option value="8">August</option> <option value="9">September</option> <option value="10">October</option> <option value="11">November</option> <option value="12">December</option> </select> 
      <label>Month</label> 
     </div> 
     <div class="input-field col s8 offset-s2"> 
      <input value="" id="goal" type="text" class="validate"> 
      <label for="goal">Project goal:</label> 
     </div> 
     <div class=" col s8 offset-s2  file-field input-field"> 
      <div class="btn"> 
       <span>Project Logo</span> 
       <input type="file" name="filename"> 
      </div> 
      <div class="file-path-wrapper"> 
       <input class="file-path validate" type="text" placeholder="Upload Image File"> 
      </div> 
      <div id="img"></div> 
     </div> 
     <div class="input-field col s8 offset-s2 "> 
      <select multiple id="teacher"> </select> 
      <label>Add Teachers</label> 
     </div> 
     <div class="input-field col s8 offset-s2"> 
      <select multiple id="select-grade"> <option value="" disabled selected>Grade Level</option> <option value="15">Other</option> </select> 
      <label>Grade Level</label> 
     </div> 
     <div class="input-field col s8 offset-s2"> 
      <select multiple id="area"> <optgroup label="Language Arts"> <option value="1">Writing</option> <option value="2">Reading</option> <option value="3">Speaking and Listening</option> <option value="4">Study Skills</option> </optgroup> <optgroup label="Science"> <option value="5">Earth and Space Systems</option> <option value="6">Life Sciences: Boilogy</option> </optgroup> </select> 
      <label>Curriculum area:</label> 
     </div> 
     <div class="input-field col s8 offset-s2" style="padding-top: 10px"> 
      <input value="" id="mcode" type="text" class="validate"> 
      <label for="title">Teacher Code</label> 
     </div> 
     <div class="input-field col s8 offset-s2" style="padding-top: 10px"> 
      <input value="" id="wcode" type="text" class="validate"> 
      <label for="title">Student Code</label> 
     </div> 
     <div class="input-field col s8 offset-s2" style="padding-top: 10px"> 
      <input value="" id="acode" type="text" class="validate"> 
      <label for="title">Visitor Code</label> 
     </div> 
    </div> 
    <div class="row"> 
     <div class="input-field col s8 offset-s2"> 
      <button class="btn waves-effect waves-light col " type="button" name="action" data-mode="new" id="create-submit"> Save <i class="material-icons right">send</i> </button> 
      <button class="btn waves-effect waves-light col after-save" style="margin-left:12px;" type="button" name="action" data-mode="new" id="btn-back-project-list"> Back To Project List<i class="material-icons right">send</i> </button>&nbsp;&nbsp; 
      <button class="btn waves-effect waves-light col  after-save" style="margin-left:12px;" type="button" name="action" data-mode="new" id="btn-edit-member"> Edit Member<i class="material-icons right">send</i> </button> 
     </div> 
    </div> 
   </div> 
  </main> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../../js/notify.js"></script> 
  <script src="../../js/itm.js"></script> 
  <script src="../../js/monitor.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /setupjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var kfurl = '<%=session.getAttribute("kfURL")%>';
var kftoken = '<%=session.getAttribute("kftoken")%>';
var dataForMonitering = {"uid": "", "time": new Date(), "className": "project setup", "domain": "project setup", "fn": "", "pose": "", "msg": ""};
var globVars = {'localdb': localdb, 'token': token, 'community': community, 'c_id': c_id, 'type': type, 'urname': urname, 'id': id, 'itmdb': itmdb, 'domain': domain, 'token': token, 'school': school, 'country': country, 'city': city, 'projectid': project_id, 'kfurl': kfurl, 'kftoken': kftoken};
$("#page_title").html("New Project");
$(".after-save").hide();
$(window).on('load', function() {
  send(new Array('/setupjsp.anonymous52', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var project_id = -1;
  function initArea() {
    send(new Array('/setupjsp.initArea', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('initHtml', initHtml), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('level1', level1), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    $("#area").empty().html(' ');
    var initHtml = '<option disabled>Select Curriulums area</option>';
    $("#area").append(initHtml);
    var json = JSON.parse(localStorage.curriculums);
    if (null == json) {
      send(new Array('/setupjsp.initArea', ':::EXIT65', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('initHtml', initHtml), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('level1', level1), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
      return;
    }
    if (null != json[0].id) 
    {
      var level1 = [];
      for (var i in json) 
        {
          if (json[i].parent_id == 0) 
          {
            if (null == level1[json[i].id]) 
            {
              level1[json[i].id] = {'parent': json[i].name, 'child': []};
            } else {
              level1[json[i].id]["parent"] = json[i].name;
            }
          } else {
            if (null == level1[json[i].parent_id]) 
            {
              level1[json[i].parent_id] = {'parent': '', 'child': [{'id': json[i].id, 'title': json[i].name}]};
            } else {
              level1[json[i].parent_id]["child"].push({'id': json[i].id, 'title': json[i].name});
            }
          }
        }
      for (var i in level1) 
        {
          level1[i];
          var html = '<optgroup label="' + level1[i].parent + '">';
          html = html + '<option value="' + i + '">' + level1[i]["parent"] + '[parent]</option>';
          html = "";
          for (var j in level1[i]["child"]) 
            {
              html = html + '<option value="' + level1[i]["child"][j]["id"] + '">' + level1[i]["child"][j]["title"] + '</option>';
            }
          html = html + '</optgroup>';
          $("#area").append(html);
        }
      $("#area").trigger('contentChanged');
    }
    send(new Array('/setupjsp.initArea', ':::EXIT66', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('html', html), addVariable('i', i), addVariable('id', id), addVariable('initHtml', initHtml), addVariable('itmdb', itmdb), addVariable('j', j), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('level1', level1), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function initGrades() {
    send(new Array('/setupjsp.initGrades', ':::ENTER', new Array(addVariable('$selectDropdown', $selectDropdown), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('i', i), addVariable('id', id), addVariable('initHtml', initHtml), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var $selectDropdown = $("#select-grade").empty().html(' ');
    var initHtml = '<option disabled>Select Grade</option>';
    $("#select-grade").append(initHtml);
    var json = JSON.parse(localStorage.grades);
    if (null != json[0].id) 
    {
      for (var i in json) 
        {
          $selectDropdown.append($("<option></option>").attr("value", json[i].id).text(json[i].title));
        }
      $selectDropdown.trigger('contentChanged');
    }
    send(new Array('/setupjsp.initGrades', ':::EXIT119', new Array(addVariable('$selectDropdown', $selectDropdown), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('i', i), addVariable('id', id), addVariable('initHtml', initHtml), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function initUsers() {
    send(new Array('/setupjsp.initUsers', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
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
    send(new Array('/setupjsp.initUsers', ':::EXIT148', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function init() {
    send(new Array('/setupjsp.init', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    initArea();
    initGrades();
    initUsers();
    $("#mcode").val("T");
    $("#wcode").val("S");
    $("#acode").val("V");
    send(new Array('/setupjsp.init', ':::EXIT173', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  init();
  $('select').on('contentChanged', function() {
  send(new Array('/setupjsp.anonymous179', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $(this).material_select();
  send(new Array('/setupjsp.anonymous179', ':::EXIT181', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $('select').material_select();
  $('.materialboxed').materialbox();
  $(document).on('change', '.file-field input[type="file"]', function() {
  send(new Array('/setupjsp.anonymous189', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('file_field', file_field), addVariable('file_names', file_names), addVariable('files', files), addVariable('globVars', globVars), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('path_input', path_input), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  var file_field = $(this).closest('.file-field');
  var path_input = file_field.find('input.file-path');
  var files = $(this)[0].files;
  var file_names = [];
  for (var i = 0; i < files.length; i++) 
    {
      file_names.push(files[i].name);
    }
  path_input.val(file_names.join(", "));
  path_input.trigger('change');
  uploadFile(files);
  send(new Array('/setupjsp.anonymous189', ':::EXIT199', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('file_field', file_field), addVariable('file_names', file_names), addVariable('files', files), addVariable('globVars', globVars), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('path_input', path_input), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  function uploadFile(files) {
    send(new Array('/setupjsp.uploadFile', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('fd', fd), addVariable('files', files), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var fd = new FormData();
    fd.append('uploadFile', files[0]);
    $.ajax({type: 'post', url: '/IFS/uploadFile', data: fd, processData: false, cache: false, contentType: false, success: function(data) {
  send(new Array('/setupjsp.anonymous212', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('fd', fd), addVariable('files', files), addVariable('globVars', globVars), addVariable('html', html), addVariable('id', id), addVariable('imageURL', imageURL), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(data);
  var imageURL = window.location.origin;
  var json = imageURL + "/IFS/resources/data/" + $.trim((data.obj).split("@")[2]);
  $("#img").html("");
  var html = '<img class="materialboxed" width="250" src="' + json + '">';
  $("#img").html(html);
  send(new Array('/setupjsp.anonymous212', ':::EXIT220', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('fd', fd), addVariable('files', files), addVariable('globVars', globVars), addVariable('html', html), addVariable('id', id), addVariable('imageURL', imageURL), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.uploadFile', ':::EXIT205', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('fd', fd), addVariable('files', files), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function add_project_author(projectId, authorId) {
    send(new Array('/setupjsp.add_project_author', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectid": projectId, "authorid": authorId, "usertype": '<%=session.getAttribute("role")%>', "userrole": "teacher"};
    $.ajax({url: "/WSG/project/member/add/byauthor", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous244', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log("add project author success");
  send(new Array('/setupjsp.anonymous244', ':::EXIT245', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous247', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous247', ':::EXIT251', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.add_project_author', ':::EXIT239', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function add_project_member(projectId, authorId) {
    send(new Array('/setupjsp.add_project_member', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectid": projectId, "authorid": authorId, "usertype": '<%=session.getAttribute("role")%>', "userrole": "member"};
    $.ajax({url: "/WSG/project/member/add/byauthor", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous274', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log("add project author success");
  send(new Array('/setupjsp.anonymous274', ':::EXIT277', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous279', ':::ENTER', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous279', ':::EXIT280', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.add_project_member', ':::EXIT269', new Array(addVariable('authorId', authorId), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function add_project_grade(projectId, gradeId) {
    send(new Array('/setupjsp.add_project_grade', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('gradeId', gradeId), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectId": projectId, "gradeId": gradeId};
    $.ajax({url: "/WSG/project/grade/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous302', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('gradeId', gradeId), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log("add project grade success");
  send(new Array('/setupjsp.anonymous302', ':::EXIT305', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('gradeId', gradeId), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous307', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('gradeId', gradeId), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous307', ':::EXIT308', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('gradeId', gradeId), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.add_project_grade', ':::EXIT297', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('gradeId', gradeId), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function add_project_curriculum(projectId, areaid) {
    send(new Array('/setupjsp.add_project_curriculum', ':::ENTER', new Array(addVariable('areaid', areaid), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectId": projectId, "areaid": areaid};
    $.ajax({url: "/WSG/project/curriculum/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous328', ':::ENTER', new Array(addVariable('areaid', areaid), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log("add project grade success");
  send(new Array('/setupjsp.anonymous328', ':::EXIT332', new Array(addVariable('areaid', areaid), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous334', ':::ENTER', new Array(addVariable('areaid', areaid), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous334', ':::EXIT335', new Array(addVariable('areaid', areaid), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.add_project_curriculum', ':::EXIT323', new Array(addVariable('areaid', areaid), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('projectId', projectId), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function project_view_add() {
    send(new Array('/setupjsp.project_view_add', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    if (window.createProject && window.createViewInKF && window.createdViewId != "-1") 
    {
      var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "pid": window.createdProjectId, "kf_view_id": window.createdViewId};
      $.ajax({url: "/WSG/project/view/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous356', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "failure") 
  {
    console.log(data.desc, "error");
  }
  send(new Array('/setupjsp.anonymous356', ':::EXIT358', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous362', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous362', ':::EXIT363', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    } else {
    }
    send(new Array('/setupjsp.project_view_add', ':::EXIT344', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function addViewInITM() {
    send(new Array('/setupjsp.addViewInITM', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    send(new Array('/setupjsp.addViewInITM', ':::EXIT378', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    return new Promise(function(resolve, reject) {
  send(new Array('/setupjsp.anonymous378', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata2', jsondata2), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('request_add_view', request_add_view), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (!window.projectHasCreated) 
  {
    var jsondata2 = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "title": $("#title").val().replace(/"/g, "\\\""), "viewid": window.createdViewId, "authorid": id, "vcreatetime": new Date()};
    var request_add_view = $.ajax({url: "/WSG/view/add", type: "POST", data: JSON.stringify(jsondata2), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous396', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata2', jsondata2), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('request_add_view', request_add_view), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    resolve();
  } else {
    reject();
  }
  send(new Array('/setupjsp.anonymous396', ':::EXIT398', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata2', jsondata2), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('request_add_view', request_add_view), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  send(new Array('/setupjsp.anonymous378', ':::EXIT379', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata2', jsondata2), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('request_add_view', request_add_view), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  }
  function updateCommunityObject(obj) {
    send(new Array('/setupjsp.updateCommunityObject', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    send(new Array('/setupjsp.updateCommunityObject', ':::EXIT417', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    return new Promise(function(resolve, reject) {
  send(new Array('/setupjsp.anonymous417', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (!window.projectHasCreated) 
  {
    $.ajax({url: kfurl + "api/communities/" + c_id, type: "PUT", data: JSON.stringify(obj), dataType: "json", headers: {'Authorization': 'bearer ' + kftoken, 'Content-Type': 'application/json'}, success: function(data) {
  send(new Array('/setupjsp.anonymous426', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(data);
  resolve();
  send(new Array('/setupjsp.anonymous426', ':::EXIT432', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous434', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log('Error create view in KF');
  send(new Array('/setupjsp.anonymous434', ':::EXIT436', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  send(new Array('/setupjsp.anonymous417', ':::EXIT418', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('obj', obj), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  }
  window.projectHasCreated = false;
  function createProjectInITM3() {
    send(new Array('/setupjsp.createProjectInITM3', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    if (window.projectHasCreated) 
    {
      send(new Array('/setupjsp.createProjectInITM3', ':::EXIT449', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
      return;
    }
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "title": $("#title").val().replace(/"/g, "\\\""), "logo": ($(".materialboxed").attr("src") == "") ? "" : $(".materialboxed").attr("src"), "fromyear": $("#fromYear option:selected").text() + "/" + $("#fromMonth option:selected").val(), "toyear": $("#toYear option:selected").text() + "/" + $("#toMonth option:selected").val(), "access_code_read": $("#acode").val(), "access_code_write": $("#wcode").val(), "access_code_manage": $("#mcode").val(), "buddy_project_accept": -1, "goal": ($("#goal").val() == "") ? "" : $("#goal").val().replace(/"/g, "\\\"").replace(/'/g, "\\'"), "project_create_time": new Date()};
    var request_add_project = $.ajax({url: "/WSG/project/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous473', ':::ENTER', new Array(addVariable('areaIdes', areaIdes), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('gradeIdes', gradeIdes), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('teacherIds', teacherIds), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "failure") 
  {
    console.log(data.desc, "error");
  } else {
    project_id = data.obj[0].GENERATED_KEY;
    add_project_author(project_id, '<%=session.getAttribute("id")%>');
    window.createProject = true;
    window.projectHasCreated = true;
    window.createdProjectId = project_id;
    if ($("#teacher").val() != "") 
    {
      var teacherIds = $("#teacher").val();
      for (var i in teacherIds) 
        {
          add_project_author(project_id, teacherIds[i]);
        }
    }
    if ($("#select-grade").val() != "") 
    {
      var gradeIdes = $("#select-grade").val();
      for (var i in gradeIdes) 
        {
          add_project_grade(project_id, gradeIdes[i]);
        }
    }
    if ($("#area").val() != "") 
    {
      var areaIdes = $("#area").val();
      for (var i in areaIdes) 
        {
          add_project_curriculum(project_id, areaIdes[i]);
        }
    }
    create_a_public_wondering_area(project_id);
    project_view_add();
  }
  send(new Array('/setupjsp.anonymous473', ':::EXIT475', new Array(addVariable('areaIdes', areaIdes), addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('gradeIdes', gradeIdes), addVariable('i', i), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('teacherIds', teacherIds), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous508', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous508', ':::EXIT509', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.createProjectInITM3', ':::EXIT468', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('request_add_project', request_add_project), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function getCommunityObject() {
    send(new Array('/setupjsp.getCommunityObject', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    dataForMonitering.fn = "getCommunityObject";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"window.projectHasCreated": window.projectHasCreated};
    sendMessageToMonitor(dataForMonitering);
    send(new Array('/setupjsp.getCommunityObject', ':::EXIT528', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    return new Promise(function(resolve, reject) {
  send(new Array('/setupjsp.anonymous528', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (!window.projectHasCreated) 
  {
    $.ajax({url: kfurl + "api/communities/" + c_id, type: "GET", headers: {'Authorization': 'bearer ' + kftoken, 'Content-Type': 'application/json'}, success: function(data) {
  send(new Array('/setupjsp.anonymous535', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  dataForMonitering.pose = "post";
  dataForMonitering.msg = data;
  sendMessageToMonitor(dataForMonitering);
  dataForMonitering.pose = "post";
  dataForMonitering.msg = kfurl + "api/communities/" + c_id;
  sendMessageToMonitor(dataForMonitering);
  console.log(data);
  data.views.push(window.createdViewId);
  resolve(data);
  send(new Array('/setupjsp.anonymous535', ':::EXIT546', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous548', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log('Error create view in KF');
  send(new Array('/setupjsp.anonymous548', ':::EXIT550', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  send(new Array('/setupjsp.anonymous528', ':::EXIT529', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  }
  window.createViewInKF = false;
  function createViewInKF(cid, title, aid) {
    send(new Array('/setupjsp.createViewInKF', ':::ENTER', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    dataForMonitering.fn = "createViewInKF";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"cid": cid, "title": title, "aid": aid, "window.projectHasCreated": window.projectHasCreated};
    sendMessageToMonitor(dataForMonitering);
    send(new Array('/setupjsp.createViewInKF', ':::EXIT570', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    return new Promise(function(resolve, reject) {
  send(new Array('/setupjsp.anonymous570', ':::ENTER', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('createViewJson', createViewJson), addVariable('create_view_in_kf', create_view_in_kf), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (!window.projectHasCreated) 
  {
    var createViewJson = {"communityId": cid, "type": "View", "title": title, "authors": [aid], "status": "active", "permission": "public"};
    var create_view_in_kf = $.ajax({url: kfurl + "api/contributions/" + cid, type: "POST", data: JSON.stringify(createViewJson), dataType: "json", headers: {'Authorization': 'bearer ' + kftoken, 'Content-Type': 'application/json'}, success: function(data) {
  send(new Array('/setupjsp.anonymous588', ':::ENTER', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('createViewJson', createViewJson), addVariable('create_view_in_kf', create_view_in_kf), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  dataForMonitering.pose = "post";
  dataForMonitering.msg = data;
  sendMessageToMonitor(dataForMonitering);
  dataForMonitering.pose = "post";
  dataForMonitering.msg = kfurl + "api/communities/" + c_id;
  sendMessageToMonitor(dataForMonitering);
  window.createViewInKF = true;
  window.createdViewId = data._id;
  dataForMonitering.msg = {"window.createViewInKF": window.createViewInKF, "window.createdViewId": window.createdViewId};
  sendMessageToMonitor(dataForMonitering);
  console.log(data);
  resolve();
  send(new Array('/setupjsp.anonymous588', ':::EXIT606', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('createViewJson', createViewJson), addVariable('create_view_in_kf', create_view_in_kf), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous609', ':::ENTER', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('createViewJson', createViewJson), addVariable('create_view_in_kf', create_view_in_kf), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  reject();
  console.log('Error create view in KF');
  send(new Array('/setupjsp.anonymous609', ':::EXIT612', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('createViewJson', createViewJson), addVariable('create_view_in_kf', create_view_in_kf), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
  }
  send(new Array('/setupjsp.anonymous570', ':::EXIT571', new Array(addVariable('aid', aid), addVariable('c_id', c_id), addVariable('cid', cid), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('createViewJson', createViewJson), addVariable('create_view_in_kf', create_view_in_kf), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('reject', reject), addVariable('resolve', resolve), addVariable('school', school), addVariable('title', title), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  }
  window.createProject = false;
  window.createViewInKF = true;
  window.createdProjectId = -1;
  window.createdViewId = "-1";
  function add() {
    send(new Array('/setupjsp.add', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    dataForMonitering.fn = "createViewInKF";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"window.createProject": window.createProject, "window.createViewInKF": window.createViewInKF, "window.createdProjectId": window.createdProjectId, "window.createdViewId": window.createdViewId, "input1": $("#acode").val()};
    sendMessageToMonitor(dataForMonitering);
    if ($("#acode").val() == $("#wcode").val() || $("#wcode").val() == $("#mcode").val() || $("#mcode").val() == $("#acode").val()) 
    {
      Materialize.toast('The codes should not be same to each other. ', 4000);
      send(new Array('/setupjsp.add', ':::EXIT650', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
      return;
    }
    createViewInKF(c_id, $("#title").val().replace(/"/g, "\\\""), id).then(function() {
  send(new Array('/setupjsp.anonymous654', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  send(new Array('/setupjsp.anonymous654', ':::EXIT654', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  return getCommunityObject();
}, function() {
  send(new Array('/setupjsp.anonymous654', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  send(new Array('/setupjsp.anonymous654', ':::EXIT654', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  return createProjectInITM3();
}).then(function(data) {
  send(new Array('/setupjsp.anonymous655', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  send(new Array('/setupjsp.anonymous655', ':::EXIT655', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  return updateCommunityObject(data);
}).then(function() {
  send(new Array('/setupjsp.anonymous656', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  send(new Array('/setupjsp.anonymous656', ':::EXIT656', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  return addViewInITM();
}).then(function() {
  send(new Array('/setupjsp.anonymous657', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  send(new Array('/setupjsp.anonymous657', ':::EXIT657', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  return createProjectInITM3();
});
    send(new Array('/setupjsp.add', ':::EXIT657', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function create_a_public_wondering_area(project_id) {
    send(new Array('/setupjsp.create_a_public_wondering_area', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    dataForMonitering.fn = "create_a_public_wondering_area";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"project_id": project_id};
    sendMessageToMonitor(dataForMonitering);
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "logo": "", "wname": "Open area", "authorid": '<%=session.getAttribute("id")%>', "wcreatetime": new Date(), "wstatus": "accepted", "keywords": "", "overarchingquestions": "", "whyimportant": ""};
    $.ajax({url: "/WSG/wondering_area/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous690', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  dataForMonitering.pose = "post";
  dataForMonitering.msg = data;
  sendMessageToMonitor(dataForMonitering);
  dataForMonitering.pose = "post";
  dataForMonitering.msg = "/WSG/wondering_area/add";
  sendMessageToMonitor(dataForMonitering);
  if (data.code == "failure") 
  {
    console.log(data.desc, "error");
  } else {
    wid = data.obj[0].GENERATED_KEY;
    project_wondering(project_id, wid);
    creat_a_public_thread(project_id, wid);
  }
  send(new Array('/setupjsp.anonymous690', ':::EXIT700', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous711', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous711', ':::EXIT712', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.create_a_public_wondering_area', ':::EXIT685', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function thread_view(tid, vid) {
    send(new Array('/setupjsp.thread_view', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('vid', vid))));
    dataForMonitering.fn = "thread_view";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"tid": tid, "vid": vid};
    sendMessageToMonitor(dataForMonitering);
    var json = {"database": localdb, "token": token, "tid": tid, "vid": vid};
    $.ajax({url: "/WSG/thread_view/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous739', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('vid', vid))));
  dataForMonitering.pose = "post";
  dataForMonitering.msg = data;
  sendMessageToMonitor(dataForMonitering);
  dataForMonitering.pose = "post";
  dataForMonitering.msg = "/WSG/thread_view/add";
  sendMessageToMonitor(dataForMonitering);
  console.log(data);
  send(new Array('/setupjsp.anonymous739', ':::EXIT748', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('vid', vid))));
}});
    send(new Array('/setupjsp.thread_view', ':::EXIT734', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('vid', vid))));
  }
  function creat_a_public_thread(pid, wid) {
    send(new Array('/setupjsp.creat_a_public_thread', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
    dataForMonitering.fn = "creat_a_public_thread";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"pid": pid, "wid": wid};
    sendMessageToMonitor(dataForMonitering);
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "thread_focus": "Open talk", "authorid": '<%=session.getAttribute("id")%>', "createtime": new Date(), "keywords": "", "resource": ""};
    $.ajax({url: "/WSG/thread/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous781', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
  dataForMonitering.pose = "post";
  dataForMonitering.msg = data;
  sendMessageToMonitor(dataForMonitering);
  dataForMonitering.pose = "post";
  dataForMonitering.msg = "/WSG/thread/add";
  sendMessageToMonitor(dataForMonitering);
  if (data.code == "failure") 
  {
    console.log(data.desc, "error");
  } else {
    thread_id = data.obj[0].GENERATED_KEY;
    thread_project(thread_id, pid);
    thread_wondering(thread_id, wid);
    if (window.createViewInKF) 
    {
      thread_view(thread_id, window.createdViewId);
    }
  }
  send(new Array('/setupjsp.anonymous781', ':::EXIT790', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
}});
    send(new Array('/setupjsp.creat_a_public_thread', ':::EXIT776', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
  }
  function thread_project(tid, pid) {
    send(new Array('/setupjsp.thread_project', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    dataForMonitering.fn = "thread_project";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"tid": tid, "pid": pid};
    sendMessageToMonitor(dataForMonitering);
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectid": pid, "authorid": '<%=session.getAttribute("id")%>', "threadid": tid, "keywords": ""};
    $.ajax({url: "/WSG/project/thread/add", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous829', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  dataForMonitering.pose = "post";
  dataForMonitering.msg = data;
  sendMessageToMonitor(dataForMonitering);
  dataForMonitering.pose = "post";
  dataForMonitering.msg = "/WSG/project/thread/add";
  sendMessageToMonitor(dataForMonitering);
  if (data.code == "failure") 
  {
    console.log(data.desc, "error");
  }
  send(new Array('/setupjsp.anonymous829', ':::EXIT838', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.thread_project', ':::EXIT824', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('pid', pid), addVariable('project_id', project_id), addVariable('school', school), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  function thread_wondering(tid, wid) {
    send(new Array('/setupjsp.thread_wondering', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('thread_w_json', thread_w_json), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
    dataForMonitering.fn = "thread_wondering";
    dataForMonitering.pose = "pre";
    dataForMonitering.msg = globVars;
    sendMessageToMonitor(dataForMonitering);
    dataForMonitering.msg = {"tid": tid, "wid": wid};
    sendMessageToMonitor(dataForMonitering);
    var thread_w_json = {"database": localdb, "token": token, "threadid": tid, "areaid": wid};
    $.ajax({url: "/WSG/thread/wondering/add", type: "POST", data: JSON.stringify(thread_w_json), dataType: "json"});
    send(new Array('/setupjsp.thread_wondering', ':::EXIT862', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('thread_w_json', thread_w_json), addVariable('tid', tid), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
  }
  function project_wondering(project_id, wid) {
    send(new Array('/setupjsp.project_wondering', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
    var json = {"database": localdb, "token": token, "pid": project_id, "areaid": wid};
    $.ajax({url: "/WSG/project/wondering/add", type: "POST", data: JSON.stringify(json), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous888', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
  send(new Array('/setupjsp.anonymous888', ':::EXIT0', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
}});
    send(new Array('/setupjsp.project_wondering', ':::EXIT883', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('json', json), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname), addVariable('wid', wid))));
  }
  function del() {
    send(new Array('/setupjsp.del', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
    var jsondata = {"database": '<%=session.getAttribute("localdb")%>', "token": '<%=session.getAttribute("token")%>', "projectid": $("#create-submit").data("mode")};
    $.ajax({url: "/WSG/project/del", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/setupjsp.anonymous910', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (data.code == "success") 
  {
    add();
  }
  send(new Array('/setupjsp.anonymous910', ':::EXIT912', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('data', data), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/setupjsp.anonymous916', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  console.log(jqXHR.responseText);
  send(new Array('/setupjsp.anonymous916', ':::EXIT917', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('errorThrown', errorThrown), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
}});
    send(new Array('/setupjsp.del', ':::EXIT905', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('jsondata', jsondata), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  }
  $("#create-submit").click(function() {
  send(new Array('/setupjsp.anonymous924', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if ($("#create-submit").data("mode") == "new") 
  {
    add();
  } else {
    del();
  }
  send(new Array('/setupjsp.anonymous924', ':::EXIT925', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $(".button-collapse").sideNav();
  $("#show_slide").click(function() {
  send(new Array('/setupjsp.anonymous934', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  $('.button-collapse').sideNav('show');
  send(new Array('/setupjsp.anonymous934', ':::EXIT935', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $(document).ajaxStop(function() {
  send(new Array('/setupjsp.anonymous939', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  if (project_id != -1) 
  {
    window.history.back();
  }
  send(new Array('/setupjsp.anonymous939', ':::EXIT940', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $("#btn-back-project-list").click(function() {
  send(new Array('/setupjsp.anonymous945', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  window.history.back();
  send(new Array('/setupjsp.anonymous945', ':::EXIT946', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  $("#btn-edit-member").click(function() {
  send(new Array('/setupjsp.anonymous950', ':::ENTER', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
  window.location.href = "members.jsp";
  send(new Array('/setupjsp.anonymous950', ':::EXIT951', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
  send(new Array('/setupjsp.anonymous52', ':::EXIT950', new Array(addVariable('c_id', c_id), addVariable('city', city), addVariable('community', community), addVariable('country', country), addVariable('dataForMonitering', dataForMonitering), addVariable('domain', domain), addVariable('globVars', globVars), addVariable('id', id), addVariable('itmdb', itmdb), addVariable('kftoken', kftoken), addVariable('kfurl', kfurl), addVariable('localdb', localdb), addVariable('project_id', project_id), addVariable('school', school), addVariable('token', token), addVariable('type', type), addVariable('urname', urname))));
});
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