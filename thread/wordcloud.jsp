<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
  <script src="../js/jquery-ui.js"></script> 
  <script src="../js/jquery.sessionTimeout.js"></script> 
  <script src="../js/itm.js"></script> 
 </head> 
 <body> 
  <div id="result"></div> 
  <div id="jot-compile-content"> 
  </div> 
  <!--Import jQuery before materialize.js--> 
  <script type="text/javascript" src="../js/materialize.js"></script> 
  <script src="https://d3js.org/d3.v4.min.js"></script> 
  <script src="../js/tinymce/tinymce.min.js"></script> 
  <script src="../js/notify.js"></script> 
  <script src="../js/jqcloud.min.js"></script> <script> function sendCurrentDom(){
	var domInfo = 
		document.getElementsByTagName("body")[0].innerHTML;
	 send(new Array(, /wordcloudjsp':::ENTER', new Array(addVariable('domInfo', domInfo))));

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
var cid = getUrlParameter('communityid');
var tid = getUrlParameter('threadid');
var pid = getUrlParameter('projectid');
var problem_name = cid + "_" + tid + "_" + pid + "_last_problem";
var idea_name = cid + "_" + tid + "_" + pid + "_last_idea";
var todo_name = cid + "_" + tid + "_" + pid + "_last_to_do";
console.log(window.parent[problem_name]);
console.log(window.parent[idea_name]);
console.log(window.parent[todo_name]);
var pattern = /\w+/g, string = window.parent[problem_name].replace(/undefined/g, "").replace(/<\/?.+?>/g, "") + window.parent[idea_name].replace(/undefined/g, "").replace(/<\/?.+?>/g, "") + window.parent[todo_name].replace(/undefined/g, "").replace(/<\/?.+?>/g, "");
var matchedWords = string.match(pattern);
var counts = matchedWords.reduce(function(stats, word) {
  send(new Array('/wordcloudjsp.anonymous17', ':::ENTER', new Array(addVariable('cid', cid), addVariable('counts', counts), addVariable('idea_name', idea_name), addVariable('key', key), addVariable('matchedWords', matchedWords), addVariable('pattern', pattern), addVariable('pid', pid), addVariable('problem_name', problem_name), addVariable('stats', stats), addVariable('string', string), addVariable('tid', tid), addVariable('todo_name', todo_name), addVariable('ttt', ttt), addVariable('word', word))));
  if (stats.hasOwnProperty(word)) 
  {
    stats[word] = stats[word] + 1;
  } else {
    stats[word] = 1;
  }
  send(new Array('/wordcloudjsp.anonymous17', ':::EXIT23', new Array(addVariable('cid', cid), addVariable('counts', counts), addVariable('idea_name', idea_name), addVariable('key', key), addVariable('matchedWords', matchedWords), addVariable('pattern', pattern), addVariable('pid', pid), addVariable('problem_name', problem_name), addVariable('stats', stats), addVariable('string', string), addVariable('tid', tid), addVariable('todo_name', todo_name), addVariable('ttt', ttt), addVariable('word', word))));
  return stats;
}, {});
stopwords = ['a', 'about', 'above', 'across', 'after', 'afterwards', 'again', 'against', 'all', 'almost', 'alone', 'along', 'already', 'also', 'although', 'always', 'am', 'among', 'amongst', 'amoungst', 'amount', 'an', 'and', 'another', 'any', 'anyhow', 'anyone', 'anything', 'anyway', 'anywhere', 'are', 'around', 'as', 'at', 'back', 'be', 'became', 'because', 'become', 'becomes', 'becoming', 'been', 'before', 'beforehand', 'behind', 'being', 'below', 'beside', 'besides', 'between', 'beyond', 'bill', 'both', 'bottom', 'but', 'by', 'call', 'can', 'cannot', 'cant', 'co', 'computer', 'con', 'could', 'couldnt', 'cry', 'de', 'describe', 'detail', 'did', 'do', 'done', 'down', 'due', 'during', 'each', 'eg', 'eight', 'either', 'eleven', 'else', 'elsewhere', 'empty', 'enough', 'etc', 'even', 'ever', 'every', 'everyone', 'everything', 'everywhere', 'except', 'few', 'fifteen', 'fifty', 'fill', 'find', 'fire', 'first', 'five', 'for', 'former', 'formerly', 'forty', 'found', 'four', 'from', 'front', 'full', 'further', 'get', 'give', 'go', 'had', 'has', 'hasnt', 'have', 'he', 'hence', 'her', 'here', 'hereafter', 'hereby', 'herein', 'hereupon', 'hers', 'herself', 'him', 'himself', 'his', 'how', 'however', 'hundred', 'i', 'ie', 'if', 'in', 'inc', 'indeed', 'interest', 'into', 'is', 'it', 'its', 'itself', 'keep', 'last', 'latter', 'latterly', 'least', 'less', 'ltd', 'made', 'many', 'may', 'me', 'meanwhile', 'might', 'mill', 'mine', 'more', 'moreover', 'most', 'mostly', 'move', 'much', 'must', 'my', 'myself', 'name', 'namely', 'neither', 'never', 'nevertheless', 'next', 'nine', 'no', 'nobody', 'none', 'noone', 'nor', 'not', 'nothing', 'now', 'nowhere', 'of', 'off', 'often', 'on', 'once', 'one', 'only', 'onto', 'or', 'other', 'others', 'otherwise', 'our', 'ours', 'ourselves', 'out', 'over', 'own', 'part', 'per', 'perhaps', 'please', 'put', 'rather', 're', 's', 'same', 'see', 'seem', 'seemed', 'seeming', 'seems', 'serious', 'several', 'she', 'should', 'show', 'side', 'since', 'sincere', 'six', 'sixty', 'so', 'some', 'somehow', 'someone', 'something', 'sometime', 'sometimes', 'somewhere', 'still', 'such', 'system', 'take', 'ten', 'than', 'that', 'the', 'their', 'them', 'themselves', 'then', 'thence', 'there', 'thereafter', 'thereby', 'therefore', 'therein', 'thereupon', 'these', 'they', 'thick', 'thin', 'third', 'this', 'those', 'though', 'three', 'three', 'through', 'throughout', 'thru', 'thus', 'to', 'together', 'too', 'top', 'toward', 'towards', 'twelve', 'twenty', 'two', 'un', 'under', 'until', 'up', 'upon', 'us', 'very', 'via', 'was', 'we', 'well', 'were', 'what', 'whatever', 'when', 'whence', 'whenever', 'where', 'whereafter', 'whereas', 'whereby', 'wherein', 'whereupon', 'wherever', 'whether', 'which', 'while', 'whither', 'who', 'whoever', 'whole', 'whom', 'whose', 'why', 'will', 'with', 'within', 'without', 'would', 'yet', 'you', 'your', 'yours', 'yourself', 'yourselves', 'yes'];
stopwords.forEach(function(element) {
  send(new Array('/wordcloudjsp.anonymous72', ':::ENTER', new Array(addVariable('cid', cid), addVariable('counts', counts), addVariable('element', element), addVariable('idea_name', idea_name), addVariable('key', key), addVariable('matchedWords', matchedWords), addVariable('pattern', pattern), addVariable('pid', pid), addVariable('problem_name', problem_name), addVariable('string', string), addVariable('tid', tid), addVariable('todo_name', todo_name), addVariable('ttt', ttt))));
  delete counts[element];
  send(new Array('/wordcloudjsp.anonymous72', ':::EXIT73', new Array(addVariable('cid', cid), addVariable('counts', counts), addVariable('element', element), addVariable('idea_name', idea_name), addVariable('key', key), addVariable('matchedWords', matchedWords), addVariable('pattern', pattern), addVariable('pid', pid), addVariable('problem_name', problem_name), addVariable('string', string), addVariable('tid', tid), addVariable('todo_name', todo_name), addVariable('ttt', ttt))));
});
console.log(counts);
for (var key in counts) 
  {
    if (key.slice(0, -1) in counts) 
    delete counts[key]; else if (key.slice(0, -2) in counts) 
    delete counts[key];
  }
var ttt = [];
for (var key in counts) 
  {
    ttt.push({text: key, weight: counts[key]});
  }
console.log("window.innerWidth");
console.log(window.parent.innerWidth);
newdiv = $('<div class="center-align"></div>').jQCloud(ttt, {width: window.parent.innerWidth * 0.6, height: 350});
$("#jot-compile-content").append(newdiv);
</script>  
 </body>
</html>