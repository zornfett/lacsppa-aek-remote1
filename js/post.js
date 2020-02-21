document.writeln("<table width=99% height=100% cellpadding=0 cellspacing=0 border=0><tr style='height:30px'><td align=left>");
var FormatTextlist="bold bold|italic italic|underline underline|Justifyleft Justifyleft|JustifyCenter JustifyCenter|JustifyRight JustifyRight|justifyfull justifyfull|insertorderedlist insertorderedlist|InsertUnorderedList InsertUnorderedList|Outdent Outdent|indent indent"
var list= FormatTextlist.split ('|'); 
for(i=0;i<list.length;i++)
 {
     var TextName= list[i].split (' ');     
     document.write("<img align=absmiddle src=../img/message/"+TextName[1]+".gif alt="+TextName[0]+" style=cursor:hand onClick=FormatText('"+TextName[1]+"')> ");     
}

document.writeln("</td></tr><tr><td height=100%><iframe ID=HtmlEditor MARGINHEIGHT=5 MARGINWIDTH=5 width=100% height=100%></iframe></td></tr><tr></tr></table>");

if (document.all){var IframeID=frames["HtmlEditor"];}else{var IframeID=document.getElementById("HtmlEditor").contentWindow;}
if (navigator.appVersion.indexOf("MSIE 6.0",0)==-1){IframeID.document.designMode="On"}
IframeID.document.open();
IframeID.document.close();
IframeID.document.body.contentEditable = "True";
IframeID.document.body.innerHTML=document.getElementById("content").value;
IframeID.document.body.style.fontSize="16pt";

function FormatText(command,option){IframeID.focus();IframeID.document.execCommand(command,true,option);}

