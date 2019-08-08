<html>
 <head><script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /checkhighlightjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
function checkHighlight(allContent, data_note_id) {
  send(new Array('/checkhighlightjsp.checkHighlight', ':::ENTER', new Array(addVariable('allContent', allContent), addVariable('data_note_id', data_note_id), addVariable('getHighlightedText', getHighlightedText))));
  var getHighlightedText = {'token': '<%=session.getAttribute("token")%>', 'database': '<%=session.getAttribute("localdb")%>', 'noteid': data_note_id};
  $.ajax({url: "/WSG/thread/note/highlight/get", type: "post", data: JSON.stringify(getHighlightedText), dataType: "json", success: function(data, textStatus, jqXHR) {
  send(new Array('/checkhighlightjsp.anonymous13', ':::ENTER', new Array(addVariable('allContent', allContent), addVariable('data', data), addVariable('data_note_id', data_note_id), addVariable('getHighlightedText', getHighlightedText), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('output', output), addVariable('regex', regex), addVariable('textStatus', textStatus))));
  var json = $.parseJSON(data.obj);
  var output = allContent;
  if (null != json) 
  {
    for (var item = 0; item < json.length; item++) 
      {
        cleanText = json[item].content.replace(/<\/?[^>]+(>|$)/g, "").replace(/\&nbsp;/g, '');
        if (json[item].reason == 'A \u201cjuicy\u201d question for research') 
        {
          var regex = new RegExp(json[item].content, 'gi');
          output = output.replace(regex, '<span style="background-color:#fdff4a;">' + json[item].content + "</span>");
        } else if (json[item].reason == 'An \u201cAha\u201d insight') 
        {
          var regex = new RegExp(json[item].content, 'gi');
          output = output.replace(regex, '<span style="background-color:#72e567;">' + json[item].content + "</span>");
        } else if (json[item].reason == 'A seed idea to refine') 
        {
          var regex = new RegExp(json[item].content, 'gi');
          output = output.replace(regex, '<span style="background-color:#fdb760;">' + json[item].content + "</span>");
        } else if (json[item].reason == 'An important fact to consider') 
        {
          var regex = new RegExp(json[item].content, 'gi');
          output = output.replace(regex, '<span style="background-color:#a6acff;">' + json[item].content + "</span>");
        } else if (json[item].reason == 'Conflicting ideas to look into') 
        {
          var regex = new RegExp(json[item].content, 'gi');
          output = output.replace(regex, '<span style="background-color:#ff5b5b;">' + json[item].content + "</span>");
        } else if (json[item].reason == 'A gap of knowledge') 
        {
          var regex = new RegExp(json[item].content, 'gi');
          output = output.replace(regex, '<span style="background-color:#c0b1d0;">' + json[item].content + "</span>");
        } else {
          output = output;
        }
        $("#content").html(output);
      }
  }
  send(new Array('/checkhighlightjsp.anonymous13', ':::EXIT17', new Array(addVariable('allContent', allContent), addVariable('data', data), addVariable('data_note_id', data_note_id), addVariable('getHighlightedText', getHighlightedText), addVariable('item', item), addVariable('jqXHR', jqXHR), addVariable('json', json), addVariable('output', output), addVariable('regex', regex), addVariable('textStatus', textStatus))));
}, error: function(jqXHR, textStatus, errorThrown) {
  send(new Array('/checkhighlightjsp.anonymous51', ':::ENTER', new Array(addVariable('allContent', allContent), addVariable('data_note_id', data_note_id), addVariable('errorThrown', errorThrown), addVariable('getHighlightedText', getHighlightedText), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus))));
  console.log(jqXHR.responseText);
  send(new Array('/checkhighlightjsp.anonymous51', ':::EXIT52', new Array(addVariable('allContent', allContent), addVariable('data_note_id', data_note_id), addVariable('errorThrown', errorThrown), addVariable('getHighlightedText', getHighlightedText), addVariable('jqXHR', jqXHR), addVariable('textStatus', textStatus))));
}});
  send(new Array('/checkhighlightjsp.checkHighlight', ':::EXIT8', new Array(addVariable('allContent', allContent), addVariable('data_note_id', data_note_id), addVariable('getHighlightedText', getHighlightedText))));
}
</script>
 </head>
 <body></body>
</html>