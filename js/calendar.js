
var ie =navigator.appName=="Microsoft Internet Explorer"?true:false;
function GEBI(objID){
	return document.getElementById(objID);
}

var controlid = null;
var currdate = null;
var startdate = null;
var enddate  = null;
var yy = null;
var mm = null;
var hh = null;
var ii = null;
var currday = null;
var addtime = false;
var today = new Date();
var lastcheckedyear = false;
var lastcheckedmonth = false;
var submitcc = false;
function _cancelBubble(event) {
	e = event ? event : window.event ;
	if(ie) {
		e.cancelBubble = true;
	} else {
		e.stopPropagation();
	}
}
function getposition(obj) {
	var r = new Array();
	r['x'] = obj.offsetLeft;	
	r['y'] = obj.offsetTop;	
	
	while(obj = obj.offsetParent) {
		//r['x'] += obj.offsetLeft;
		//r['y'] += obj.offsetTop;
		r['x'] += obj.offsetLeft
		r['y'] += obj.offsetTop-obj.scrollTop;
	}
	
	return r;
}
function loadcalendar() {
	s = '';
	s += '<div id="calendar" style="display:none; position:absolute; z-index:9;" onclick="_cancelBubble(event)">';
	if (ie)
	{
		s += '<iframe width="200" height="160" src="about:blank" style="position: absolute;z-index:-1;"></iframe>';
	}
	s += '<div style="width: 200px;"><table class="tableborder" cellspacing="0" cellpadding="0" width="100%" style="text-align: center">';
	s += '<tr align="center" class="header"><td colspan="7"><table cellspacing="0" cellpadding="0" width="100%" style="text-align: center"><tr><td class="header"><a href="#" onclick="refreshcalendar(yy-1, mm);return false" title="Last Year"><<</a></td>';
	s +='<td  style="text-align: center" class="header"><a href="#" title="Please select year" id="year" name="year" onclick="GEBI(\'calendar_month\').style.display = \'none\';showdiv(\'year\');_cancelBubble(event);return false"></a></td>';
	s +='<td class="header"><A href="#" onclick="refreshcalendar(yy+1, mm);return false" title="Next Year">>></A></td><td width="20px"></td><td class="header"><a href="#" onclick="refreshcalendar(yy, mm-1);return false" title="Last Month"><<</a></td>';
	s +='<td><b><a id="month"  name="month" title="Please select month" href="#" onclick="GEBI(\'calendar_year\').style.display = \'none\';showdiv(\'month\');_cancelBubble(event);return false" ></a></td><td class="header"><A href="#" onclick="refreshcalendar(yy, mm+1);return false" title="Next Month">>></A></b></td></tr>';
	s += '</tr></td></table>';
	s += '<tr class="category"><td>SUN</td><td>MON</td><td>TUE</td><td>WED</td><td>THU</td><td>FRI</td><td>SAT</td></tr>';
	for(var i = 0; i < 6; i++) {
		s += '<tr class="altbg2">';
		for(var j = 1; j <= 7; j++)
			s += "<td id=d" + (i * 7 + j) + " height=\"19\">0</td>";
		s += "</tr>";
	}
	s += '<tr id="hourminute"><td colspan="7" align="center"><input type="text" size="1" value="" id="hour" onKeyUp=\'this.value=this.value > 23 ? 23 : zerofill(this.value);controlid.value=controlid.value.replace(/\\d+(\:\\d+)/ig, this.value+"$1")\'> hour <input type="text" size="1" value="" id="minute" onKeyUp=\'this.value=this.value > 59 ? 59 : zerofill(this.value);controlid.value=controlid.value.replace(/(\\d+\:)\\d+/ig, "$1"+this.value)\'> Min</td></tr>';
	s += '</table></div></div>';
		
	s += '<div id="calendar_year" onclick="_cancelBubble(event)" style="overflow-y: auto; overflow: auto; width: 178px;height:141px"><div class="col">';
	for(var k = 1888; k <= 2103; k++) {
		s += k != 1888 && k % 8 == 0 ? '</div><div class="col">' : '';
		s += '<a href="#" onclick="refreshcalendar(' + k + ', mm);GEBI(\'calendar_year\').style.display=\'none\';return false"><span' + (today.getFullYear() == k ? ' class="today"' : '') + ' id="calendar_year_' + k + '">' + k + '</span></a><br />';
	}
	s += '</div></div>';
	
	s += '<div id="calendar_month" onclick="_cancelBubble(event)">';
	for(var k = 1; k <= 12; k++) {
		s += '<a href="#" onclick="refreshcalendar(yy, ' + (k - 1) + ');GEBI(\'calendar_month\').style.display=\'none\';return false"><span' + (today.getMonth()+1 == k ? ' class="today"' : '') + ' id="calendar_month_' + k + '">' + k + ( k < 10 ? ' ' : '') + '</span></a><br />';
	}
	s += '</div>';
	var nElement = document.createElement("div");
	nElement.innerHTML=s;
	document.getElementsByTagName("body")[0].appendChild(nElement);
//	document.write(s);
    document.onkeydown=function(event)
    {        
         GEBI('calendar').style.display = 'none';
		 GEBI('calendar_year').style.display = 'none';
		 GEBI('calendar_month').style.display = 'none';		
    }
    
	document.onclick = function(event) {	   
		GEBI('calendar').style.display = 'none';
		GEBI('calendar_year').style.display = 'none';
		GEBI('calendar_month').style.display = 'none';
	}
	GEBI('calendar').onclick = function(event) {
		_cancelBubble(event);
		GEBI('calendar_year').style.display = 'none';
		GEBI('calendar_month').style.display = 'none';
	}
}
function parsedate(s) {        
	/(\d+)\/(\d+)\/(\d+)\s*(\d*):?(\d*)/.exec(s);
	var m1 = (RegExp.$3 && RegExp.$3 > 1899 && RegExp.$3 < 2101) ? parseFloat(RegExp.$3) : today.getFullYear();
	var m2 = (RegExp.$1 && (RegExp.$1 > 0 && RegExp.$1 < 13)) ? parseFloat(RegExp.$1) : today.getMonth() + 1;
	var m3 = (RegExp.$2 && (RegExp.$2 > 0 && RegExp.$2 < 32)) ? parseFloat(RegExp.$2) : today.getDate();	
	var m4 = (RegExp.$4 && (RegExp.$4 > -1 && RegExp.$4 < 24)) ? parseFloat(RegExp.$4) : 0;
	var m5 = (RegExp.$5 && (RegExp.$5 > -1 && RegExp.$5 < 60)) ? parseFloat(RegExp.$5) : 0;
    /(\d+)\/(\d+)\/(\d+)\s*(\d*):?(\d*)/.exec("00/00/0000 00\:00");		
	return new Date(m1,m2 - 1, m3, m4, m5);
}

function settime(d) {
	GEBI('calendar').style.display = 'none';
	controlid.value = zerofill(mm + 1) + "/" + zerofill(d) +"/"+yy+ (addtime ? ' ' + zerofill(GEBI('hour').value) + ':' + zerofill(GEBI('minute').value) : '');
	if (submitcc)
	   submitcalendar(controlid);
}
function showcalendar(event, controlid1, addtime1, startdate1, enddate1) {
    submitcc = false;
	controlid = controlid1;
	addtime = addtime1;
	startdate = startdate1 ? parsedate(startdate1) : false;
	enddate = enddate1 ? parsedate(enddate1) : false;	
	currday = controlid.value ? parsedate(controlid.value) : today;
	hh = currday.getHours();
	ii = currday.getMinutes();
	var p = getposition(controlid);
	GEBI('calendar').style.display = 'block';
	if ((document.body.clientWidth - p['x']) < 220) {
	    var len = 220 - (document.body.clientWidth - p['x']);
	    GEBI('calendar').style.left = (p['x'] - len) + 'px'; 
	} else {
	    GEBI('calendar').style.left = (p['x']) + 'px';
	}
	
	if ((document.body.scrollHeight - p['y']) < 240) {
	    GEBI('calendar').style.top = (p['y'] - 162) + 'px';
	} else {
	    GEBI('calendar').style.top = (p['y'] + 20) + 'px';
	}
    _cancelBubble(event);
	refreshcalendar(currday.getFullYear(), currday.getMonth());
	if(lastcheckedyear != false) {
		GEBI('calendar_year_' + lastcheckedyear).className = 'default';
		GEBI('calendar_year_' + today.getFullYear()).className = 'today';
	}
	if(lastcheckedmonth != false) {
		GEBI('calendar_month_' + lastcheckedmonth).className = 'default';
		GEBI('calendar_month_' + (today.getMonth() + 1)).className = 'today';
	}
	GEBI('calendar_year_' + currday.getFullYear()).className = 'checked';
	GEBI('calendar_month_' + (currday.getMonth() + 1)).className = 'checked';
	GEBI('hourminute').style.display = addtime ? '' : 'none';
	lastcheckedyear = currday.getFullYear();
	lastcheckedmonth = currday.getMonth() + 1;
}
function showcalendarsubmit(event, controlid1, addtime1, startdate1, enddate1) {
	submitcc=true;
	controlid = controlid1;
	addtime = addtime1;
	startdate = startdate1 ? parsedate(startdate1) : false;
	enddate = enddate1 ? parsedate(enddate1) : false;	
	currday = controlid.value ? parsedate(controlid.value) : today;
	hh = currday.getHours();
	ii = currday.getMinutes();
	var p = getposition(controlid);
	GEBI('calendar').style.display = 'block';
	if ((document.body.clientWidth - p['x']) < 220) {
	    var len = 220 - (document.body.clientWidth - p['x']);
	    GEBI('calendar').style.left = (p['x'] - len) + 'px';
	} else {
	    GEBI('calendar').style.left = (p['x']) + 'px';
	}

	if (document.body.scrollHeight < 400) {
	    GEBI('calendar').style.top = (p['y'] + 20) + 'px';
	}
	else if ((document.body.scrollHeight - p['y']) < 240) {
	    GEBI('calendar').style.top = (p['y'] - 162) + 'px';
	} else {
	    GEBI('calendar').style.top = (p['y'] + 20) + 'px';
	}
	_cancelBubble(event);
	refreshcalendar(currday.getFullYear(), currday.getMonth());
	if(lastcheckedyear != false) {
		GEBI('calendar_year_' + lastcheckedyear).className = 'default';
		GEBI('calendar_year_' + today.getFullYear()).className = 'today';
	}
	if(lastcheckedmonth != false) {
		GEBI('calendar_month_' + lastcheckedmonth).className = 'default';
		GEBI('calendar_month_' + (today.getMonth() + 1)).className = 'today';
	}
	GEBI('calendar_year_' + currday.getFullYear()).className = 'checked';
	GEBI('calendar_month_' + (currday.getMonth() + 1)).className = 'checked';
	GEBI('hourminute').style.display = addtime ? '' : 'none';
	lastcheckedyear = currday.getFullYear();
	lastcheckedmonth = currday.getMonth() + 1;
}
function refreshcalendar(y, m) {
	var x = new Date(y, m, 1);
	var mv = x.getDay();
	var d = x.getDate();
	var dd = null;
	yy = x.getFullYear();
	mm = x.getMonth();
	GEBI("year").innerHTML = yy;
	GEBI("month").innerHTML = mm + 1 > 9  ? (mm + 1) : '0' + (mm + 1);
	for(var i = 1; i <= mv; i++) {
		dd = GEBI("d" + i);
		dd.innerHTML = " ";
		dd.className = "";
	}
	while(x.getMonth() == mm) {
		dd = GEBI("d" + (d + mv));
		dd.innerHTML = '<a href="###" onclick="settime(' + d + ');return false">' + d + '</a>';
		if(x.getTime() < today.getTime() || (enddate && x.getTime() > enddate.getTime()) || (startdate && x.getTime() < startdate.getTime())) {
			dd.className = 'expire';
		} else {
			dd.className = 'default';
		}
		if(x.getFullYear() == today.getFullYear() && x.getMonth() == today.getMonth() && x.getDate() == today.getDate()) {
			dd.className = 'today';
			dd.firstChild.title = 'Today';
		}
		if(x.getFullYear() == currday.getFullYear() && x.getMonth() == currday.getMonth() && x.getDate() == currday.getDate()) {
			dd.className = 'checked';
		}
		x.setDate(++d);
	}
	while(d + mv <= 42) {
		dd = GEBI("d" + (d + mv));
		dd.innerHTML = " ";
		d++;
	}
	if(addtime) {
		GEBI('hour').value = zerofill(hh);
		GEBI('minute').value = zerofill(ii);
	}
}
function showdiv(id) {
	var p = getposition(GEBI(id));
	GEBI('calendar_' + id).style.left = p['x']+'px';
	GEBI('calendar_' + id).style.top = (p['y'] + 16)+'px';
	GEBI('calendar_' + id).style.display = 'block';
}

function zerofill(s) {
	var s = parseFloat(s.toString().replace(/(^[\s0]+)|(\s+$)/g, ''));
	s = isNaN(s) ? 0 : s;
	return (s < 10 ? '0' : '') + s.toString();
}


loadcalendar();
