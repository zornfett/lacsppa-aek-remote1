 function atCalendarControl()
 {
    var calendar=this;
    this.calendarPad=null;
    this.prevMonth=null;
    this.nextMonth=null;
    this.prevYear=null;
    this.nextYear=null;
    this.goToday=null;
    this.calendarClose=null;
    this.calendarAbout=null;
    this.head=null;
    this.body=null;
    this.today=[];
    this.currentDate=[];
    this.sltDate;
    this.target;
    this.source;   
    this.zIndex = arguments.length>0?arguments[0]:26;
    
      this.addCalendarPad=function()
       {
          document.write("<div id='divCalendarpad' style='position:absolute;top:100;left:0;width:255;height:167;display:none;z-index:"+this.zIndex+";'>");
          document.write("<iframe frameborder=0 height=220 width=255 id='iframe1' src='../chart/blank.aspx'></iframe>");
          document.write("<div style='position:absolute;top:4;left:4;width:248;height:167;background-color:#336699;'></div>");
          document.write("</div>");
          calendar.calendarPad=document.all.divCalendarpad;
       }
    
      
     this.addCalendarBoard=function(){
         var BOARD=this;
         var divBoard=document.createElement("div");
         calendar.calendarPad.insertAdjacentElement("beforeEnd",divBoard);
         divBoard.style.cssText="position:absolute;top:0;left:0;width:252;height:230;background-color:#E8E8E8;";
         
         var tbBoard=document.createElement("table");
         divBoard.insertAdjacentElement("beforeEnd",tbBoard);
         tbBoard.style.cssText="position:absolute;top:0;left:0;width:100%;height:10;font-size:9pt;border:1px solid #214565;";
         tbBoard.cellPadding=0;
         tbBoard.cellSpacing=1;
         tbBoard.bgColor="#E8E8E8";        
    
        /*********** Calendar About Button ***************/ 
     
       trRow = tbBoard.insertRow(0);
        
       tbCell=trRow.insertCell(0);
        
      
       tbCell.innerHTML="<img src='../images/windows/calendar.ico'>";
         
       tbCell.bgColor="#336699";
         
       tbCell.align="center";
         
       tbCell.style.cssText = "cursor:default";         
         
       /*********** Calendar Head ***************/
         
       tbCell=trRow.insertCell(1);
        
       tbCell.colSpan=5;
        
       tbCell.bgColor="#336699";
       
       tbCell.align="center";
        
       tbCell.style.cssText = "cursor:default;color:#ffffff;";
  
       calendar.head=tbCell;
        
       
     /*********** Calendar Close Button ***************/        
  
       tbCell=trRow.insertCell(2);         
    
       tbCell.innerHTML="<img src='../images/windows/colse.gif'>";
         
       tbCell.bgColor="#336699";
         
       tbCell.align="center";         
         
       tbCell.style.cssText = "cursor:hand";
         
       tbCell.onclick=function(){          
            
          calendar.hide(); 
        }
    
         /*********** Calendar PrevYear Button ***************/
         trRow = tbBoard.insertRow(1);
         calendar.prevYear = calendar.insertTbCell(trRow,0,"&lt;&lt;","center");
         calendar.prevYear.title="Pre Year";
         calendar.prevYear.onmousedown=function(){
             calendar.currentDate[2]--;
             //calendar.show(calendar.target,calendar.currentDate[0]+"/"+calendar.currentDate[1]+"/"+calendar.currentDate[2],calendar.source);
             calendar.show(calendar.target,calendar.currentDate[0]+"/"+"01"+"/"+calendar.currentDate[2],calendar.source);
         }
         /*********** Calendar PrevMonth Button ***************/
         calendar.prevMonth = calendar.insertTbCell(trRow,1,"&lt;","center");
         calendar.prevMonth.title="Pre Month";
         calendar.prevMonth.onmousedown=function(){
            calendar.currentDate[0]--;
            if(calendar.currentDate[0]==0){
              calendar.currentDate[0]=12;
              calendar.currentDate[2]--;
            }
           if(parseInt(calendar.currentDate[0])<10){calendar.currentDate[0]="0"+parseInt(calendar.currentDate[0]).toString();}
           if(parseInt(calendar.currentDate[1])<10){calendar.currentDate[1]="0"+parseInt(calendar.currentDate[1]).toString();}	  
           //calendar.show(calendar.target,calendar.currentDate[0]+"/"+calendar.currentDate[1]+"/"+calendar.currentDate[2],calendar.source);
           calendar.show(calendar.target,calendar.currentDate[0]+"/"+"01"+"/"+calendar.currentDate[2],calendar.source);
         }
         /*********** Calendar Today Button ***************/
        calendar.goToday = calendar.insertTbCell(trRow,2,"Today","center",3);
        calendar.goToday.title="Select Today";
        calendar.goToday.onclick=function(){         	   
           calendar.sltDate=calendar.today[0]+"/"+calendar.today[1]+"/"+calendar.today[2];
           calendar.target.value=calendar.sltDate;
           calendar.hide();    
        }
        /*********** Calendar NextMonth Button ***************/
        calendar.nextMonth = calendar.insertTbCell(trRow,3,"&gt;","center");
        calendar.nextMonth.title="Next Month";
        calendar.nextMonth.onmousedown=function(){
           calendar.currentDate[0]++;
           if(calendar.currentDate[0]==13){
              calendar.currentDate[0]=1;
              calendar.currentDate[2]++;
            }
           if(parseInt(calendar.currentDate[0])<10){calendar.currentDate[0]="0"+parseInt(calendar.currentDate[0]).toString();}
           if(parseInt(calendar.currentDate[1])<10){calendar.currentDate[1]="0"+parseInt(calendar.currentDate[1]).toString();}	  
           //calendar.show(calendar.target,calendar.currentDate[0]+"/"+calendar.currentDate[1]+"/"+calendar.currentDate[2],calendar.source);
           calendar.show(calendar.target,calendar.currentDate[0]+"/"+"01"+"/"+calendar.currentDate[2],calendar.source);
        }
        /*********** Calendar NextYear Button ***************/
        calendar.nextYear = calendar.insertTbCell(trRow,4,"&gt;&gt;","center");
        calendar.nextYear.title="Next Year";
        calendar.nextYear.onmousedown=function(){
           calendar.currentDate[2]++;       
           //calendar.show(calendar.target,calendar.currentDate[0]+"/"+calendar.currentDate[1]+"/"+calendar.currentDate[2],calendar.source);
           calendar.show(calendar.target,calendar.currentDate[0]+"/"+"01"+"/"+calendar.currentDate[2],calendar.source);
        }
    
        trRow = tbBoard.insertRow(2);
        var cnDateName = new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");       
        for (var i = 0; i < 7; i++) {
            tbCell=trRow.insertCell(i)
            tbCell.innerText=cnDateName[i];
            tbCell.align="center";
            tbCell.width=35;
            tbCell.style.cssText="cursor:default;border:1 solid #D3CFD0;background-color:#F1EFF0;";
        }
    
        /*********** Calendar Body ***************/
        trRow = tbBoard.insertRow(3);
        tbCell=trRow.insertCell(0);
        tbCell.colSpan=7;
        tbCell.height=97;
        tbCell.vAlign="top";
        tbCell.bgColor="#E8E8E8";
        var tbBody=document.createElement("table");
        tbCell.insertAdjacentElement("beforeEnd",tbBody);
        tbBody.style.cssText="position:relative;top:0;left:0;width:252;height:103;font-size:9pt;"
        tbBody.cellPadding=0;
        tbBody.cellSpacing=1;
        calendar.body=tbBody;
         tbBody.id="b_table";     
     }
     
     this.insertTbCell=function(trRow,cellIndex,TXT,trAlign,tbColSpan){
        var tbCell=trRow.insertCell(cellIndex);
        if(tbColSpan!=undefined) tbCell.colSpan=tbColSpan;
        
        var btnCell=document.createElement("button");
        tbCell.insertAdjacentElement("beforeEnd",btnCell);
        btnCell.value=TXT;
        btnCell.style.cssText="width:100%;border:1 outset;background-color:#E8E8E8;";
        btnCell.onmouseover=function(){
           btnCell.style.cssText="width:100%;border:1 outset;background-color:#F0F0F0;";
        }
        btnCell.onmouseout=function(){
           btnCell.style.cssText="width:100%;border:1 outset;background-color:#E8E8E8;";
        }
    
        btnCell.onmouseup=function(){
           btnCell.style.cssText="width:100%;border:1 outset;background-color:#F0F0F0;";
        }
        btnCell.onclick=function(){
           btnCell.blur();
        }
        return btnCell;
     }
     
     this.setDefaultDate=function(){
        var dftDate=new Date();  
        calendar.today[2]=(dftDate.getYear()).toString();
        calendar.today[0]=(dftDate.getMonth()+1).toString();
        calendar.today[1]=(dftDate.getDate()).toString();     
     }
     
      /****************** Show Calendar *********************/
     this.show=function(targetObject,defaultDate,sourceObject){        	
        if(targetObject==undefined) {
           alert("Not Found Calendar Object.\n");
           return false;
        }
        else { calendar.target=targetObject;}
        if(sourceObject==undefined) {calendar.source=calendar.target;}
        else { calendar.source=sourceObject;}
        if (targetObject.disabled)
        {
           return false;
        }
        var firstDay;
        var Cells=new Array();
        if(defaultDate==undefined || defaultDate==""){
           var theDate=new Array();
           if(parseInt(calendar.today[0])<10 && calendar.today[0].length==1){calendar.today[0]="0"+parseInt(calendar.today[0]).toString();}
           if(parseInt(calendar.today[1])<10 && calendar.today[1].length==1){calendar.today[1]="0"+parseInt(calendar.today[1]).toString();}	
           calendar.head.innerText = calendar.today[0]+"/"+calendar.today[1]+"/"+calendar.today[2];
           theDate[0]=calendar.today[0]; theDate[1]=calendar.today[1]; theDate[2]=calendar.today[2];
        }
        else{
           var reg=/^\d{1,2}\/\d{1,2}\/\d{4}$/
           if(!defaultDate.match(reg)){
              alert("Date Format:mm/dd/yyyy'");
              return;
            }
           var theDate=defaultDate.split("/");
           calendar.head.innerText = defaultDate;
        }
        calendar.currentDate[0]=theDate[0];
        calendar.currentDate[1]=theDate[1];
        calendar.currentDate[2]=theDate[2];
        theFirstDay=calendar.getFirstDay(theDate[2],theDate[0]);
        theMonthLen=theFirstDay+calendar.getMonthLen(theDate[2],theDate[0]);
        calendar.calendarPad.style.display="";
        var theRows = Math.ceil((theMonthLen)/7);
        
        while (b_table.rows.length > 0) {
           b_table.deleteRow(0);          
        }      
       
        
        var n=0;day=0;
        var theCell;
        for(i=0;i<theRows;i++){
            theRow=b_table.insertRow(i);
           for(j=0;j<7;j++){
               n++;
              if(n>theFirstDay && n<=theMonthLen){
                 day=n-theFirstDay;
                 calendar.insertBodyCell(theRow,j,day);
              }
              else{
                 theCell=theRow.insertCell(j);
                 theCell.style.cssText="background-color:#F0F0F0;cursor:default;";
              }
           }
         } 
        
         if (i==6)
         {
             document.all.iframe1.height=255;
         }
         else if (i==5) {       
             document.all.iframe1.height=230;
          }    
         else 
         {
            document.all.iframe1.height=204;	
         }
                  
        
         
        var offsetPos=calendar.getAbsolutePos(calendar.source);  
        if((document.body.offsetHeight-(offsetPos.y+calendar.source.offsetHeight-document.body.scrollTop))<calendar.calendarPad.style.pixelHeight){
           // var calTop=offsetPos.y - calendar.calendarPad.style.pixelHeight; 
           var calTop=offsetPos.y - 235;              
        }
        else{
           var calTop=offsetPos.y+calendar.source.offsetHeight;     
        }
        if((document.body.offsetWidth-(offsetPos.x+calendar.source.offsetWidth-document.body.scrollLeft))>calendar.calendarPad.style.pixelWidth){
            var calLeft=offsetPos.x;              
        }
        else{
           //var calLeft=calendar.source.offsetLeft+calendar.source.offsetWidth;       
           var calLeft=offsetPos.x - 250;   
           
        }     
        calendar.calendarPad.style.pixelLeft=calLeft;
        calendar.calendarPad.style.pixelTop=calTop;
      
     }
     
      
     this.getAbsolutePos = function(el) {
        var r = { x: el.offsetLeft, y: el.offsetTop };
        if (el.offsetParent) {
           var tmp = calendar.getAbsolutePos(el.offsetParent);
           r.x += tmp.x;
           r.y += tmp.y;
        }
        return r;
     };
     this.insertBodyCell=function(theRow,j,day,targetObject){
        var theCell=theRow.insertCell(j);
        if(j==0){ var theBgColor="#D9EFFA";}
        else {var theBgColor="#FFFFFF";}
        if(day==calendar.currentDate[2]){ var theBgColor="#CCCCCC";}
        if(day==calendar.today[2]){ var theBgColor="#FFCA96";}
        theCell.bgColor=theBgColor;
        theCell.innerText=day;
        theCell.align="center";
        theCell.width=35;
        theCell.style.cssText="border:1 solid #CCCCCC;cursor:hand;";
        theCell.onmouseover=function(){ 
           theCell.bgColor="#F1EFF0"; 
           theCell.style.cssText="border:1 outset;cursor:hand;";
        }
        theCell.onmouseout=function(){ 
           theCell.bgColor=theBgColor; 
           theCell.style.cssText="border:1 solid #CCCCCC;cursor:hand;";
        }
        theCell.onmousedown=function(){ 
           theCell.bgColor="#F1EFF0"; 
           theCell.style.cssText="border:1 inset;cursor:hand;";
        }
        theCell.onclick=function(){
           if(calendar.currentDate[0].length<2) calendar.currentDate[0]="0"+calendar.currentDate[1];
           if(day.toString().length<2) day="0"+day;
           calendar.sltDate=calendar.currentDate[0]+"/"+day+"/"+calendar.currentDate[2];
           calendar.target.value=calendar.sltDate;
           calendar.hide();
        }
     }
     this.getFirstDay=function(theYear, theMonth){
       var firstDate = new Date(theYear,theMonth-1,1);
       return firstDate.getDay();
     }
     this.getMonthLen=function(theYear, theMonth) {
        theMonth--;
        var oneDay = 1000 * 60 * 60 * 24;
        var thisMonth = new Date(theYear, theMonth, 1);
        var nextMonth = new Date(theYear, theMonth + 1, 1);
        var len = Math.ceil((nextMonth.getTime() - thisMonth.getTime())/oneDay);
        return len;
     }
     this.hide=function(){   
        calendar.calendarPad.style.display="none";
     }
     this.setup=function(defaultDate){
        calendar.addCalendarPad();
        calendar.addCalendarBoard();
        calendar.setDefaultDate();
    }    
     calendar.setup();
 }

