document.writeln("<table width=97% height=100% cellpadding=0 cellspacing=0 border=0>");

document.writeln("<tr><td height=100%><iframe ID=HtmlEditor  width=100% height=100%></iframe></td></tr><tr></tr></table>");

if (document.all){var IframeID=frames["HtmlEditor"];}else{var IframeID=document.getElementById("HtmlEditor").contentWindow;}
if (navigator.appVersion.indexOf("MSIE 6.0",0)==-1){IframeID.document.designMode="On"}
IframeID.document.open();
IframeID.document.close();
IframeID.document.body.contentEditable = "false";
IframeID.document.body.innerHTML=document.getElementById("content").value;
IframeID.document.body.style.fontSize="16pt";

function FormatText(command,option){IframeID.focus();IframeID.document.execCommand(command,true,option);}
