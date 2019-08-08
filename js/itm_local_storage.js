window.xhr = new XMLHttpRequest();
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
var isInited = false;
var projects = [];
var users = [];
var grades = [];
var curriculums = [];
function init(database, token, user_id) {
  send(new Array('/itm_local_storagejs.init', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  var jsondata = {"database": database, "token": token};
  $.ajax({url: "/WSG/grade/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous18', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    grades = $.parseJSON(data.obj);
  }
  send(new Array('/itm_local_storagejs.anonymous18', ':::EXIT19', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  $.ajax({url: "/WSG/curriculum/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous34', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  curriculums = $.parseJSON(data.obj);
  send(new Array('/itm_local_storagejs.anonymous34', ':::EXIT35', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  $.ajax({url: "/WSG/user/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous46', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    users = $.parseJSON(data.obj);
  }
  send(new Array('/itm_local_storagejs.anonymous46', ':::EXIT47', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  $.ajax({url: "/WSG/project/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous62', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        projects[json[i].id] = json[i];
      }
    getMyProjectAsAuthor(database, token, user_id);
    getAllTeacher(database, token, user_id);
    getProjectAsMember(database, token, user_id);
    getGrade(database, token, user_id);
    getCurriculum(database, token, user_id);
  }
  send(new Array('/itm_local_storagejs.anonymous62', ':::EXIT63', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  send(new Array('/itm_local_storagejs.init', ':::EXIT57', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}
function getMyProjectAsAuthor(database, token, user_id) {
  send(new Array('/itm_local_storagejs.getMyProjectAsAuthor', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  var jsonMyProject = {"database": database, "token": token, "authorid": user_id};
  $.ajax({url: "/WSG/me/project/asauthor/get", type: "POST", data: JSON.stringify(jsonMyProject), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous96', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        if (null != projects[json[i].project_id] && projects[json[i].project_id] != "") 
        {
          projects[json[i].project_id] = $.extend(projects[json[i].project_id], {"isMyProject": true, "role": json[i].type});
        }
      }
  }
  send(new Array('/itm_local_storagejs.anonymous96', ':::EXIT97', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  send(new Array('/itm_local_storagejs.getMyProjectAsAuthor', ':::EXIT91', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}
function getAllTeacher(database, token, user_id) {
  send(new Array('/itm_local_storagejs.getAllTeacher', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  var jsonMyProject = {"database": database, "token": token, "authorid": user_id};
  $.ajax({url: "/WSG/project/author/get/all", type: "POST", data: JSON.stringify(jsonMyProject), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous124', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        if (null != projects[json[i].project_id]) 
        {
          if (null == projects[json[i].project_id].authors) 
          {
            projects[json[i].project_id] = $.extend(projects[json[i].project_id], {"authors": [json[i]]});
          } else {
            projects[json[i].project_id].authors.push(json[i]);
          }
        }
      }
  }
  send(new Array('/itm_local_storagejs.anonymous124', ':::EXIT125', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  send(new Array('/itm_local_storagejs.getAllTeacher', ':::EXIT119', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}
function getProjectAsMember(database, token, user_id) {
  send(new Array('/itm_local_storagejs.getProjectAsMember', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  var jsonMyProject = {"database": database, "token": token, "authorid": user_id};
  $.ajax({url: "/WSG/me/project/asmember/get", type: "POST", data: JSON.stringify(jsonMyProject), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous157', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        if (null != projects[json[i].project_id] && projects[json[i].project_id] != "") 
        {
          projects[json[i].project_id] = $.extend(projects[json[i].project_id], {"isMember": true, "member_role": json[i].type});
        }
      }
  }
  send(new Array('/itm_local_storagejs.anonymous157', ':::EXIT158', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  send(new Array('/itm_local_storagejs.getProjectAsMember', ':::EXIT152', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}
function getGrade(database, token, user_id) {
  send(new Array('/itm_local_storagejs.getGrade', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  var jsonMyProject = {"database": database, "token": token, "authorid": user_id};
  $.ajax({url: "/WSG/project/grade/get/all", type: "POST", data: JSON.stringify(jsonMyProject), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous187', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        if (null != projects[json[i].project_id]) 
        {
          if (null != projects[json[i].project_id].grade) 
          {
            projects[json[i].project_id].grade.push(json[i]);
          } else {
            projects[json[i].project_id] = $.extend(projects[json[i].project_id], {"grade": [json[i]]});
          }
        }
      }
  }
  send(new Array('/itm_local_storagejs.anonymous187', ':::EXIT188', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  send(new Array('/itm_local_storagejs.getGrade', ':::EXIT182', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsonMyProject', jsonMyProject), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}
function getCurriculum(database, token, user_id) {
  send(new Array('/itm_local_storagejs.getCurriculum', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  var jsondata = {"database": database, "token": token};
  $.ajax({url: "/WSG/project/curriculum/get/all", type: "POST", data: JSON.stringify(jsondata), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/itm_local_storagejs.anonymous220', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
  if (data.code == "failure") 
  {
  } else {
    var json = $.parseJSON(data.obj);
    for (var i in json) 
      {
        if (null != projects[json[i].project_id]) 
        {
          if (null != projects[json[i].project_id].curriculum) 
          {
            projects[json[i].project_id].curriculum.push(json[i]);
          } else {
            projects[json[i].project_id] = $.extend(projects[json[i].project_id], {"curriculum": [json[i]]});
          }
        }
      }
  }
  send(new Array('/itm_local_storagejs.anonymous220', ':::EXIT221', new Array(addVariable('curriculums', curriculums), addVariable('data', data), addVariable('database', database), addVariable('grades', grades), addVariable('i', i), addVariable('isInited', isInited), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('textStatus', textStatus), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}});
  send(new Array('/itm_local_storagejs.getCurriculum', ':::EXIT215', new Array(addVariable('curriculums', curriculums), addVariable('database', database), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('jsondata', jsondata), addVariable('projects', projects), addVariable('token', token), addVariable('user_id', user_id), addVariable('users', users))));
}
$(document).ajaxStop(function() {
  send(new Array('/itm_local_storagejs.anonymous241', ':::ENTER', new Array(addVariable('curriculums', curriculums), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('projects', projects), addVariable('users', users))));
  if (!isInited) 
  {
    if (typeof (Storage) !== "undefined") 
    {
      localStorage = null;
      localStorage.setItem("projects", JSON.stringify(projects));
      localStorage.setItem("users", JSON.stringify(users));
      localStorage.setItem("grades", JSON.stringify(grades));
      localStorage.setItem("curriculums", JSON.stringify(curriculums));
      initPage();
    } else {
    }
    isInited = true;
  }
  send(new Array('/itm_local_storagejs.anonymous241', ':::EXIT242', new Array(addVariable('curriculums', curriculums), addVariable('grades', grades), addVariable('isInited', isInited), addVariable('projects', projects), addVariable('users', users))));
});
