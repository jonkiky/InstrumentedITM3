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
(function($, document, window, undefined) {
  send(new Array('/insertAtCaretjs.anonymous13', ':::ENTER', new Array(addVariable('$', $), addVariable('document', document), addVariable('undefined', undefined), addVariable('window', window))));
  $.fn.insertAtCaret = function(text) {
  send(new Array('/insertAtCaretjs.anonymous14', ':::ENTER', new Array(addVariable('$', $), addVariable('document', document), addVariable('text', text), addVariable('undefined', undefined), addVariable('window', window))));
  send(new Array('/insertAtCaretjs.anonymous14', ':::EXIT15', new Array(addVariable('$', $), addVariable('document', document), addVariable('text', text), addVariable('undefined', undefined), addVariable('window', window))));
  return this.each(function() {
  send(new Array('/insertAtCaretjs.anonymous15', ':::ENTER', new Array(addVariable('$', $), addVariable('after', after), addVariable('before', before), addVariable('document', document), addVariable('input', input), addVariable('isModernBrowser', isModernBrowser), addVariable('range', range), addVariable('scrollPos', scrollPos), addVariable('selection', selection), addVariable('strPosEnd', strPosEnd), addVariable('strPosStart', strPosStart), addVariable('text', text), addVariable('undefined', undefined), addVariable('window', window))));
  var input = this, scrollPos, strPosStart = 0, strPosEnd = 0, isModernBrowser = ("selectionStart" in input && "selectionEnd" in input), before, after, range, selection;
  if (!((input.tagName && input.tagName.toLowerCase() === "textarea") || (input.tagName && input.tagName.toLowerCase() === "input" && input.type.toLowerCase() === "text"))) 
  {
    send(new Array('/insertAtCaretjs.anonymous15', ':::EXIT19', new Array(addVariable('$', $), addVariable('after', after), addVariable('before', before), addVariable('document', document), addVariable('input', input), addVariable('isModernBrowser', isModernBrowser), addVariable('range', range), addVariable('scrollPos', scrollPos), addVariable('selection', selection), addVariable('strPosEnd', strPosEnd), addVariable('strPosStart', strPosStart), addVariable('text', text), addVariable('undefined', undefined), addVariable('window', window))));
    return;
  }
  scrollPos = input.scrollTop;
  if (isModernBrowser) 
  {
    strPosStart = input.selectionStart;
    strPosEnd = input.selectionEnd;
  } else {
    input.focus();
    range = document.selection.createRange();
    range.moveStart('character', -input.value.length);
    strPosStart = range.text.length;
  }
  if (strPosEnd < strPosStart) 
  strPosEnd = strPosStart;
  before = (input.value).substring(0, strPosStart);
  after = (input.value).substring(strPosEnd, input.value.length);
  input.value = before + text + after;
  strPosStart = strPosStart + text.length;
  if (isModernBrowser) 
  {
    input.selectionStart = strPosStart;
    input.selectionEnd = strPosStart;
  } else {
    range = document.selection.createRange();
    range.moveStart('character', strPosStart);
    range.moveEnd('character', 0);
    range.select();
  }
  input.scrollTop = scrollPos;
  send(new Array('/insertAtCaretjs.anonymous15', ':::EXIT52', new Array(addVariable('$', $), addVariable('after', after), addVariable('before', before), addVariable('document', document), addVariable('input', input), addVariable('isModernBrowser', isModernBrowser), addVariable('range', range), addVariable('scrollPos', scrollPos), addVariable('selection', selection), addVariable('strPosEnd', strPosEnd), addVariable('strPosStart', strPosStart), addVariable('text', text), addVariable('undefined', undefined), addVariable('window', window))));
});
};
  send(new Array('/insertAtCaretjs.anonymous13', ':::EXIT14', new Array(addVariable('$', $), addVariable('document', document), addVariable('undefined', undefined), addVariable('window', window))));
})(jQuery, document, window);
