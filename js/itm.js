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
function sessionTimeOut(sessionTime) {
  send(new Array('/itmjs.sessionTimeOut', ':::ENTER', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('sessionTime', sessionTime))));
  $.sessionTimeout({warnAfter: 60 * 60 * 1000, redirAfter: 10000, keepAliveAjaxRequestType: "GET", redirUrl: "/ITM3/", keepAliveUrl: "/ITM3/session", logoutUrl: "/ITM3/?id=3"});
  send(new Array('/itmjs.sessionTimeOut', ':::EXIT1', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('sessionTime', sessionTime))));
}
function sleepFor(sleepDuration) {
  send(new Array('/itmjs.sleepFor', ':::ENTER', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('now', now), addVariable('sleepDuration', sleepDuration))));
  var now = new Date().getTime();
  while (new Date().getTime() < now + sleepDuration) 
    {
    }
  send(new Array('/itmjs.sleepFor', ':::EXIT14', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('now', now), addVariable('sleepDuration', sleepDuration))));
}
var getUrlParameter = function getUrlParameter(sParam) {
  send(new Array('/itmjs.getUrlParameter', ':::ENTER', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('i', i), addVariable('sPageURL', sPageURL), addVariable('sParam', sParam), addVariable('sParameterName', sParameterName), addVariable('sURLVariables', sURLVariables))));
  var sPageURL = decodeURIComponent(window.location.search.substring(1)), sURLVariables = sPageURL.split('&'), sParameterName, i;
  for (i = 0; i < sURLVariables.length; i++) 
    {
      sParameterName = sURLVariables[i].split('=');
      if (sParameterName[0] === sParam) 
      {
        send(new Array('/itmjs.getUrlParameter', ':::EXIT28', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('i', i), addVariable('sPageURL', sPageURL), addVariable('sParam', sParam), addVariable('sParameterName', sParameterName), addVariable('sURLVariables', sURLVariables))));
        return sParameterName[1] === undefined ? true : sParameterName[1];
      }
    }
  send(new Array('/itmjs.getUrlParameter', ':::EXIT24', new Array(addVariable('getUrlParameter', getUrlParameter), addVariable('i', i), addVariable('sPageURL', sPageURL), addVariable('sParam', sParam), addVariable('sParameterName', sParameterName), addVariable('sURLVariables', sURLVariables))));
};
