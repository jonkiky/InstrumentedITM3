<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../validation.jsp"%>
<%
	/************validate the user session*******************/
	String current_user = " ";	
%> -->
<html>
 <head> 
  <!--Import Google Icon Font--> 
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
  <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet"> 
  <!--Import materialize.css--> 
  <link type="text/css" rel="stylesheet" href="../css/materialize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../css/customerize.css" media="screen,projection"> 
  <link type="text/css" rel="stylesheet" href="../css/jqcloud.min.css" media="screen,projection"> 
  <!--Let browser know website is optimized for mobile--> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta charset="UTF-8"> 
  <script src="../js/jquery-3.1.0.js"></script> 
  <script src="../js/plotly-latest.min.js"></script> 
  <script src="../js/websocket.js?id=#2ad$d"></script> 
  <script src="../js/jquery-ui.js"></script> 
  <script src="../js/jquery.sessionTimeout.js"></script> 
  <script src="../js/itm.js"></script> 
  <style>
.select-wrapper input.select-dropdown {
    width: 300px;
    font-size: 16px;
    padding-left: 15px;
}

#resizable {
	width: 150px;
	height: 150px;
	padding: 0.5em;
}

#compileModal{ 
	width: 90% !important ; 
	max-height: 85% !important;
	}

.modal-content.ui-resizable {
  
}

#resizable h3 {
	text-align: center;
	margin: 0;
}
#toast-container {
  top: auto !important;
  right: auto !important;
  bottom: 50%;
  left:7%;
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


.vertical-align-center {
    /* To center vertically */
    display: table-cell;
    vertical-align: middle;
}
nav.top-nav {
	
}

nav.top-nav a.brand-logo {
	font-size: 36px;
}

.btn-confirm {
	width: 80px;
	padding: 0px;
}

.blk_1 {
	width: 90%;
	display: inline-block;
	padding-left: 20px;
}

.blk_2 {
	width: 50%;
	display: inline-block;
	padding-left: 20px;
}


.loading {
	float: left;
	width: 100%;
	text-align: center;
	font-size: 13px;
	line-height: 30px;
	height: 30px;
	margin: 5px 0px 5px 0px;
}


.jot_text_area{
    overflow: scroll;
    resize: none;
    min-height: 90px;
    max-height: 90px;
}

.tmsg{
	overflow-wrap: break-word;
	width:100%
}
</style> 
 </head> 
 <body> 
  <header> 
   <nav class="  blue-grey"> 
    <!-- <%@ include file="../header.jsp"%>
			<%@ include file="../side_menu_hidden.jsp"%>--> 
   </nav> 
  </header> 
  <ul id="slide-out-right" class="side-nav"> 
  </ul> 
  <main> 
   <br> 
   <div class="col s2 left"> 
    <a class="modal-trigger waves-effect waves-light btn" id="write">Write</a>&nbsp;&nbsp;&nbsp; 
   </div> 
   <div class="col s2 left"> 
    <a href="#" id="import" target="_self" class="waves-effect waves-light btn">Import</a>&nbsp;&nbsp;&nbsp; 
   </div> 
   <div class="col s2 left file-field"> 
    <div class="btn" style="vertical-align: middle"> 
     <span>Attach</span> 
     <input type="file">&nbsp;&nbsp;&nbsp; 
    </div> 
    <!--<a class="waves-effect waves-light btn">Attach</a>--> 
   </div> 
   <div class="col s2 left">
     &nbsp;&nbsp;&nbsp;
    <a class="dropdown-button btn" id="compile" data-activates="compileDropDown">Compile</a> 
    <ul id="compileDropDown" class="dropdown-content"> 
     <li><a class="modal-trigger" id="compileAll" href="#compileModal">All posts in this thread</a></li> 
     <li><a class="modal-trigger" id="compileGraph" href="#compileModal">Posts in graph only</a></li> 
     <li><a class="modal-trigger" id="compileHighlight" href="#compileModal">Highlighted posts only</a></li> 
    </ul> 
   </div> 
   <div class="col s2 left" style="padding-left: 10px;"> 
    <a class="dropdown-button btn" href="#" data-activates="dropdown3">Show</a> 
    <ul id="dropdown3" class="dropdown-content"> 
     <li class="divider"></li> 
     <li><input type="checkbox" id="showtitle" checked><label for="showtitle" class="teal-text">Title</label></li> 
     <li><input type="checkbox" id="showauthor"><label for="showauthor" class="teal-text">Author</label></li> 
     <li><input type="checkbox" id="showbuildon"><label for="showbuildon" class="teal-text">Buildon</label></li> 
     <li><input type="checkbox" id="highlight"><label for="highlight" class="teal-text">HighLight Only</label></li> 
    </ul> 
   </div> 
   <div class="col s2 left" style="padding-left: 10px;"> 
    <a class="dropdown-button btn" href="#" data-activates="dropdown5">Order By</a> 
    <ul id="dropdown5" class="dropdown-content"> 
     <li><a href="#!" id="orderByAuthor">Author</a></li> 
     <li><a href="#!" id="orderByScaffolds">Scaffolds</a></li> 
     <li><a href="#!" id="orderByTypes">Types</a></li> 
    </ul> 
   </div> 
   <div class="col s2 left"> 
    <input type="text" id="search" class="autocomplete" style="top: 60px; height: 23px; width: 180px; z-index: 998; margin-left:50px"> 
    <label for="search"></label> 
   </div>&nbsp;&nbsp;&nbsp; 
   <a class="waves-effect waves-light btn" id="search-btn"> <i class="material-icons">search</i> </a> 
   <div class="col s3 right Vertical click-to-toggle jotdetail" style="top: 68px; right: 100px; height: 50px; position: absolute;" id="jofedit"> 
    <a class="btn  Vertical click-to-toggle jotdetail" id="jofedit"> Journey of Thinking </a> 
   </div> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /supertalk3jsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
$('.modal-content').resizable({minHeight: 300, minWidth: 300});
$('.modal-dialog').draggable();
</script> 
   <div class="modal fade" id="compileModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"> 
    <div class="modal-dialog" role="document"> 
     <div class="modal-content" id="compileContent"> 
      <h5>A compiled list of all posts:</h5> 
      <div class="row" style="margin-bottom:0px"> 
       <a class="dropdown-button btn" href="#" data-activates="compilelistdropdown">Sort by:</a> 
       <a class="btn right" id="exportLink">Download</a> 
       <ul id="compilelistdropdown" class="dropdown-content"> 
        <li><a href="#!" id="timeorder">Discussion order</a></li> 
        <li><a href="#!" id="compile_list_sort_author">Author</a></li> 
        <li><a href="#!" id="compile_list_sort_Title">Title</a></li> 
        <li><a href="#!" id="compile_list_sort_Highlight">Highlight</a></li> 
       </ul> 
      </div> 
      <div id="compileboxContent"></div> 
      <div class="modal-footer"> 
       <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Close</a> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="modal modal-fixed-footer" style="width:80%"> 
    <div class="modal-content"> 
    </div> 
   </div> 
   <div class="row"> 
    <div class="row"> 
     <div class="col-xs-12 col-sm-12 col-md-11 col-lg-10"> 
      <div id="tester" style="margin-top:5px; margin-left: 0px; width: 100%"> 
       <div class="preloader-background" style="margin-left: 50%; margin-top: 400px;"> 
        <div class="preloader-wrapper big active"> 
         <div class="spinner-layer spinner-blue-only"> 
          <div class="circle-clipper left"> 
           <div class="circle"></div> 
          </div> 
          <div class="gap-patch"> 
           <div class="circle"></div> 
          </div> 
          <div class="circle-clipper right"> 
           <div class="circle"></div> 
          </div> 
         </div> 
        </div> 
       </div> 
      </div> 
      <div id="hoverinfo" style="margin-left:80px;"></div> 
     </div> 
    </div> 
   </div> 
   <div id="googledoc" class="modal"> 
    <div class="modal-content"> 
     <h5 class="center">New Note</h5> 
     <div class="row"> 
      <div class="input-field col s12"> 
       <input value="" id="note_title" type="text" class="validate" placeholder="enter note title..."> 
       <label class="active" for="first_name2">Title</label> 
      </div> 
      <div class="col s12"> 
       <ul class="collapsible" data-collapsible="accordion"> 
        <li> 
         <div class="collapsible-header active"> 
          <b>Co-authors</b> 
         </div> 
         <div class="collapsible-body" style="padding: 10px 0;" id="coauthor"></div> </li> 
        <li> 
         <div class="collapsible-header"> 
          <b>Views</b> 
         </div> 
         <div class="collapsible-body" style="padding: 10px 0;" id="views"> 
         </div> </li> 
        <li> 
         <div class="collapsible-header"> 
          <b>Scaffolds</b>: 
          <select id="scaffold_pkg" style="display: inline-block; width: 30%; padding: 0px; height: 30px;"></select> 
         </div> 
         <div class="collapsible-body" style="padding: 10px 0;" id="scaffold"></div> </li> 
       </ul> 
      </div> 
     </div> 
     <div class="row"> 
      <form class="col s12"> 
       <div class="row"> 
        <div class="input-field col s12"> 
         <textarea id="plain_content" class="materialize-textarea"></textarea> 
         <label for="textarea1">Textarea</label> 
         <p> <a id="write_in_google" href="javascript:void(0);">Or write in google doc</a> </p> 
        </div> 
       </div> 
      </form> 
     </div> 
    </div> 
    <div class="modal-footer"> 
     <div class="loading" style="width: 70%; display: none;"> 
      <img src="../res/ajax-loader.gif">Creating note ..... 
     </div> 
     <div class="col s2" style="float: right;"> 
      <a id="savePlainText" class="modal-trigger waves-effect waves-light btn btn-confirm" style="margin-left: 10px; margin-right: 10px;">Save</a> 
      <a id="cancelWrite" class="modal-trigger modal-close waves-effect waves-light btn btn-confirm" href="#!">Cancel</a> 
     </div> 
    </div> 
   </div> 
   <div id="google_authorization_confirm" class="ui-widget-content" style="display: none; max-height: 500px; width: 80%; top:150px; ;left:10% ;position: absolute; z-index: 100;"> 
    <div class="row"> 
     <div class="col s11 blue-grey" id="add-note-title" style="height: 20px ;color:#fff">
      New Note
     </div> 
     <a class="col s1 btn blue-grey white-text btn-add-note-close">X</a> 
     <div class="col s12 not_draggable" style="padding-left: 0; padding-right: 0;"> 
      <div class="container" style="width: 100%;" id="new-note-container"> 
       <div id="new-note-for-itm" style="display:none"> 
        <div class="row" style="width: 92%; margin-right:auto;    margin-left: auto; margin-top: 5px;"> 
         <input placeholder="Title" id="add_note_title" type="text" class="validate"> 
         <select multiple id="select-user"> <option value="" disabled selected>Co-Author</option> </select> 
         <textarea id="add_note_content"></textarea> 
         <div class="row" style="width: 100%;
											    margin-right: auto;
											    margin-left: auto;
											    margin-top: 5px;
											    text-align: right;"> 
          <div class="pull-right"> 
           <a id="" class="btn">Cancel</a>&nbsp;&nbsp; 
           <a id="btn-save" data-mode="new" class="btn">Save</a> 
          </div> 
         </div> 
        </div> 
       </div> 
       <div class="row" id="new-note-for-kf-select-view" style="display:none;padding-left:10px;padding-right:10px;"> 
        <div class="col s12 " style="height: 30px">
         This new note will be saved in this idea thread and also in Knowledge Forum.
        </div> 
        <div class="col s8 " style="height: 30px">
         Select a Knowledge Forum view(s) for this note... 
        </div> 
        <div class="col s3" style="height: 30px">
         <a class="btn" style="color:white" id="btn-new-note-select-views">Start writing</a>
        </div> 
        <div class="col s12 "> 
         <iframe id="iFrame" src="viewlist.jsp" style="width: 100%;"></iframe> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div>  
   <div id="draggable" class="ui-widget-content" style="display: none; height: 500px; width: 750px; top: 200px; right: 500px; position: absolute; z-index: 100;"> 
    <div class="row"> 
     <div class="col s11 blue-grey" style="height: 20px"></div> 
     <a class="col s1 btn blue-grey white-text" id="close">X</a> 
     <div class="col s1 not_draggable" style="padding-left: 0"> 
      <a id="backward" class="btn white center-align z-depth-0" title="This note builds on..." style="height: 350px; vertical-align: middle; text-align: center; line-height: 350px;"><span style="font-size: 24px">&lt;</span></a> 
     </div> 
     <div class="col s10 not_draggable" style="padding-left: 0; padding-right: 0; min-width: 610px"> 
      <div class="container"> 
       <div class="row"> 
        <p id="title" style="overflow: auto; font-size: 20px;"></p> 
        <hr> 
        <p id="content" style="overflow: auto; height: 270px; font-size: 20px;"></p> 
        <input type="hidden" id="note_position_y"> 
        <input type="hidden" id="note_position_x"> 
        <input type="hidden" id="note_open_id"> 
       </div> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /supertalk3jsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var thread_id = thread_id;
var threadname = threadname;
var sel = "null";
var title = "null";
var new_data_note_id = [];
var data_note_id;
var date = new Date();
var content = "";
function GetSelectedTextHighlight(color, reason) {
  send(new Array('/supertalk3jsp.GetSelectedTextHighlight', ':::ENTER', new Array(addVariable('color', color), addVariable('content', content), addVariable('data_note_id', data_note_id), addVariable('date', date), addVariable('new_data_note_id', new_data_note_id), addVariable('reason', reason), addVariable('sel', sel), addVariable('thread_id', thread_id), addVariable('threadname', threadname), addVariable('title', title))));
  sel = window.getSelection().toString();
  if (sel != 0) 
  {
    content = sel;
    storeHighlightedContent(reason);
    if (sel.rangeCount && sel.getRangeAt) 
    {
      range = sel.getRangeAt(0);
    }
    document.designMode = "on";
    document.execCommand("BackColor", false, color);
    document.designMode = "off";
  } else {
    Materialize.toast('Please select text to highlight!', 4000);
  }
  send(new Array('/supertalk3jsp.GetSelectedTextHighlight', ':::EXIT13', new Array(addVariable('color', color), addVariable('content', content), addVariable('data_note_id', data_note_id), addVariable('date', date), addVariable('new_data_note_id', new_data_note_id), addVariable('reason', reason), addVariable('sel', sel), addVariable('thread_id', thread_id), addVariable('threadname', threadname), addVariable('title', title))));
}
</script> 
       <div class="row"> 
        <a class="col s4 btn teal lighten-1 white-text" id="btn-edit-note" style="font-size: 10px; width: 100px">Edit</a> 
        <a class="col s4 btn teal lighten-1 white-text" id="btn-build-on-note" style="margin-left: 10px; font-size: 10px; width: 100px">Build on</a> 
        <button class="col s4 dropdown-button btn teal lighten-1 white-text" id="highlightbtn" data-activates="highlightOptions" style="margin-left: 10px; font-size: 10px; width: 200px">Highlight</button> 
        <a class="col s4 dropdown-button btn teal lighten-1 white-text" href="#" data-activates="boxdropdown" style="margin-left: 10px; font-size: 10px; width: 100px">More...</a> 
       </div> 
       <ul id="highlightOptions" class="dropdown-content collection" style="width:100px;"> 
        <li><span style="color: red; font-size: 10.5px" title="Please select text to highlight, and select a reason(s):"><b>Please select text to highlight, and select a reason(s): </b></span></li> 
        <li style="background-color:#fdff4a"><a onmousedown="GetSelectedTextHighlight('#fdff4a','A “juicy” question for research')" href="#!"><span style="font-size: 11.5px;color:black;" title="A “juicy” question for research"><b>A “juicy” question for research</b></span></a></li> 
        <li style="background-color:#72e567"><a onmousedown="GetSelectedTextHighlight('#72e567','An “Aha” insight')" href="#!"><span style="font-size: 11.5px;color:black;" title="An “Aha” insight"><b>An “Aha” insight</b></span></a></li> 
        <li style="background-color:#fdb760"><a onmousedown="GetSelectedTextHighlight('#fdb760','A seed idea to refine')" href="#!"><span style="font-size: 11.5px;color:black;" title="A seed idea to refine"><b>A seed idea to refine</b></span></a></li> 
        <li style="background-color:#a6acff"><a onmousedown="GetSelectedTextHighlight('#a6acff','An important fact to consider')" href="#!"><span style="font-size: 11.5px;color:black;" title="An important fact to consider"><b>An important fact to consider</b></span></a></li> 
        <li style="background-color:#ff5b5b"><a onmousedown="GetSelectedTextHighlight('#ff5b5b','Conflicting ideas to look into')" href="#!"><span style="font-size: 11.5px;color:black;" title="Conflicting ideas to look into"><b>Conflicting ideas to look into</b></span></a></li> 
        <li style="background-color:#c0b1d0"><a onmousedown="GetSelectedTextHighlight('#c0b1d0','A gap of knowledge')" href="#!"><span style="font-size: 11.5px;color:black;" title="A gap of knowledge"><b>A gap of knowledge</b></span></a></li> 
        <!-- <li><div style="height: 10px; width: 10px; background-color: #728DA5; margin-left: 5px;"></div><a onmousedown="GetSelectedTextLightBlue()" href="#!">Other: type here <input type="text" name="highlightReason"></a></li> --> 
       </ul> 
       <ul id="boxdropdown" class="dropdown-content"> 
        <li><a href="#!">Collect</a></li> 
        <li><a href="#!">Copy to thread</a></li> 
        <li><a href="#!" id="removeNote">Remove</a></li> 
        <li><a href="#!" id="delNote">Delete</a></li> 
       </ul> 
      </div> 
     </div> 
     <div class="col s1 not_draggable" style="padding-left: 0; padding-right: 0;"> 
      <a id="forward" class="btn white center-align z-depth-0" title="This note is built on by..." style="height: 350px; vertical-align: middle; text-align: center; line-height: 350px;"><span style="font-size: 24px">&gt;</span></a> 
     </div> 
    </div> 
   </div> 
   <div id="searchoption" class="collection" style="display: none; width: 330px; position: fixed; right: 60px; top: 168px"> 
    <a href="#!" class="collection-item searchbyoptions">By author</a> 
    <a href="#!" class="collection-item searchbyoptions">By scaffold</a> 
    <a href="#!" class="collection-item searchbyoptions">By highlight</a> 
    <a href="#!" class="collection-item searchbyoptions">By contribution type</a> 
    <a href="#!" class="collection-item searchboxclose">Close</a> 
   </div> 
   <div id="draggableJof" class="ui-widget-content" style="display: none; width: 50%; top: 95px; right: 0px; position: absolute"> 
    <div class="row" style="margin-bottom:0px;"> 
     <div class="row" style="margin-bottom:0px;"> 
      <input id="jot_id" type="hidden"> 
      <div style="float:left;line-height:22px;line-height: 22px;padding-top: 13px;     width: 33%"> 
       <a href="javascript:jotCompile()" id="btn-jot-compile" style="color: #039be5; padding-left: 17px;">Compile</a> 
       <a href="javascript:jotDetail()" id="btn-jot-detail" style="color: #039be5; padding-left: 17px; display:none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Detail</a> 
      </div> 
      <div style="float:left">
       <h5 class="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Journey of Thinking</h5>
      </div> 
      <div style="float:right;clear:right"> 
       <a id="jot_large" href="javascript:jotEnlarge()"><i class="material-icons">crop_5_4</i></a> 
       <a id="jot_normal" style="display:none" href="javascript:jotNormal()"><i class="material-icons">crop_7_5</i></a> 
       <a href="javascript:closeJot()"><i class="material-icons">clear</i></a> 
      </div> 
     </div> 
     <div class="row" style="margin-bottom:0px;"> 
      <ul class="collapsible" data-collapsible="accordion" style="margin:0px"> 
       <li> 
        <div class="collapsible-header expend">
         Our Problems:
        </div> 
        <div class="collapsible-body"> 
         <div id="problem_textarea" class="jot_text_area"></div> 
         <div class="row" style="margin-bottom: 0px; border-bottom: solid #ccc 1px; border-top: solid #ccc 1px; background-color: #efefef;"> 
          <input id="problem" type="button" src="../res/problem.gif" style=" background: url(&quot;../res/problem.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="problem_text_area_button" style="float:right;width:45px; height: 27px; margin-right: 1px; " type="button" value="Save"> 
         </div> 
         <div> 
          <span style="display: block; overflow: hidden;"> <textarea row="3" type="textarea" id="problem_text_area_input" style=" width: 100%; margin: 0px; padding-left: 5px; z-index: auto; position: relative; height:60px;
   									font-size: 12.5px;  transition: none; background: transparent !important;"> </textarea></span> 
         </div> 
        </div> </li> 
       <li> 
        <div class="collapsible-header expend">
         Big ideas we have learned:
        </div> 
        <div class="collapsible-body"> 
         <div class=" jot_text_area" id="idea_textarea"> 
         </div> 
         <div class="row" style="margin-bottom: 0px; border-bottom: solid #ccc 1px; border-top: solid #ccc 1px; background-color: #efefef;"> 
          <input id="think" type="button" style=" background: url(&quot;../res/think.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="insight" type="button" style=" background: url(&quot;../res/insight.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="think_text_area_button" style="float:right;width:45px; height: 27px; margin-right: 1px; " type="button" value="Save"> 
         </div> 
         <div> 
          <span style="display: block; overflow: hidden;"> <textarea row="3" type="text" id="think_text_area_input" style=" width: 100%; margin: 0px; padding-left: 5px; z-index: auto; position: relative; height: 60px;
   									font-size: 12.5px;  transition: none; background: transparent !important;"> </textarea></span> 
         </div> 
        </div> </li> 
       <li> 
        <div class="collapsible-header expend">
         We need to do more:
        </div> 
        <div class="collapsible-body"> 
         <div class="jot_text_area" id="to_do_textarea"> 
         </div> 
         <div class="row" style="margin-bottom: 0px; border-bottom: solid #ccc 1px; border-top: solid #ccc 1px; background-color: #efefef;"> 
          <input id="understand" type="button" style=" background: url(&quot;../res/understand.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="bettertheory" type="button" style=" background: url(&quot;../res/Better%20theory.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="read" type="button" style=" background: url(&quot;../res/read.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="evidence" type="button" style=" background: url(&quot;../res/evidence.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="disagree" type="button" style=" background: url(&quot;../res/disagree.gif&quot;); width:29px; height: 27px;  background-size: cover;"> 
          <input id="understand_text_area_button" style="float:right;width:45px; height: 27px; margin-right: 1px; " type="button" value="Save"> 
         </div> 
         <div> 
          <span style="display: block; overflow: hidden;"> <textarea row="3" id="understand_text_area_input" style=" width: 100%; margin: 0px; padding-left: 5px; z-index: auto; position: relative; height: 60px;
   									font-size: 12.5px;  transition: none; background: transparent !important;"> </textarea></span> 
         </div> 
        </div> </li> 
      </ul> 
     </div> 
    </div> 
   </div>  
  </main> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../js/materialize.min.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../js/tinymce/tinymce.min.js"></script> 
  <script src="../js/notify.js"></script> 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /supertalk3jsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var isSupertalk = true;
var localdb = getUrlParameter('localdb');
var community = getUrlParameter('community');
var community_id = getUrlParameter('community_id');
var type = 0;
var urname = '<%=session.getAttribute("username")%>';
var id = '<%=session.getAttribute("id")%>';
var itmdb = '<%=session.getAttribute("ITMDatabase")%>';
var domain = getUrlParameter('domain');
var school = getUrlParameter('school');
var country = getUrlParameter('country');
var city = getUrlParameter('city');
var project_id = getUrlParameter('project_id');
var project_name = "";
var thread_id = getUrlParameter('thread_id');
var threadname = "";
var isCrossProject = false;
var super_token = '<%=session.getAttribute("super_token")%>';
var token = '<%=session.getAttribute("super_token")%>';
var isSupertalk = true;
sessionTimeOut('<%=session.getAttribute("SessionTimeOut")%>');
</script> 
  <!--<%@ include file="super_talk_info_modal.jsp"%>
	<%@ include file="jot.jsp"%> 
	<%@ include file="buildontofrom.jsp"%>
	<%@ include file="showbuildon_supertalk.jsp"%> 
	<%@ include file="showhighlight.jsp"%>
	<%@ include file="showauthortitle.jsp"%>
	<%@ include file="showauthor.jsp"%>
	<%@ include file="showtitle.jsp"%>
	<%@ include file="notereadadd.jsp"%>-->  
 </body>
</html>