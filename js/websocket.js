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
'use strict';
var path = window.location.host + '/ITM3';
var websocket;
if ('WebSocket' in window) 
{
  websocket = new WebSocket("WS://" + path + "/ws?uid=2");
} else if ('MozWebSocket' in window) 
{
  websocket = new MozWebSocket("WS://" + path + "/ws1");
} else {
  websocket = new SockJS("http://" + path + "/ws/sockjs1");
}
websocket.onopen = function(event) {
  send(new Array('/websocketjs.anonymous11', ':::ENTER', new Array(addVariable('event', event), addVariable('path', path), addVariable('websocket', websocket))));
  console.log("WebSocket:connected");
  console.log(event);
  send(new Array('/websocketjs.anonymous11', ':::EXIT13', new Array(addVariable('event', event), addVariable('path', path), addVariable('websocket', websocket))));
};
websocket.onerror = function(event) {
  send(new Array('/websocketjs.anonymous16', ':::ENTER', new Array(addVariable('event', event), addVariable('path', path), addVariable('websocket', websocket))));
  console.log("WebSocket:Err ");
  console.log(event);
  send(new Array('/websocketjs.anonymous16', ':::EXIT18', new Array(addVariable('event', event), addVariable('path', path), addVariable('websocket', websocket))));
};
websocket.onclose = function(event) {
  send(new Array('/websocketjs.anonymous20', ':::ENTER', new Array(addVariable('event', event), addVariable('path', path), addVariable('websocket', websocket))));
  console.log("WebSocket:Close");
  console.log(event);
  send(new Array('/websocketjs.anonymous20', ':::EXIT22', new Array(addVariable('event', event), addVariable('path', path), addVariable('websocket', websocket))));
};
