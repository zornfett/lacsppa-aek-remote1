<%@ Page Language="c#" Inherits="Virweb2.WebList.webConsumerInfoSCLARC" Codebehind="webConsumerInfoSCLARC.aspx.cs" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="UltimateSpell" Namespace="Karamasoft.WebControls.UltimateSpell"
    TagPrefix="cc1" %>
<%@ Register Assembly="MetaBuilders.WebControls" Namespace="MetaBuilders.WebControls"
    TagPrefix="mb" %>

<html>
<head>
    <base target="_self" /> 
    <title>:::General Information:::...</title>
    <link href="../css/style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="../css/style-2020a.css">
    <script type="text/JavaScript" src="../js/common.js"></script>      
    <script type="text/JavaScript" src="../js/jquery-1.2.3.min.js"></script>  
<script language="javascript" type="text/javascript">
/*
       var sessionTimeoutWarning = "<%= System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()%>";
       var sessionTimeout = "<%= Session.Timeout %>";
       
       var sTimeout = (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning)) * 60 * 1000;
       setTimeout('SessionWarning()', sTimeout);

       function SessionWarning() {
         var message = "Your session will expire in another " + 
            parseInt(sessionTimeoutWarning) + 
            " mins! Please Save the data before the session expires";
         alert(message);
       }
*/
</script>
  
    <script type="text/JavaScript">
    <!--   
    function doseltd(obj)
    {
       /*if (isIE())
       {            
          for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	        var e=tr_info.childNodes[i];		        	   
		    e.style.color="#000000";
		    e.style.cursor="hand";	      	        
	      }
	      obj.style.color="#990066";
	      obj.style.cursor="auto";
       }
       else*/
       {
          TD_FS.style.color="";
          //TD_FS.style.cursor="pointer";
          TD_LF.style.color="";
          //TD_LF.style.cursor="pointer";
          TD_DC.style.color="";
          //TD_DC.style.cursor="pointer";
          TD_AD.style.color="";
          //TD_AD.style.cursor="pointer";
          TD_RE.style.color="";
          //TD_RE.style.cursor="pointer";
          TD_AM.style.color="";
          //TD_AM.style.cursor="pointer";
          TD_SC.style.color="";
          //TD_SC.style.cursor="pointer";
          TD_PG.style.color="";
          //TD_PG.style.cursor="pointer";
          TD_PO.style.color="";
          //TD_PO.style.cursor="pointer";
          TD_CT.style.color="";
          //TD_CT.style.cursor="pointer";
          TD_AF.style.color="";
          //TD_AF.style.cursor="pointer";
          TD_SA.style.color="";
          //TD_SA.Style.cursor="pointer";
          TD_EG.style.color="";
          //TD_EG.Style.cursor="pointer";
          TD_PE.style.color="";
          //TD_PE.Style.cursor="pointer";
          TD_SD.style.color="";
          //TD_SD.Style.cursor="pointer";
	      obj.style.color="#990066";	
          //obj.style.cursor="auto";         
       }         
	   Consumer_FS.style.display="none";
	   Consumer_LF.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   Consumer_RE.style.display="none";
	   Consumer_AM.style.display="none";
       Consumer_SC.style.display="none";
       Consumer_PG.style.display="none";
       Consumer_PO.style.display="none";
       Consumer_CT.style.display="none";
       Consumer_AF.style.display="none";
	   Consumer_SA.style.display="none";
       Consumer_EG.style.display="none";
       Consumer_PE.style.display="none";
       Consumer_SD.style.display="none";

       Table_Label_LF.style.display="none";
       Table_Label_AF.style.display="none";
       

	   switch(obj.id)
	   {
	      case "TD_FS":
			 Consumer_FS.style.display="";
			 document.ConsumerInfo.now_div_flag.value="1";	 
             enable_btnPrint();   
		     break;
		  case "TD_LF":    
			 Consumer_LF.style.display="";
			 document.ConsumerInfo.now_div_flag.value="2";
             enable_btnPrint();
             Table_Label_LF.style.display=""; 	
             Table_Label_AF.style.display="none";	    	
		     break;
		  case "TD_DC":    
			 Consumer_DC.style.display="";
			 document.ConsumerInfo.now_div_flag.value="3";	
             enable_btnPrint();	    	
		     break;   
		  case "TD_AD":    
			 Consumer_AD.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="4";	
             enable_btnPrint();	    	 
		     break;    
		  case "TD_RE":    
			 Consumer_RE.style.display="";
			 document.ConsumerInfo.now_div_flag.value="5"; 	
             enable_btnPrint();	    	
		     break;    
		  case "TD_AM":    
			 Consumer_AM.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="6";
             enable_btnPrint(); 	    	
		     break; 
          case "TD_SC":    
			 Consumer_SC.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="7";	
             enable_btnPrint();     	
		     break;   
          case "TD_PG":    
			 Consumer_PG.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="8";
             enable_btnPrint(); 	    	
		     break; 
          case "TD_PO":    
			 Consumer_PO.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="9";
             enable_btnPrint(); 	    	
		     break; 
          case "TD_CT":    
			 Consumer_CT.style.display="";	
			 document.ConsumerInfo.now_div_flag.value="10";	
             enable_btnPrint();     	
		     break; 
          case "TD_AF":    
			 Consumer_AF.style.display="";
			 document.ConsumerInfo.now_div_flag.value="11"; 
             enable_btnPrint(); 
             Table_Label_AF.style.display="";
             Table_Label_LF.style.display="none";		    	
		     break;
          case "TD_SA":    
			 Consumer_SA.style.display="";
			 document.ConsumerInfo.now_div_flag.value="12"; 
             enable_btnPrint(); 		    	
		     break;
          case "TD_EG":    
			 Consumer_EG.style.display="";
			 document.ConsumerInfo.now_div_flag.value="13"; 		    	
		     break;
          case "TD_PE":    
			 Consumer_PE.style.display="";
			 document.ConsumerInfo.now_div_flag.value="14"; 
             enable_btnPrint(); 		    	
		     break;
          case "TD_SD":    
			 Consumer_SD.style.display="";
			 document.ConsumerInfo.now_div_flag.value="15"; 
		     break;
	   }
    }    
    
    ///set div 
    function doseltdbyid(obj_id)
    {
       /*if (isIE())
       {  
          for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	   	     var e=tr_info.childNodes[i];

		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_FS.style.color="";
          //TD_FS.style.cursor="pointer";
          TD_LF.style.color="";
          //TD_LF.style.cursor="pointer";
          TD_DC.style.color="";
          //TD_DC.style.cursor="pointer";
          TD_AD.style.color="";
          //TD_AD.style.cursor="pointer";
          TD_RE.style.color="";
          //TD_RE.style.cursor="pointer";
          TD_AM.style.color="";
          //TD_AM.style.cursor="pointer";
          TD_SC.style.color="";
          //TD_SC.style.cursor="pointer";
          TD_PG.style.color="";
          //TD_PG.style.cursor="pointer";
          TD_PO.style.color="";
          //TD_PO.style.cursor="pointer";
          TD_CT.style.color="";
          //TD_CT.style.cursor="pointer";
          TD_AF.style.color="";
          //TD_AF.style.cursor="pointer";
          TD_SA.style.color="";
          //TD_SA.style.cursor="pointer";
          TD_EG.style.color="";
          //TD_EG.style.cursor="pointer";
          TD_PE.style.color="";
          //TD_PE.style.cursor="pointer";
          TD_SD.style.color="";
          //TD_SD.style.cursor="pointer";
       }         
	   Consumer_FS.style.display="none";
	   Consumer_LF.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   Consumer_RE.style.display="none";
	   Consumer_AM.style.display="none";
       Consumer_SC.style.display="none";
       Consumer_PG.style.display="none";
       Consumer_PO.style.display="none";
       Consumer_CT.style.display="none";
       Consumer_AF.style.display="none";
       Consumer_SA.style.display="none";
       Consumer_EG.style.display="none";
       Consumer_PE.style.display="none";
       Consumer_SD.style.display="none";
	  
	   switch(obj_id)
	   {
	      case "TD_FS":
			 Consumer_FS.style.display="";
			 TD_FS.style.color="#990066";
             //TD_FS.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="1";	  
             enable_btnPrint();      
		     break;
		  case "TD_LF":    
			 Consumer_LF.style.display="";
			 TD_LF.style.color="#990066";
             //TD_FS.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="2"; 	
             enable_btnPrint(); 
             Table_Label_LF.style.display=""; 	
             Table_Label_AF.style.display="none";    	
		     break;
		  case "TD_DC":    
			 Consumer_DC.style.display="";
			 TD_DC.style.color="#990066";
             //TD_DC.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="3";	
             enable_btnPrint(); 	    	
		     break;   
		  case "TD_AD":    
			 Consumer_AD.style.display="";	
			 TD_AD.style.color="#990066";
             //TD_AD.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="4";	
             enable_btnPrint(); 	    	 
		     break;    
		  case "TD_RE":    
			 Consumer_RE.style.display="";
			 TD_RE.style.color="#990066";
             //TD_RE.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="5"; 
             enable_btnPrint(); 		    	
		     break; 
		  case "TD_AM":    
			 Consumer_AM.style.display="";	
			 TD_AM.style.color="#990066";
             //TD_AM.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="6";	    
             enable_btnPrint(); 	
		     break;
          case "TD_SC":    
			 Consumer_SC.style.display="";	
			 TD_SC.style.color="#990066";
             //TD_SC.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="7";
             enable_btnPrint(); 	    	
		     break;   
          case "TD_PG":    
			 Consumer_PG.style.display="";	
			 TD_PG.style.color="#990066";
             //TD_PG.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="8";	
             enable_btnPrint();     	
		     break; 
          case "TD_PO":    
			 Consumer_PO.style.display="";	
			 TD_PO.style.color="#990066";
             //TD_PO.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="9";	
             enable_btnPrint();     	
		     break; 
          case "TD_CT":    
			 Consumer_CT.style.display="";	
			 TD_CT.style.color="#990066";
             //TD_CT.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="10";	
             enable_btnPrint();     	
		     break;  
          case "TD_AF":    
			 Consumer_AF.style.display="";	
			 TD_AF.style.color="#990066";
             //TD_AF.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="11";	 
             enable_btnPrint();    	
             Table_Label_AF.style.display="";
             Table_Label_LF.style.display="none";
		     break;   
          case "TD_SA":    
			 Consumer_SA.style.display="";	
			 TD_SA.style.color="#990066";
             //TD_SA.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="12";	
             enable_btnPrint();     	
		     break;   
          case "TD_EG":    
			 Consumer_EG.style.display="";	
			 TD_EG.style.color="#990066";
             //TD_EG.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="13";	    	
		     break;  
          case "TD_PE":    
			 Consumer_PE.style.display="";	
			 TD_PE.style.color="#990066";
             //TD_PE.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="14";	    	
		     break;    
          case "TD_SD":    
			 Consumer_SD.style.display="";	
			 TD_SD.style.color="#990066";
             //TD_SD.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="15";	    	
		     break;   
	   }
    }  

    function doseltdbyflag(flag)
    {
    /*
       if (isIE())
       {  
	      for(var i=0;i<tr_info.childNodes.length;i++)
	      {
	   	     var e=tr_info.childNodes[i];

		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_FS.style.color="";
          //TD_FS.style.cursor="pointer";
          TD_LF.style.color="";
          //TD_LF.style.cursor="pointer";
          TD_DC.style.color="";
          //TD_DC.style.cursor="pointer";
          TD_AD.style.color="";
          //TD_AD.style.cursor="pointer";
          TD_RE.style.color="";
          //TD_RE.style.cursor="pointer";
          TD_AM.style.color="";
          //TD_AM.style.cursor="pointer";
          TD_SC.style.color="";
          //TD_SC.style.cursor="pointer";
          TD_PG.style.color="";
          //TD_PG.style.cursor="pointer";
          TD_PO.style.color="";
          //TD_PO.style.cursor="pointer";
          TD_CT.style.color="";
          //TD_CT.style.cursor="pointer";
          TD_AF.style.color="";
          //TD_AF.style.cursor="pointer";
          TD_SA.style.color="";
          //TD_SA.style.cursor="pointer";
          TD_EG.style.color="";
          //TD_EG.style.cursor="pointer";
          TD_PE.style.color="";
          //TD_PE.style.cursor="pointer";
          TD_SD.style.color="";
          //TD_SD.style.cursor="pointer";
       }         
	   Consumer_FS.style.display="none";
	   Consumer_LF.style.display="none";
	   Consumer_DC.style.display="none";
	   Consumer_AD.style.display="none";
	   Consumer_RE.style.display="none";
	   Consumer_AM.style.display="none";
       Consumer_SC.style.display="none";
       Consumer_PG.style.display="none";
       Consumer_PO.style.display="none";
       Consumer_CT.style.display="none";
       Consumer_AF.style.display="none";
       Consumer_SA.style.display="none";
       Consumer_EG.style.display="none";
       Consumer_PE.style.display="none";
       Consumer_SD.style.display="none";

	   switch(flag)
	   {
	      case 1:
			 Consumer_FS.style.display="";
			 TD_FS.style.color="#990066";
             //TD_FS.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="1";	
             enable_btnPrint();        
		     break;
		  case 2:    
			 Consumer_LF.style.display="";
			 TD_LF.style.color="#990066";
             //TD_FS.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="2"; 
             enable_btnPrint(); 	
             Table_Label_LF.style.display=""; 	 
             Table_Label_AF.style.display="none";   	
		     break;
		  case 3:    
			 Consumer_DC.style.display="";
			 TD_DC.style.color="#990066";
             //TD_DC.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="3";	
             enable_btnPrint(); 	    	
		     break;   
		  case 4:    
			 Consumer_AD.style.display="";	
			 TD_AD.style.color="#990066";
             //TD_AD.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="4";	
             enable_btnPrint(); 	    	 
		     break;    
		  case 5:    
			 Consumer_RE.style.display="";
			 TD_RE.style.color="#990066";
             //TD_RE.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="5"; 	
             enable_btnPrint(); 	    	
		     break;  
		  case 6: 	     
			 Consumer_AM.style.display="";	
			 TD_AM.style.color="#990066";
             //TD_AM.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="6";	 
             enable_btnPrint();    	
		     break; 
          case 7: 	     
			 Consumer_SC.style.display="";	
			 TD_SC.style.color="#990066";
             //TD_SC.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="7";	
             enable_btnPrint();     	
		     break;
          case 8: 	     
			 Consumer_PG.style.display="";	
			 TD_PG.style.color="#990066";
             //TD_PG.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="8";	
             enable_btnPrint();     	
		     break;    
          case 9: 	     
			 Consumer_PO.style.display="";	
			 TD_PO.style.color="#990066";
             //TD_PO.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="9";	
             enable_btnPrint();     	
		     break;        
          case 10: 	     
			 Consumer_CT.style.display="";	
			 TD_CT.style.color="#990066";
             //TD_CT.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="10";	 
             enable_btnPrint();    	
		     break;  
          case 11: 	     
			 Consumer_AF.style.display="";	
			 TD_AF.style.color="#990066";
             //TD_AF.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="11";	 
             enable_btnPrint();   
             Table_Label_AF.style.display=""; 	
             Table_Label_LF.style.display="none";
		     break;    
          case 12: 	     
			 Consumer_SA.style.display="";	
			 TD_SA.style.color="#990066";
             //TD_SA.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="12";	 
             enable_btnPrint();    	
		     break;
          case 13: 	     
			 Consumer_EG.style.display="";	
			 TD_EG.style.color="#990066";
             //TD_EG.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="13";	    	
		     break; 
          case 14: 	     
			 Consumer_PE.style.display="";	
			 TD_PE.style.color="#990066";
             //TD_PE.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="14";	    	
		     break; 
          case 15: 	     
			 Consumer_SD.style.display="";	
			 TD_SD.style.color="#990066";
             //TD_SD.style.cursor="auto";
			 document.ConsumerInfo.now_div_flag.value="15";	    	
		     break; 
	   }
    }  
    
    function doseltdsubLF(obj)
    {
       /*if (isIE())
       {            
          for(var i=0;i<tr_info_LF.childNodes.length;i++)
	      {
	        var e=tr_info_LF.childNodes[i];		        	   
		    e.style.color="#000000";
		    e.style.cursor="hand";	      	        
	      }
	      obj.style.color="#990066";
	      obj.style.cursor="auto";
       }
       else*/
       {
          TD_LF_1.style.color="";
          //TD_LF_1.style.cursor="pointer";
          TD_LF_2.style.color="";
          //TD_LF_2.style.cursor="pointer";
          TD_LF_3.style.color="";
          //TD_LF_3.style.cursor="pointer";
          TD_LF_4.style.color="";
          //TD_LF_4.style.cursor="pointer";
          TD_LF_5.style.color="";
          //TD_LF_5.style.cursor="pointer";
          TD_LF_6.style.color="";
          //TD_LF_6.style.cursor="pointer";
	      obj.style.color="#990066";	
          //obj.style.cursor="auto";         
       }         
	   Consumer_LF_1.style.display="none";
	   Consumer_LF_2.style.display="none";
	   Consumer_LF_3.style.display="none";
	   Consumer_LF_4.style.display="none";
	   Consumer_LF_5.style.display="none";
       Consumer_LF_6.style.display="none";

	   switch(obj.id)
	   {
	      case "TD_LF_1":
			 Consumer_LF_1.style.display="";
			 document.ConsumerInfo.now_div_LF_flag.value="1";	       
		     break;
		  case "TD_LF_2":    
			 Consumer_LF_2.style.display="";
			 document.ConsumerInfo.now_div_LF_flag.value="2";
		     break;
		  case "TD_LF_3":    
			 Consumer_LF_3.style.display="";
			 document.ConsumerInfo.now_div_LF_flag.value="3";		    	
		     break;   
		  case "TD_LF_4":    
			 Consumer_LF_4.style.display="";	
			 document.ConsumerInfo.now_div_LF_flag.value="4";		    	 
		     break;    
		  case "TD_LF_5":    
			 Consumer_LF_5.style.display="";
			 document.ConsumerInfo.now_div_LF_flag.value="5"; 		    	
		     break;
          case "TD_LF_6":
             Consumer_LF_6.style.display="";
			 document.ConsumerInfo.now_div_LF_flag.value="6"; 		    	
		     break; 
	   }
    } 

    function doseltdsubLFbyflag(flag)
    {
    /*
       if (isIE())
       {  
	      for(var i=0;i<tr_info_LF.childNodes.length;i++)
	      {
	   	     var e=tr_info_LF.childNodes[i];
		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_LF_1.style.color="";
          //TD_LF_1.style.cursor="pointer";
          TD_LF_2.style.color="";
          //TD_LF_2.style.cursor="pointer";
          TD_LF_3.style.color="";
          //TD_LF_3.style.cursor="pointer";
          TD_LF_4.style.color="";
          //TD_LF_4.style.cursor="pointer";
          TD_LF_5.style.color="";
          //TD_LF_5.style.cursor="pointer";
          TD_LF_6.style.color="";
          //TD_LF_6.style.cursor="pointer";
       }         
	   Consumer_LF_1.style.display="none";
	   Consumer_LF_2.style.display="none";
	   Consumer_LF_3.style.display="none";
	   Consumer_LF_4.style.display="none";
	   Consumer_LF_5.style.display="none";
       Consumer_LF_6.style.display="none";

	   switch(flag)
	   {
       	  case 1:
			 Consumer_LF_1.style.display="";
			 TD_LF_1.style.color="#990066";
             //TD_LF_1.style.cursor="auto";
			 document.ConsumerInfo.now_div_LF_flag.value="1";	       
		     break;
		  case 2:    
			 Consumer_LF_2.style.display="";
             TD_LF_2.style.color="#990066";
             //TD_LF_2.style.cursor="auto";
			 document.ConsumerInfo.now_div_LF_flag.value="2";
		     break;
		  case 3:    
			 Consumer_LF_3.style.display="";
             TD_LF_3.style.color="#990066";
             //TD_LF_3.style.cursor="auto";
			 document.ConsumerInfo.now_div_LF_flag.value="3";		    	
		     break;   
		  case 4:    
			 Consumer_LF_4.style.display="";
             TD_LF_4.style.color="#990066";
             //TD_LF_4.style.cursor="auto";	
			 document.ConsumerInfo.now_div_LF_flag.value="4";		    	 
		     break;    
		  case 5:    
			 Consumer_LF_5.style.display="";
             TD_LF_5.style.color="#990066";
             //TD_LF_5.style.cursor="auto";
			 document.ConsumerInfo.now_div_LF_flag.value="5"; 		    	
		     break;    
           case 6:    
			 Consumer_LF_6.style.display="";
             TD_LF_6.style.color="#990066";
             //TD_LF_6.style.cursor="auto";
			 document.ConsumerInfo.now_div_LF_flag.value="6"; 		    	
		     break; 
	   }
    }  

    function doseltdsubAF(obj)
    {
       /*if (isIE())
       {            
          for(var i=0;i<tr_info_AF.childNodes.length;i++)
	      {
	        var e=tr_info_AF.childNodes[i];		        	   
		    e.style.color="#000000";
		    e.style.cursor="hand";	      	        
	      }
	      obj.style.color="#990066";
	      obj.style.cursor="auto";
       }
       else*/
       {
          TD_AF_1.style.color="";
          //TD_AF_1.style.cursor="pointer";
          TD_AF_2.style.color="";
          //TD_AF_2.style.cursor="pointer";
          TD_AF_3.style.color="";
          //TD_AF_3.style.cursor="pointer";
          TD_AF_4.style.color="";
          //TD_AF_4.style.cursor="pointer";
          TD_AF_5.style.color="";
          //TD_AF_5.style.cursor="pointer";
          TD_AF_6.style.color="";
          //TD_AF_6.style.cursor="pointer";
          
	      obj.style.color="#990066";	
          //obj.style.cursor="auto";         
       }         
	   Consumer_AF_1.style.display="none";
	   Consumer_AF_2.style.display="none";
	   Consumer_AF_3.style.display="none";
	   Consumer_AF_4.style.display="none";
	   Consumer_AF_5.style.display="none";
       Consumer_AF_6.style.display="none";

	   switch(obj.id)
	   {
	      case "TD_AF_1":
			 Consumer_AF_1.style.display="";
			 document.ConsumerInfo.now_div_AF_flag.value="1";	       
		     break;
		  case "TD_AF_2":    
			 Consumer_AF_2.style.display="";
			 document.ConsumerInfo.now_div_AF_flag.value="2";
		     break;
		  case "TD_AF_3":    
			 Consumer_AF_3.style.display="";
			 document.ConsumerInfo.now_div_AF_flag.value="3";		    	
		     break;   
		  case "TD_AF_4":    
			 Consumer_AF_4.style.display="";	
			 document.ConsumerInfo.now_div_AF_flag.value="4";		    	 
		     break;    
		  case "TD_AF_5":    
			 Consumer_AF_5.style.display="";
			 document.ConsumerInfo.now_div_AF_flag.value="5"; 		    	
		     break;   
          case "TD_AF_6":    
			 Consumer_AF_6.style.display="";	
			 document.ConsumerInfo.now_div_AF_flag.value="6";		    	 
		     break;     
	   }
    } 

    function doseltdsubAFbyflag(flag)
    {
    /*
       if (isIE())
       {  
	      for(var i=0;i<tr_info_AF.childNodes.length;i++)
	      {
	   	     var e=tr_info_AF.childNodes[i];
		     e.style.color="#000000";
			 e.style.cursor="hand";
	      }
	   }
       else
       */
       {
          TD_AF_1.style.color="";
          //TD_AF_1.style.cursor="pointer";
          TD_AF_2.style.color="";
          //TD_AF_2.style.cursor="pointer";
          TD_AF_3.style.color="";
          //TD_AF_3.style.cursor="pointer";
          TD_AF_4.style.color="";
          //TD_AF_4.style.cursor="pointer";
          TD_AF_5.style.color="";
          //TD_AF_5.style.cursor="pointer";
          TD_AF_6.style.color="";
          //TD_AF_6.style.cursor="pointer";
       }         
	   Consumer_AF_1.style.display="none";
	   Consumer_AF_2.style.display="none";
	   Consumer_AF_3.style.display="none";
	   Consumer_AF_4.style.display="none";
	   Consumer_AF_5.style.display="none";
       Consumer_AF_6.style.display="none";

	   switch(flag)
	   {
       	  case 1:
			 Consumer_AF_1.style.display="";
			 TD_AF_1.style.color="#990066";
             //TD_AF_1.style.cursor="auto";
			 document.ConsumerInfo.now_div_AF_flag.value="1";	       
		     break;
		  case 2:    
			 Consumer_AF_2.style.display="";
             TD_AF_2.style.color="#990066";
             //TD_AF_2.style.cursor="auto";
			 document.ConsumerInfo.now_div_AF_flag.value="2";
		     break;
		  case 3:    
			 Consumer_AF_3.style.display="";
             TD_AF_3.style.color="#990066";
             //TD_AF_3.style.cursor="auto";
			 document.ConsumerInfo.now_div_AF_flag.value="3";		    	
		     break;   
		  case 4:    
			 Consumer_AF_4.style.display="";
             TD_AF_4.style.color="#990066";
             //TD_AF_4.style.cursor="auto";	
			 document.ConsumerInfo.now_div_AF_flag.value="4";		    	 
		     break;    
		  case 5:    
			 Consumer_AF_5.style.display="";
             TD_AF_5.style.color="#990066";
             //TD_AF_5.style.cursor="auto";
			 document.ConsumerInfo.now_div_AF_flag.value="5"; 		    	
		     break;   
          case 6:    
			 Consumer_AF_6.style.display="";
             TD_AF_6.style.color="#990066";
             //TD_AF_6.style.cursor="auto";	
			 document.ConsumerInfo.now_div_AF_flag.value="6";		    	 
		     break;    
	   }
    }  

    function RefreshEmploymentData()    
    {
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '1';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }
    
    function RefreshSchoolData()    
    {
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '2';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }

    function RefreshUnFundData()    
    {
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '3';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }

    function RefreshContactData()    
    {
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '4';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }

    function RefreshFinancialData()    
    {
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '5';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    } 

    function RefreshPhotoData()
    {
       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '6';        
       window.document.ConsumerInfo.submit();
       window.focus();
    }

    function RefreshPermissionData()    
    {
        NoCreateIDNotes();

       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '7';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }

    function RefreshSDPData()    
    {
        NoCreateIDNotes();

       var mydataChg=document.getElementById(<%= "'" + dataChg.ClientID + "'" %>) 
       if (dataChanged) 
            mydataChg.value = '1';
       else mydataChg.value = '0';               
       var myHdnRefreshData = document.getElementById(<%= "'" + hdnRefreshData.ClientID + "'" %>);        
       myHdnRefreshData.value = '8';        
       window.document.ConsumerInfo.submit();
       window.focus();   
    }

    function print_click()
    {
       var flag=document.ConsumerInfo.now_div_flag.value.toString();   
       if (flag == 12)
       {
          PopupMessage(10);
       }
       else
       {
          var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
          var UserAct=document.ConsumerInfo.UserAct.value.toString();         
          winhref("PrintConsumerInfoSCLARC.aspx?c_key="+consumer_key+"&flag="+flag+"&UserAct="+UserAct,"PrintConsumerInfoSCLARC"); 
       }         
    }
    
    function printall_click()
    {
       var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
       var UserAct=document.ConsumerInfo.UserAct.value.toString();         
       winhref("PrintConsumerInfoSCLARC.aspx?c_key="+consumer_key+"&flag=0&UserAct="+UserAct,"PrintConsumerInfoSCLARC");     
    }
    
    function sendemail_click()
    {
       var EmailAdd=document.ConsumerInfo.c_email.value.toString();         
       //alert(EmailAdd);
       window.location.href="mailto:"+EmailAdd;
    }
    
    function CopyEmailAddress() 
    {
       document.ConsumerInfo.c_mailing_address_line_1.value = document.ConsumerInfo.c_address_line_1.value;
       document.ConsumerInfo.c_mailing_address_line_2.value = document.ConsumerInfo.c_address_line_2.value;
       document.ConsumerInfo.c_mailing_address_city.value = document.ConsumerInfo.c_address_city.value;
       document.ConsumerInfo.c_mailing_address_state.value = document.ConsumerInfo.c_address_state.value;
       document.ConsumerInfo.c_mailing_address_zip.value = document.ConsumerInfo.c_address_zip.value;
       document.ConsumerInfo.c_mailing_mail_code.selectedIndex = document.ConsumerInfo.c_mail_code.selectedIndex;
       document.ConsumerInfo.c_legal_county.selectedIndex = document.ConsumerInfo.c_physical_county.selectedIndex;
    }

    function window_onload()
    {
       var consumer_key=document.ConsumerInfo.consumer_key.value.toString();         
       if (consumer_key=="")     
       {              
           document.getElementById("btnPrint").disabled=true;
       }   
       else
       {
          document.getElementById("btnPrint").disabled=false;
       }   
    }
    
    function ConfirmSave()
    {     
       if (confirm('Same last name and first name already exist, do you still want to save?'))
       {
          var mySaveSameName = document.getElementById(<%= "'" + SaveSameName.ClientID + "'" %>);        
          mySaveSameName.value = '1';
          window.document.ConsumerInfo.submit(); 
          window.focus();   
       }
    }
    
    function ConfirmNew()
    {     
       if (confirm('Same last name and first name already exist, do you still want to add?'))
       {
          var myNewSameName = document.getElementById(<%= "'" + NewSameName.ClientID + "'" %>);        
          myNewSameName.value = '1';
          window.document.ConsumerInfo.submit(); 
          window.focus();   
       }
    }
      
    function save_click() {
       if ((document.ConsumerInfo.c_name_last.value=="") || (document.ConsumerInfo.c_name_first.value==""))
       {
           alert("Client name can't be empty!");
           return false;
       }

       var lastname=document.ConsumerInfo.c_name_last.value;
       var firstname=document.ConsumerInfo.c_name_first.value;
       if(/^[a-zA-Z0-9-,.'` ]*$/.test(lastname) == false) {
            alert("Client's last name can not contain invalid characters. Update failed.");
            return false;
       }
       if(/^[a-zA-Z0-9-,.'` ]*$/.test(firstname) == false) {
            alert("Client's first name can not contain invalid characters. Update failed");
            return false;
       }

       if ( ((document.ConsumerInfo.c_phone_1_1.value!="") && ((!IsInteger(document.ConsumerInfo.c_phone_1_1.value)) || 
             (document.ConsumerInfo.c_phone_1_1.value.length!=3))) ||
            ((document.ConsumerInfo.c_phone_1_2.value!="") && ((!IsInteger(document.ConsumerInfo.c_phone_1_2.value)) || 
             (document.ConsumerInfo.c_phone_1_2.value.length!=3))) ||
            ((document.ConsumerInfo.c_phone_1_3.value!="") && ((!IsInteger(document.ConsumerInfo.c_phone_1_3.value)) || 
             (document.ConsumerInfo.c_phone_1_3.value.length!=4))) ||    
            ((document.ConsumerInfo.c_phone_2_1.value!="") && ((!IsInteger(document.ConsumerInfo.c_phone_2_1.value)) || 
             (document.ConsumerInfo.c_phone_2_1.value.length!=3))) ||
            ((document.ConsumerInfo.c_phone_2_2.value!="") && ((!IsInteger(document.ConsumerInfo.c_phone_2_2.value)) || 
             (document.ConsumerInfo.c_phone_2_2.value.length!=3))) ||
            ((document.ConsumerInfo.c_phone_2_3.value!="") && ((!IsInteger(document.ConsumerInfo.c_phone_2_3.value)) || 
             (document.ConsumerInfo.c_phone_2_3.value.length!=4))) ||  
            ((document.ConsumerInfo.c_text8_1.value!="") && ((!IsInteger(document.ConsumerInfo.c_text8_1.value)) || 
             (document.ConsumerInfo.c_text8_1.value.length!=3))) ||
            ((document.ConsumerInfo.c_text8_2.value!="") && ((!IsInteger(document.ConsumerInfo.c_text8_2.value)) || 
             (document.ConsumerInfo.c_text8_2.value.length!=3))) ||
            ((document.ConsumerInfo.c_text8_3.value!="") && ((!IsInteger(document.ConsumerInfo.c_text8_3.value)) || 
             (document.ConsumerInfo.c_text8_3.value.length!=4))) )       
       {
           alert("Wrong format for the phone number!");
           return false;
       }

       if ( ((document.ConsumerInfo.c_ssn_1.value!="") && ((!IsInteger(document.ConsumerInfo.c_ssn_1.value)) || 
             (document.ConsumerInfo.c_ssn_1.value.length!=3))) ||
            ((document.ConsumerInfo.c_ssn_2.value!="") && ((!IsInteger(document.ConsumerInfo.c_ssn_2.value)) || 
             (document.ConsumerInfo.c_ssn_2.value.length!=2))) ||
            ((document.ConsumerInfo.c_ssn_3.value!="") && ((!IsInteger(document.ConsumerInfo.c_ssn_3.value)) || 
             (document.ConsumerInfo.c_ssn_3.value.length!=4))) )       
       {
           alert("Wrong format for the SSN!");
           return false;
       }

       var uci=document.ConsumerInfo.consumer_key.value;
       //if ((uci.length >= 7) && (uci.substring(0,1)!="0"))
       {
           if (document.getElementById("c_status").value == "")
           {
              alert("Status can't be empty!");
              document.getElementById("c_status").focus();
              return false;
           }
           if (document.getElementById("c_gender").value == "")
           {
              alert("Gender can't be empty!");
              document.getElementById("c_gender").focus();
              return false;
           }
           if (document.getElementById("c_ethnicity").value == "")
           {
              alert("Ethnicity can't be empty!");
              document.getElementById("c_ethnicity").focus();
              return false;
           }
           if (document.getElementById("c_marital_status").value == "")
           {
              alert("Marital Status can't be empty!");
              document.getElementById("c_marital_status").focus();
              return false;
           }
           if (document.getElementById("c_language").value == "")
           {
              alert("Primary Language can't be empty!");
              document.getElementById("c_language").focus();
              return false;
           }
           if (document.getElementById("c_preferred_language").value == "")
           {
              alert("Preferred Language can't be empty!");
              document.getElementById("c_preferred_language").focus();
              return false;
           }
           if (document.getElementById("c_physical_county").value == "")
           {
              alert("Physical County can't be empty!");
              document.getElementById("c_physical_county").focus();
              return false;
           }

           if (document.getElementById("c_legal_county").value == "")
           {
              alert("Legal County can't be empty!");
              document.getElementById("c_legal_county").focus();
              return false;
           }
           if (document.getElementById("c_residence_current").value == "")
           {
              alert("Residence Type can't be empty!");
              document.getElementById("c_residence_current").focus();
              return false;
           }
           if (document.getElementById("c_program_primary").value == "")
           {
              alert("Day Program can't be empty!");
              document.getElementById("c_program_primary").focus();
              return false;
           }
           if (document.getElementById("c_legal_status_1").value == "")
           {
              alert("Legal Status can't be empty!");
              document.getElementById("c_legal_status_1").focus();
              return false;
           }
           if (document.getElementById("c_cm_type").value == "")
           {
              alert("Case Manager Type can't be empty!");
              document.getElementById("c_cm_type").focus();
              return false;
           }

           if (document.getElementById("c_legal_status_1").value == "R")
           {
              var vDob=new Date(document.getElementById("c_dob").value);
              var cur=new Date();
              vDob.setFullYear(vDob.getFullYear() + 18); 
              if ((cur-vDob) >= 0)
              {
                 alert("Legal Status needs updating!");
                 return false;                 
              }  
           }
        }

        NoCreateIDNotes();
        return true;
    }

    function enable_btnPrint()
    {
        var btnPrint=document.getElementById("btnPrint");
        if(btnPrint!=null) 
        {
            btnPrint.style.display = "";
        }
    }

    function disable_btnPrint()
    {
        var btnPrint=document.getElementById("btnPrint");
        if(btnPrint!=null) 
        {
            btnPrint.style.display = "none";
        }
    }

    function back_click() {
        if (Confirm_Page())
           document.location.replace('webConsumerList.aspx'); 
    }

    function setLabel(fieldname, tablename) {
        if (document.ConsumerInfo.AllowChgLabel.value == "Y")
           popupDialogSmall("DefFieldLabel.aspx?fieldname="+fieldname+"&tablename="+tablename);
    }

    function display_weather()
    {
        var zipcode="";
        zipcode=document.ConsumerInfo.c_address_zip.value.toString(); 
        if (JTrim(zipcode)=="")
        {
           alert("Please input zipcode!");             
        }
        else
        {
           var url="weather.aspx?zipcode="+zipcode.toString();
           window.showModalDialog(url, self,'status:yes;dialogWidth:400px;dialogHeight:400px;help:no;scroll:no;resizable:yes');    
        }
    }

    function displayOtherAgency()
    {
        var flag = document.ConsumerInfo.AgencyCnt.value;
        switch(flag)
        {
            case "1":
                tab_agency2.style.display = "";
                tab_agency3.style.display = "none";
                document.ConsumerInfo.AgencyCnt.value = "2";
                break;
            case "2":
                tab_agency2.style.display = "";
                tab_agency3.style.display = "";
                document.ConsumerInfo.AgencyCnt.value = "3";
                document.getElementById("btn_Addagency").style.display="none";
                break;
         }
    }

    function displayOtherBenefits()
    {
        var flag = document.ConsumerInfo.BenefitsCnt.value;
        switch(flag)
        {
            case "1":
                tab_Benefit2.style.display = "";
                document.ConsumerInfo.BenefitsCnt.value = "2";
                document.getElementById("btn_AddBenefit").style.display="none";
                break;
         }
    }

    function displayOtherSupport2()
    {
        var flag = document.ConsumerInfo.SupportCnt.value;
        switch(flag)
        {
            case "1":
                othersupport2_tab.style.display = "";
                document.ConsumerInfo.SupportCnt.value = "2";
                document.getElementById("btn_othersupport").style.display="none";
                break;
         }
    }

    function displayOtherPlan()
    {
        var flag = document.ConsumerInfo.PlanCnt.value;
        switch(flag)
        {
            case "1":
                plan2.style.display = "";
                plan3.style.display = "none";
                document.ConsumerInfo.PlanCnt.value = "2";
                break;
            case "2":
                plan2.style.display = "";
                plan3.style.display = "";
                document.ConsumerInfo.PlanCnt.value = "3";
                document.getElementById("btn_burialplan").style.display="none";
                break;
         }
    }

    function displayOtherihssProv()
    {
        var flag = document.ConsumerInfo.ihssProvCnt.value;
        switch(flag)
        {
            case "1":
                tab_ihssProv2.style.display = "";
                tab_ihssProv3.style.display = "none";
                document.ConsumerInfo.ihssProvCnt.value = "2";
                break;
            case "2":
                tab_ihssProv2.style.display = "";
                tab_ihssProv3.style.display = "";
                document.ConsumerInfo.ihssProvCnt.value = "3";
                document.getElementById("btn_AddihssProv").style.display="none";
                break;
         }
    }

    function displaySection(tabname)
    {
        var tabname = tabname.toString();
        document.getElementById(tabname).style.display="";
    }
    function hiddenAddBtn(btnname)
    {
        var btnname = btnname.toString();
        document.getElementById(btnname).style.display="none";
    }

    function addSLSRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialogShort("webConsumerSLSSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addFCPPRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialogShort("webConsumerFCPPSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addAFPFRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialogShort("webConsumerAFPFSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addCoPayRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialog("webConsumerCoPaySCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addJudicalRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialog("webConsumerJudicialSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addComplaintRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialogShort("webConsumerComplaintSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addVoterRegRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialogShort("webConsumerVoterRegSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function addIMDRecord()
    {
        NoCreateIDNotes();
        var consumer_key=document.ConsumerInfo.consumer_key.value.toString();
        popupDialog("webConsumerIMDSCLARC.aspx?ClientID=" + consumer_key + "&type=add");
    }

    function displayConservator()
    {
      var flag = document.ConsumerInfo.ConservatorCnt.value;
      switch(flag)
      {
          case "1":
            Conservator2_Tab.style.display = "";
            Conservator3_Tab.style.display = "none";
            Conservator4_Tab.style.display = "none";
            document.ConsumerInfo.ConservatorCnt.value = "2";
            break;
          case "2":
            Conservator2_Tab.style.display = "";
            Conservator3_Tab.style.display = "";
            Conservator4_Tab.style.display = "none";
            document.ConsumerInfo.ConservatorCnt.value = "3";
            break;
          case "3":
            Conservator2_Tab.style.display = "";
            Conservator3_Tab.style.display = "";
            Conservator4_Tab.style.display = "";
            document.getElementById("btn_AddConservator").style.display="none";
            document.ConsumerInfo.ConservatorCnt.value = "4";
            break;
      }
    }

    function displayGuardian()
    {
      var flag = document.ConsumerInfo.GuardianCnt.value;
      switch(flag)
      {
          case "1":
            Guardian2_Tab.style.display = "";
            Guardian3_Tab.style.display = "none";
            Guardian4_Tab.style.display = "none";
            document.ConsumerInfo.GuardianCnt.value = "2";
            break;
          case "2":
            Guardian2_Tab.style.display = "";
            Guardian3_Tab.style.display = "";
            Guardian4_Tab.style.display = "none";
            document.ConsumerInfo.GuardianCnt.value = "3";
            break;
          case "3":
            Guardian2_Tab.style.display = "";
            Guardian3_Tab.style.display = "";
            Guardian4_Tab.style.display = "";
            document.getElementById("btn_AddGuardian").style.display="none";
            document.ConsumerInfo.GuardianCnt.value = "4";
            break;
      }
    }

    function refreshAddableSection()
    {
        var Agencyflag = document.ConsumerInfo.AgencyCnt.value;
        switch(Agencyflag)
        {
            case "1":
                tab_agency2.style.display = "none";
                tab_agency3.style.display = "none";
                break;
            case "2":
                tab_agency2.style.display = "";
                tab_agency3.style.display = "none";
                break;
            case "3":
                tab_agency2.style.display = "";
                tab_agency3.style.display = "";
                document.getElementById("btn_Addagency").style.display="none";
                break;
        }
         
        var Benefitsflag = document.ConsumerInfo.BenefitsCnt.value;
        switch(Benefitsflag)
        {
            case "1":
                tab_Benefit2.style.display = "none";
                break;
            case "2":
                tab_Benefit2.style.display = "";
                document.getElementById("btn_AddBenefit").style.display="none";
                break;
        }

        var Supportflag = document.ConsumerInfo.SupportCnt.value;
        switch(Supportflag)
        {
            case "1":
                othersupport2_tab.style.display = "none";
                break;
            case "2":
                othersupport2_tab.style.display = "";
                document.getElementById("btn_othersupport").style.display="none";
                break;
         }

        var Planflag = document.ConsumerInfo.PlanCnt.value;
        switch(Planflag)
        {
            case "1":
                plan2.style.display = "none";
                plan3.style.display = "none";
                break;
            case "2":
                plan2.style.display = "";
                plan3.style.display = "none";
                break;
            case "3":
                plan2.style.display = "";
                plan3.style.display = "";
                document.getElementById("btn_burialplan").style.display="none";
                break;
         }

        var Conservatorflag = document.ConsumerInfo.ConservatorCnt.value;
        switch(Conservatorflag)
        {
            case "1":
            Conservator2_Tab.style.display = "none";
            Conservator3_Tab.style.display = "none";
            Conservator4_Tab.style.display = "none";
            break;
            case "2":
            Conservator2_Tab.style.display = "";
            Conservator3_Tab.style.display = "none";
            Conservator4_Tab.style.display = "none";
            break;
            case "3":
            Conservator2_Tab.style.display = "";
            Conservator3_Tab.style.display = "";
            Conservator4_Tab.style.display = "none";
            break;
            case "4":
            Conservator2_Tab.style.display = "";
            Conservator3_Tab.style.display = "";
            Conservator4_Tab.style.display = "";
            document.getElementById("btn_AddConservator").style.display="none";
            break;
        }
        var Guardianflag = document.ConsumerInfo.GuardianCnt.value;
        switch(Guardianflag)
        {
            case "1":
            Guardian2_Tab.style.display = "none";
            Guardian3_Tab.style.display = "none";
            Guardian4_Tab.style.display = "none";
            break;
            case "2":
            Guardian2_Tab.style.display = "";
            Guardian3_Tab.style.display = "none";
            Guardian4_Tab.style.display = "none";
            break;
            case "3":
            Guardian2_Tab.style.display = "";
            Guardian3_Tab.style.display = "";
            Guardian4_Tab.style.display = "none";
            break;
            case "4":
            Guardian2_Tab.style.display = "";
            Guardian3_Tab.style.display = "";
            Guardian4_Tab.style.display = "";
            document.getElementById("btn_AddGuardian").style.display="none";
            break;
        }
        var LegalInfo_flag = document.ConsumerInfo.LegalInfo_flag.value;
        switch(LegalInfo_flag)
        {
            case "1":
            document.getElementById("legalinfo_tab").style.display="none";
            break;
            case "0":
            document.getElementById("legalinfo_tab").style.display="";
            break;      
        }

        if ( document.getElementById("employed").value == "YES")
            document.getElementById("employed_yes").style.display="";
        else document.getElementById("employed_yes").style.display="none";

        if ( document.getElementById("chosed").value == "1")
            document.getElementById("employed_comp").style.display="";
        else document.getElementById("employed_comp").style.display="none";

        var ihssProvflag = document.ConsumerInfo.ihssProvCnt.value;
        switch(ihssProvflag)
        {
            case "1":
                tab_ihssProv2.style.display = "none";
                tab_ihssProv3.style.display = "none";
                break;
            case "2":
                tab_ihssProv2.style.display = "";
                tab_ihssProv3.style.display = "none";
                break;
            case "3":
                tab_ihssProv2.style.display = "";
                tab_ihssProv3.style.display = "";
                document.getElementById("btn_AddihssProv").style.display="none";
                break;
        }
    }

    function displayLegalInfo()
    {
        var non_conserved=document.getElementById("non_conserved");
        if(non_conserved.checked==false)
        {
            document.getElementById("legalinfo_tab").style.display="";
            document.ConsumerInfo.LegalInfo_flag.value = "1";
        }
        else
        {
            document.getElementById("legalinfo_tab").style.display="none";
            document.ConsumerInfo.LegalInfo_flag.value = "1";
        }
    }

    function payeezip_click()
    {
        if ( document.getElementById("c_payee_zip").value == "1")//Regional Center (tb_entry_name='1')
            document.ConsumerInfo.payeecode_changeflag.value = "1";
    }

    function payeezip2_click()
    {
        if ( document.getElementById("c_payee_zip2").value == "1")//Regional Center (tb_entry_name='1')
            document.ConsumerInfo.payeecode_changeflag.value = "1";
    }

    function chguci_click()
    {
        if (save_click())
        {
           window.showModalDialog("ChangeConsumerUCI.aspx?UCI="+document.ConsumerInfo.consumer_key.value, self, 
              "status:no;dialogWidth:500px;dialogHeight:200px;help:no;scroll:no;resizable:yes;");
        }        
    }

    function LocList_click()
    {
        // if (save_click())
        {
           document.location.replace('../FormList/FormConsumerLocList.aspx');
        }
    }

    function employed_click()
    {
        if ( document.getElementById("employed").value == "YES")
            document.getElementById("employed_yes").style.display="";
        else document.getElementById("employed_yes").style.display="none";
    }

    function chosed_click()
    {
        if ( document.getElementById("chosed").value == "1")
            document.getElementById("employed_comp").style.display="";
        else document.getElementById("employed_comp").style.display="none";
    }

    function reloadwindow()
    {
        window.location.replace("webConsumerInfoSCLARC.aspx");
    }

    function CheckMWSetting()
    {
        if (document.ConsumerInfo.c_medicaid_waiver.value == "Y")
            document.ConsumerInfo.c_medicaid_waiver.style.backgroundColor = "Yellow";
        else document.ConsumerInfo.c_medicaid_waiver.style.backgroundColor = "";
    }

    function LegalStatusChg()
    {
        document.ConsumerInfo.c_legal_status_1_dup.value = document.ConsumerInfo.c_legal_status_1.value;
        DataChanged();
    }

    function CMChange()
    {
       NoCreateIDNotes(); 
       if ((document.ConsumerInfo.dob_36M.value == "Y") && (document.ConsumerInfo.is_prevention.value != "Y"))
       {
          var DspStr = "Do you want to start the Initial IPP ? ";
          //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          var saveflag = PromptSaveChange(1, DspStr);
          if (saveflag == "1")
          {
             //this.ConsumerInfo.c_tickler_cycle.value = 5;
             //this.ConsumerInfo.c_tickler_date.value = new Date().getFullYear();    
             this.ConsumerInfo.InitialIPP.value = '1';
             window.document.ConsumerInfo.submit(); 
             window.focus();   
          }
       }  
    }

    function StartIPP()
    {
       NoCreateIDNotes();
       if ((document.ConsumerInfo.dob_35M.value == "Y") && (document.ConsumerInfo.is_prevention.value != "Y"))
       {
          var DspStr = "Do you want to start the Initial IPP ? ";
          //var saveflag = window.showModalDialog("../webSaveChange.aspx?NoCancel=1&DspMsg=" + DspStr, self, "status:no;dialogWidth:350px;dialogHeight:120px;help:no;scroll:no;resizable:yes;");
          var saveflag = PromptSaveChange(1, DspStr);
          if (saveflag == "1")
          {
             //this.ConsumerInfo.c_tickler_cycle.value = 5;
             //this.ConsumerInfo.c_tickler_date.value = new Date().getFullYear();    
             this.ConsumerInfo.InitialIPP.value = '1';
             window.document.ConsumerInfo.submit(); 
             window.focus();   
          }
       }  
    }

    function submitcalendar(boxid) 
    {
    //alert(boxid);
       //if (boxid == "c_date05")
       //{
          var InputDate = JTrim(boxid.value);
          var MonStr = "";
          if (InputDate != "") 
          {
            if (IsDate(InputDate, false) == "true") 
            {
               var dt = new Date(InputDate);
               dt.setDate(dt.getDate() + 45);
               MonStr = (dt.getMonth() + 1).toString();
               document.getElementById("c_base_month").value = MonStr;
            }
          }
       //}
    }

    function print_map() 
    {
       var address = $("#streetText input").attr('value') + ', ' + $("#cityText input").attr('value') + ', ' + $("#stateText input").attr('value') + ', ' + $("#zipCodeText input").attr('value');         
       winhref("http://maps.google.com/?q="+address);
    }

    function image_click()
    {
       var imageUrl="http://ax/appxtender/ISubmitQuery.aspx?Appname=CONSUMER_FILE&dsn=AX-SCLARC&UCI="+document.ConsumerInfo.consumer_key.value;
       winhref(imageUrl);
    }

        //-->

       
function doLoad() {
t = setTimeout("window.close()",1000);
}

</script>
<script type="text/javascript">
function refreshAndClose() {
    window.opener.location.reload(true);
    window.close();
}

    </script>
    
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
     function ShowAddress() 
     {
          if(document.getElementById("map_canvas").style.display == ""){
		      document.getElementById("map_canvas").style.display = "none";	
		      return;	
				
	     } else {
		     document.getElementById("map_canvas").style.display = "";
		 }
          var geocoder = new google.maps.Geocoder();           
          var myOptions = {
             zoom: 15,      
             mapTypeId: google.maps.MapTypeId.ROADMAP
          }
          map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
          var address = $("#streetText input").attr('value') + ', ' + $("#cityText input").attr('value') + ', ' + $("#stateText input").attr('value') + ', ' + $("#zipCodeText input").attr('value');         
          if (geocoder) {
            geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) 
            {
               map.setCenter(results[0].geometry.location);
               var marker = new google.maps.Marker({
                  map: map, 
                  position: results[0].geometry.location
               });
               var message = address;
               var infowindow = new google.maps.InfoWindow(
               { content: message
               });
              google.maps.event.addListener(marker, 'click', function() {
                infowindow.open(map,marker);
              });
            } 
            else 
            {
             document.getElementById("map_canvas").style.display = "none";	
             switch(status)
             {
                 case "ZERO_RESULTS":
                    alert("Empty address or the address can't be found in Google Map");
                    break;
                 case "OVER_QUERY_LIMIT":
                    alert("Google Map failed because that the request is over the maximun quota!");
                    break;
                 case "REQUEST_DENIED":
                    alert("Google Map failed bceasue that the request was denied.");
                    break;
                 case "INVALID_REQUEST":   
                    alert("Google Map failed because that the address is missing.");
                    break;                    
                 default: 
                    alert("Google Map failed with the error code: " + status); 
                    break;
             }
            }
          });
       }
     }
    </script>     

</head>
<body id="body" runat="server" style="cursor:wait">  
    <script type="text/JavaScript" src="../js/calendar.js"></script>
    <form id="ConsumerInfo" method="post" runat="server">   
    <input type="submit" value="test" style="display:none;" /> 
    <asp:hiddenfield id="hdnRefreshData" runat="server" value="0" />
    <asp:hiddenfield id="hdnRefreshCode" runat="server" value="" />   
    <input id="NoConfirm"  type="hidden" value="0" />
    <asp:hiddenfield id="dataChg" runat="server" value="0" />
    <input id="SaveSameName"  type="hidden" runat="server" value="0" />
    <input id="NewSameName"   type="hidden" runat="server" value="0" />
    <input id="InitialIPP"    type="hidden" runat="server" value="0" />
    <input type="hidden" name="now_div_flag" id="now_div_flag" value="1" runat="server" />
    <input type="hidden" name="now_div_LF_flag" id="now_div_LF_flag" value="1" runat="server" />
    <input type="hidden" name="now_div_AF_flag" id="now_div_AF_flag" value="1" runat="server" />
    <input type="hidden" name="now_div_name" id="now_div_name" value="" runat="server" />
    <input type="hidden" name="consumer_dtm" id="consumer_dtm" value="10" runat="server" />
    <input type="hidden" name="ConservatorCnt" id="ConservatorCnt" value="1" runat="server" />
    <input type="hidden" name="GuardianCnt" id="GuardianCnt" value="1" runat="server" />
    <input type="hidden" name="isChange" id="isChange" value="0" runat="server" />
    <input type="hidden" name="payeecode_changeflag" id="payeecode_changeflag" value="0" runat="server" />
    <input type="hidden" name="PlanCnt" id="PlanCnt" value="1" runat="server" />
    <input type="hidden" name="SupportCnt" id="SupportCnt" value="1" runat="server" />
    <input type="hidden" name="BenefitsCnt" id="BenefitsCnt" value="1" runat="server" />
    <input type="hidden" name="AgencyCnt" id="AgencyCnt" value="1" runat="server" />
    <input type="hidden" name="ihssProvCnt" id="ihssProvCnt" value="1" runat="server" />
    <input type="hidden" name="LegalInfo_flag" id="LegalInfo_flag" value="0" runat="server" />
    <input type="hidden" name="consumer_key" id="consumer_key" value="" runat="server" />
    <input type="hidden" name="UserAct" id="UserAct" value="" runat="server" />  
    <input type="hidden" name="consumer_dtd" id="consumer_dtd" value="13" runat="server" />
    <input type="hidden" name="hdtoSaveData" id="hdtoSaveData" value="" runat="server" /> 
    <input type="hidden" name="IDNotespopup" id="IDNotespopup" value="Y" runat="server" />
    <input type="hidden" name="IDNotestype" id="IDNotestype" value="" runat="server" />
    <input type="hidden" name="IDNotestemplate" id="IDNotestemplate" value="" runat="server" />
    <input type="hidden" name="IDNotessave" id="IDNotessave" value="N" runat="server" />
    <input type="hidden" name="consumer_dty" id="consumer_dty" value="18" runat="server" />
    <input type="hidden" name="AllowChgLabel" id="AllowChgLabel" value="N" runat="server" />
    <input type="hidden" name="dob_36M" id="dob_36M" value="" runat="server" />
    <input type="hidden" name="dob_35M" id="dob_35M" value="" runat="server" />
    <input type="hidden" name="is_prevention" id="is_prevention" value="" runat="server" />   
    <input type="hidden" name="statusdates_edit_flag" id="statusdates_edit_flag" value="0" runat="server" />
    <input type="hidden" name="PermEdit_Flag" id="PermEdit_Flag" value="0" runat="server" />
    <input type="hidden" name="SDPEdit_Flag" id="SDPEdit_Flag" value="0" runat="server" />
    <input type="hidden" name="org_msi" id="org_msi" value="" runat="server" />

    <div align="left" style="WIDTH:100%; ">
    <table id="headericon" runat="server" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr valign="middle" style="height:30px; background-color: #EAF4FF">
        <td align="left" valign="middle" width="25%">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save"
                OnClientClick="return save_click();" OnClick="btnEdit_Click" >
            </asp:ImageButton>
            <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Save" Visible="False" Style="width: 25px;height:25px"
                ImageURL="../img/save.ico" ToolTip="Save"
                OnClientClick="return save_click();" OnClick="btnAdd_Click" >
            </asp:ImageButton>
            &nbsp;
            <input type="image" id="btnPrint" runat="server" alt="Print" style="width: 25px;height:25px"  
                src="../img/print.ico" title="Print"
                onclick="javascript:print_click();return false;" />             
            &nbsp;
            <input type="image" id="btnPrintAll" runat="server" alt="Print All" style="width: 25px;height:25px"  
                src="../img/printall.ico" title="Print All"
                onclick="javascript:printall_click();return false;" />
            &nbsp;
            <input type="image" id="btnImage" runat="server" alt="Image" style="width: 25px;height:25px"  
                src="../img/star.gif" title="Image"
                onclick="javascript:image_click();return false;" />
            &nbsp;
            <input type="image" id="btnBack" runat="server" alt="Back" style="width: 25px;height:25px"  
                src="../img/back.ico" title="Back"
                onclick="javascript:back_click();return false;" />        
        </td>
        <td align="left" width="60%">
            <asp:label id="Info" runat="server" Font-Size="12px" Font-Bold="True" ForeColor="blue">ADD NEW CLIENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input UCI:</asp:label>
            <asp:TextBox ID="NewUCI" runat="server" Style="width: 65px" Width="65" MaxLength="8" Visible="false"></asp:TextBox>            
        </td>
        <td align="left" width="15%">
            <input type="image" id="btnSupport" runat="server" alt="Support" style="width: 25px;height:25px"  
                src="../img/supportdesk.ico" title="Support"
                onclick="javascript:window.top.outsidelinks(1);return false;" />             
            &nbsp;
            <input type="image" id="btnHelp" runat="server" alt="Help" style="width: 25px;height:25px"  
                src="../img/help.ico" title="Help"
                onclick="javascript:window.top.outsidelinks(2);return false;" />             
            &nbsp;
            <input type="image" id="btnLogout" runat="server" alt="Logout" style="width: 50px;height:25px"  
                src="../img/logout.jpg" title="Logout"
                onclick="window.top.document.location.replace('../webLogout.aspx');return false;" />             
            &nbsp;
        </td>
      </tr>
      <tr style="height:2px">
        <td colspan="3" style="background-color:#137AC5"></td> 
      </tr>
    </table>  
    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="100%" >
      <tr class="tab_bar">
        <td>
            <table id="TABLE_Label" cellspacing="0" cellpadding="0" runat="server">
                <tr id="tr_info">
                    <td id="TD_FS"  style="color:#990066;" class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Face Sheet</u></b>
                    </td>
                    <td id="TD_LF"  class="tab_sel" onclick="doseltd(this);"
                        width="90">
                        <b><u>Financial</u></b>
                    </td>
                    <td id="TD_AF"  class="tab_sel" onclick="doseltd(this);"
                        width="60">
                        <b><u>Legal</u></b>
                    </td>
                    <td id="TD_DC"  class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Status Dates</u></b>
                    </td>
                    <td id="TD_AD"  class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Administration</u></b>
                    </td>
                    <td id="TD_RE"  class="tab_sel" onclick="doseltd(this);"
                        width="80">
                        <b><u>Referrals</u></b>
                    </td>
                    <td id="TD_AM"  class="tab_sel" onclick="doseltd(this);"
                        width="80">
                        <b><u>Employment</u></b>
                    </td>
                    <td id="TD_SC"  class="tab_sel" onclick="doseltd(this);"
                        width="80">
                        <b><u>Schools</u></b>
                    </td>
                     <td id="TD_PG" class="tab_sel" onclick="doseltd(this);"
                        width="80">
                        <b><u>Programs</u></b>
                    </td>
                    <td id="TD_PO"  class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>POS Auths</u></b>
                    </td>
                    <td id="TD_CT"  class="tab_sel" onclick="doseltd(this);"
                        width="80">
                        <b><u>Contacts</u></b>
                    </td>
                    <td id="TD_SA"  class="tab_sel" onclick="doseltd(this);"
                        width="130" style="display: none;">
                        <b><u>Substance Abuse</u></b>
                    </td>
                    <td id="TD_EG"  class="tab_sel" onclick="disable_btnPrint();doseltd(this);"
                        width="120">
                        <b><u><asp:Label ID="l_title_Intake" runat="server" Text="Intake Forms"></asp:Label></u></b>
                    </td>
                    <td id="TD_PE"  class="tab_sel" onclick="doseltd(this);"
                        width="100">
                        <b><u>Permission</u></b>
                    </td>
                    <td id="TD_SD"  class="tab_sel" onclick="doseltd(this);"
                        width="80">
                        <b><u>SDP</u></b>
                    </td>
                </tr>
            </table>
        </td>
      </tr>
      </table>
      <table id="Table_Label_LF" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse; display:none" width="100%" runat="server">
      <tr>
        <td width="15px"></td>
        <td class="tab_barsub">
            <table id="tb_info_LF" cellspacing="0" cellpadding="0" runat="server">
                <tr id="tr_info_LF" height="20px">
                    <td id="TD_LF_1"  style="color:#990066;" class="tab_selsub" onclick="doseltdsubLF(this);"
                        width="100">
                        <b><u>Financial Info</u></b>
                    </td>
                    <td id="TD_LF_2"  class="tab_selsub" onclick="doseltdsubLF(this);"
                        width="100">
                        <b><u>Health Benefit</u></b>
                    </td>
                    <td id="TD_LF_3"  class="tab_selsub" onclick="doseltdsubLF(this);"
                        width="200">
                        <b><u>Other Benefits/Burial Trusts</u></b>
                    </td>
                    <td id="TD_LF_4"  class="tab_selsub" onclick="doseltdsubLF(this);" runat="server"
                        width="60">
                        <b><u>SLS</u></b>
                    </td>
                    <td id="TD_LF_5"  class="tab_selsub" onclick="doseltdsubLF(this);" runat="server"
                        width="100">
                        <b><u>FCPP/AFPF</u></b>
                    </td>
                    <td id="TD_LF_6"  class="tab_selsub" onclick="doseltdsubLF(this);"
                        width="350">
                        <b><u>Co-Pay/Co-Insurance/Deductible Reimbursement List</u></b>
                    </td>
                </tr>
            </table>
        </td>
      </tr>
    </table>
      <table id="Table_Label_AF" border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse; display:none" width="100%" runat="server">
      <tr>
        <td width="15px"></td>
        <td class="tab_barsub">
            <table id="tr_info_AF" cellspacing="0" cellpadding="0" runat="server">
                <tr id="tr1" height="20px">
                    <td id="TD_AF_1"  style="color:#990066;" class="tab_selsub" onclick="doseltdsubAF(this);" runat="server"
                        width="110">
                        <b><u>Confidential Info</u></b>
                    </td>
                    <td id="TD_AF_2"  class="tab_selsub" onclick="doseltdsubAF(this);"
                        width="70">
                        <b><u>Legal Info</u></b>
                    </td>
                    <td id="TD_AF_3"  class="tab_selsub" onclick="doseltdsubAF(this);"
                        width="130">
                        <b><u>Judicial Involvement</u></b>
                    </td>
                    <td id="TD_AF_4"  class="tab_selsub" onclick="doseltdsubAF(this);" runat="server"
                        width="190">
                        <b><u>Fair Hearing/4731 Complaints</u></b>
                    </td>
                    <td id="TD_AF_5"  class="tab_selsub" onclick="doseltdsubAF(this);"
                        width="120">
                        <b><u>Voter Registration</u></b>
                    </td>
                    <td id="TD_AF_6"  class="tab_selsub" onclick="doseltdsubAF(this);"
                        width="80">
                        <b><u>IMD/MHRC</u></b>
                    </td>
                </tr>
            </table>
        </td>
        <td style="width:auto"></td>
      </tr>
    </table>
    </div>
    <div id="maindiv" align="center" style="position:relative;WIDTH:100%;overflow:auto;height:650px">
    <table class="table_maindiv">
        <tr style="height:2px">
            <td></td>
        </tr>
        <tr>
            <td valign="top" align="center" width="100%" height="100%">
                <div id="Consumer_FS">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                          <td style="width: 210px" align="right" class="td_label" ondblclick="setLabel('c_attention','consumer_label');" >
                                <b><asp:Label ID="l_c_attention" runat="server" Text="Attention:" ToolTip="Attention" ></asp:Label></b></td>
                          <td width="5" >
                          </td>
                          <td colspan="2" class="td_unline" align="left" >
                                <asp:TextBox ID="c_attention" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                          </td>
                          <td width="5" >
                          </td>
                          <td align="left" width="300" >
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr class="tr_common">
                                  <td style="width: 150px"  class="td_label" >
                                      <b><asp:Label ID="l_c_medicaid_waiver" runat="server" Text="MediCaid Waiver:"></asp:Label></b>
                                  </td>
                                  <td width="5" >
                                  </td>
                                  <td  style="width: 100px" >
                                      <asp:DropDownList ID="c_medicaid_waiver" runat="server" CssClass="infaceDrop" OnChange="CheckMWSetting();DataChanged();">
                                         <asp:ListItem Value=""></asp:ListItem>
                                         <asp:ListItem Value="Y">Yes</asp:ListItem>
                                         <asp:ListItem Value="N">No</asp:ListItem>
                                      </asp:DropDownList>
                                  </td>
                               </tr>
                             </table>
                          </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                               <b><asp:Label ID="l_c_name_first" runat="server" Text="First Name:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td style="width: 300px" class="td_unline" align="left">
                                <asp:TextBox ID="c_name_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>       
                            </td>
                            <td  colspan="3" rowspan="10" align="center">
                                &nbsp;<asp:ImageButton ID="viewphoto" runat="server" 
                                    ImageUrl="ImageThumbeNail.aspx?height=120&width=120" 
                                    OnClientClick="popupDialogSmall('ConsumerIMG.aspx?from=SCLARC');"  tabindex="-1" />
                            </td>
                        </tr>
                        <tr style="height:5px;">
                          <td style="width: 210px ">
                          </td>
                          <td colspan="5">
                            <asp:RequiredFieldValidator ControlToValidate="c_name_first" Display="dynamic" ErrorMessage="Please enter first name"
							         runat="server" ID="vNameFirst" />
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_mi" runat="server" Text="Middle Name:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" style="width: 300px">   
                                <asp:TextBox ID="c_name_mi" runat="server" CssClass="inface" Width="25px" MaxLength="1"></asp:TextBox>
                            </td> 
                            <td  colspan="3">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                          <td colspan="6">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_last" runat="server" Text="Last Name:"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" align="left" style="width: 300px">   
                                <asp:TextBox ID="c_name_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td> 

                            <td  colspan="3">
                            </td>

                        </tr>
                        <tr style="height: 5px;">
                          <td style="width: 210px ">
                          </td>
                          <td colspan="5">
							   <asp:RequiredFieldValidator ControlToValidate="c_name_last" Display="dynamic" ErrorMessage="Please enter last name"
							         runat="server" ID="vNameLast" />
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_aka_first" runat="server" Text="Aka Name(First):"></asp:Label></b>
                            </td>
                            <td style="height: 20px" width="5">
                            </td>
                            <td  class="td_unline" width="300">
                                <asp:TextBox ID="c_name_aka_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            <td  colspan="3">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_aka_mi" runat="server" Text="Aka Name(Mi):"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" style="width: 300px"> 
                                <asp:TextBox ID="c_name_aka_mi" runat="server" CssClass="inface"  Width="25px"  MaxLength="1"></asp:TextBox>
                            </td>
                            <td  colspan="3">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_aka_last" runat="server" Text="Aka Name(Last):"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" style="width: 300px">
                                <asp:TextBox ID="c_name_aka_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            
                            <td align="right" class="td_label"  style="width: 210px">
                               <b><asp:Label ID="l_c_gender" runat="server" Text="Gender:"></asp:Label></b>
                              </td>
                              <td width="5" >
                              </td>
                              <td align="left" width="300" >
                                    <asp:DropDownList ID="c_gender" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                         Width="235" OnChange="DataChanged()">
                                    </asp:DropDownList>
                              </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_maiden_first" runat="server" Text="Maiden Name(First):"></asp:Label></b>
                            </td>
                            <td style="height: 20px"  width="5">
                            </td>
                            <td  class="td_unline" width="300">
                                <asp:TextBox ID="c_name_maiden_first" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_ethnicity" runat="server" Text="Ethnicity:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ethnicity" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" class="td_label">
                                <b><asp:Label ID="l_c_name_maiden_last" runat="server" Text="Maiden Name(Last):"></asp:Label></b>
                            </td>
                            <td width="5">
                            </td>
                            <td class="td_unline" style="width: 300px">
                                <asp:TextBox ID="c_name_maiden_last" runat="server" CssClass="inface" MaxLength="20"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_text12" runat="server" Text="Ethnicity II:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_text12" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_dob" runat="server" Text="Date of Birth:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:TextBox ID="c_dob" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                     onfocus="DataChanged();showcalendar(event, this);" width="80" ></asp:TextBox>  
                                <asp:CompareValidator ControlToValidate="c_dob" Operator="DataTypeCheck" Type="Date" 
                                        Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="dob_dt" Width="25px"></asp:CompareValidator> 
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_language" runat="server" Text="Language:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_birthplace" runat="server" Text="Birth Place:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:TextBox ID="c_birthplace" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>   
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_preferred_language" runat="server" Text="Preferred Language:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_preferred_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_marital_status" runat="server" Text="Marital Status:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_marital_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="250" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_document_language" runat="server" Text="Language of Documentation:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_document_language" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_id_dup" runat="server" Text="Case Manager:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_cm_id_iddup" runat="server" CssClass="infaceText" Width="60"></asp:Label>/
                                <asp:DropDownList ID="c_cm_id_dup" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="170">
                                </asp:DropDownList>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_date14" runat="server" Text="Date of choice:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:TextBox ID="c_date14"  onclick="DataChanged();showcalendar(event, this);" 
                                   onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" width="80px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" class="td_unline" >
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                            </td>
                            <td colspan="3">
                                <table cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                    <td align="right" class="td_label"  style="width: 80px">
                                        <b><asp:Label ID="l_c_hair_color" runat="server" Text="Hair Color:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td align="left" width="100">
                                        <asp:DropDownList ID="c_hair_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                             Width="100" OnChange="DataChanged()" >
                                        </asp:DropDownList>
                                    </td>
                                    <td width="10"></td>
                                    <td align="right" class="td_label"  style="width: 80px">
                                        <b><asp:Label ID="l_c_eye_color" runat="server" Text="Eye Color:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td align="left" width="100">
                                        <asp:DropDownList ID="c_eye_color" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                             Width="100" OnChange="DataChanged()">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" class="td_unline" >
                                <input type="button" value="Missing Person" style="width: 110px" id="btnMissingPerson" class="buttonbluestyle" runat="server"
                                    onclick="javascript:document.location.replace('../FormList/FormMissingPersonList.aspx');" />
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                            </td>
                            <td colspan="3">
                                <table cellspacing="0" cellpadding="0" border="0">
                                <tr class="tr_common">
                                    <td style="width: 80px" align="right" width="80" class="td_label">
                                        <b><asp:Label ID="l_c_height" runat="server" Text="Height:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td class="td_unline" align="left" width="100">
                                        <asp:TextBox ID="c_height_weight" runat="server" CssClass="inface" MaxLength="20" Width="50px"></asp:TextBox>&nbsp;inch&nbsp;&nbsp;
                                    </td>
                                    <td width="10"></td>
                                    <td align="right" class="td_label"  style="width: 80px">
                                        <b><asp:Label ID="Label39" runat="server" Text="Weight:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td class="td_unline" width="100">
                                        <asp:TextBox ID="c_weight" runat="server" CssClass="inface" MaxLength="20" Width="50px"></asp:TextBox>&nbsp;lbs       
                                    </td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_1" runat="server" Text="Primary Phone:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_1_1" runat="server" readonly="true" CssClass="infaceText" MaxLength="3" 
                                         onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_1_2" runat="server" readonly="true" CssClass="infaceText" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_1_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_phone_1_3" runat="server" readonly="true" CssClass="infaceText" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td>
                            <td align="right" class="td_label"  style="width: 183px">
                                <b><asp:Label ID="l_c_text8" runat="server" Text="Phone:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_text8_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_text8_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_text8_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_text8_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_text8_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>
                                </table>  
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">                            
                            <td style="width: 210px;" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_2" runat="server" Text="Work Phone:"></asp:Label></b>
                            </td>
                            <td width="5"  style="height: 20px">
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_2_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_2_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_2_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_phone_2_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_phone_3" runat="server" Text="(Optional)" Width="90" Visible="false"></asp:Label></b>
                                <asp:DropDownList ID="c_phone_3_label" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="80" OnChange="DataChanged()" Visible="false">
                                </asp:DropDownList>
                            </td>
                            <td width="5" >
                            </td>
                            <td width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px"></td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_3_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_2);" Visible="false"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px"></td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_phone_3_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_phone_3_3);" Visible="false"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px"></td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_phone_3_3" runat="server" CssClass="inface" MaxLength="4" Visible="false"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>    
                            </td> 
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">                              
                            <td style="width: 183px" align="right" width="183" class="td_label" >
                                <b><asp:Label ID="l_c_email" runat="server" Text="Email:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td colspan="4" class="td_unline" align="left">
                                <asp:TextBox ID="c_email" runat="server" readonly="true" CssClass="infaceText" MaxLength=45 Width="380px"></asp:TextBox>
                               <input type="button" id="btnSendEmail" name="btnSendEmail" value="SendEmail" style="width:80px;" class="buttonbluestyle" runat="server"
                                       onclick="javascript:sendemail_click();" /> 
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_residence_number" runat="server" Text="Vendor Number:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_residence_number" runat="server" CssClass="inface" MaxLength="12"></asp:TextBox>			                 
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_residence_current" runat="server" Text="Residence Type:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_residence_current" onchange="javascript:document.ConsumerInfo.isChange.value = '1';DataChanged();" 
                                runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="290">
                                </asp:DropDownList>                               
                            </td>                            
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label" style="width: 183px">
                                <b><asp:Label ID="l_c_residence_date" runat="server" Text="Start Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_residence_date"  onclick="DataChanged();showcalendar(event, this);" 
                                   onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" width="80px"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_residence_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="residence_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_residence_prior" runat="server" Text="Prior Residence Type:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_residence_prior" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="290" OnChange="DataChanged()" >
                                </asp:DropDownList>                               
                            </td>                            
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common" valign="middle">
                            <td style="width: 210px;" align="right" width="210" class="td_label"></td>
                            <td colspan="2" style="width: 305px; height: 20px;" align="left" width="305" class="td_label">
                                <span style="float:left;" id="curradd">
                                <b>Current Address</b>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="image" id="btnPrintMap" runat="server" alt="Print" style="width: 25px;height:25px"  
                                     src="../img/print.ico" title="Print"
                                      onclick="javascript:print_map();return false;" />             
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span>
                                <span style="float:left;padding-right:5px;padding-bottom:1px;" id="mapHref">
								<div id="map_canvas" style="width: 500px; height: 300px;position: absolute;display:none;margin-top:25px;" ></div>
								<a href="#" onclick="ShowAddress(); return false;" title="Map">
								<img src="../img/map.gif" border="0" /></a>
								</span>
                            </td>
                            <td align="right" class="td_label" style="width: 183px; height: 20px;"><b>Mailing Address</b></td>
                            <td width="5" style="height: 20px">
                            </td>
                            <td style="width: 300px; height: 20px;" align="left" width="300">
                                <input type="button" ID="btnMainAdd" style="width:250px; height:25px;" value="Same as the current address"
									onclick="javascript:CopyEmailAddress();DataChanged();" disabled=true /> 
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_name" runat="server" Text="C/O Name:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_address_name"  runat="server" readonly="true" CssClass="infaceText" MaxLength="30"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label"  style="width: 183px"></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_name" runat="server" readonly="true" CssClass="infaceText" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_1" runat="server" Text="Address Line 1:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_address_line_1"  runat="server" readonly="true" CssClass="infaceText" MaxLength="30"></asp:TextBox>
                            </td>
                            <td align="right" class="td_label"  style="width: 183px"></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_line_1" runat="server" readonly="true" CssClass="infaceText" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_line_2" runat="server" Text="Address Line 2:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
							<td class="td_unline" align="left" width="300">
                                <span style="float:left;" id="streetText">
                                <asp:TextBox ID="c_address_line_2" runat="server" readonly="true" CssClass="infaceText" MaxLength="30" width="210"></asp:TextBox>
                                </span>
                            </td>
                            <td align="right" class="td_label" style="width: 183px"></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_line_2" runat="server" readonly="true" CssClass="infaceText" MaxLength="30" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_address_city" runat="server" Text="City and State:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                             <table align="left" cellspacing="0" cellpadding="0" border="0">
                               <tr><td width="230" style="width:230px">
                               <span id="cityText">
                               <asp:TextBox ID="c_address_city" runat="server" readonly="true" CssClass="infaceText"  Width="210" MaxLength="19" ></asp:TextBox>
                               </span>
                               </td>
                               <td width="70" style="width:70px">
                               <span id="stateText">
                               <asp:TextBox ID="c_address_state" runat="server" readonly="true" CssClass="infaceText" Width="30" MaxLength="2" ></asp:TextBox>
                               </span>  
                               </td></tr>
                             </table>
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" ></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                               <asp:TextBox ID="c_mailing_address_city" runat="server" readonly="true" CssClass="infaceText" Width="210" MaxLength="19" ></asp:TextBox>
                               &nbsp;&nbsp;&nbsp;
                               <asp:TextBox ID="c_mailing_address_state" runat="server" readonly="true" CssClass="infaceText" Width="30" MaxLength="2" ></asp:TextBox>   
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_address_zip" runat="server" Text="Zip/Mail Code:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300" id="zipCodeText">
                                <asp:TextBox ID="c_address_zip" runat="server" readonly="true" CssClass="infaceText" Width="80" MaxLength=10 ></asp:TextBox>
                                <asp:DropDownList ID="c_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="120" CssClass="infaceDropRead" Enabled="false" OnChange="DataChanged()" >
                                </asp:DropDownList>                                  
                            </td>
                            <td style="width: 183px" align="right" width="183" class="td_label" ></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mailing_address_zip" runat="server" readonly="true" CssClass="infaceText" Width="80" MaxLength=10></asp:TextBox>
                                <asp:DropDownList ID="c_mailing_mail_code" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                    Width="120" CssClass="infaceDropRead" Enabled="false" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label"  style="width: 210px">
                                <b><asp:Label ID="l_c_physical_county" runat="server" Text="Physical County:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300" id="countryText">
                                <asp:DropDownList ID="c_physical_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                         Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td colspan=3></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" class="td_label"  style="width: 183px">
                                <b><asp:Label ID="l_c_legal_county" runat="server" Text="Legal County:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300" >
                                <asp:DropDownList ID="c_legal_county" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                         Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="center" width="210">
                                <input type="button" value="Add/Edit Address" style="width:150px" ID="countryhist" class="buttonbluestyle" runat="server" 
                                       OnClick="javascript:LocList_click();" />
                            </td>
                            <td colspan=2>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_1_dup" runat="server" Text="Legal Status 1:"></asp:Label></b>
                            </td>
                            <td  style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_legal_status_1_dup" runat="server" DataValueField="tb_entry_name" DataTextField="fullentry"
                                     Width="235" OnClick="DataChanged();" CssClass="infaceDropRead" Enabled="false">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_date_1_dup" runat="server" Text="Legal Status Date 1:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:Label ID="c_legal_status_date_1_dup" runat="server" CssClass="infaceText" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common" style="display:none">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_2_dup" runat="server" Text="Legal Status 2:"></asp:Label></b>
                            </td>
                            <td  style="width: 5px">
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_legal_status_2_dup" runat="server" DataValueField="tb_entry_name" DataTextField="fullentry"
                                     Width="235" OnChange="DataChanged()" CssClass="infaceDropRead" Enabled="false">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_legal_status_date_2_dup" runat="server" Text="Legal Status Date 2:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:Label ID="c_legal_status_date_2_dup" runat="server" CssClass="infaceText" Text=""></asp:Label>
                            </td>
                        </tr>                                    
                    </table>
                </div>
                <div id="Consumer_LF" style="display: none">
                  <div id="Consumer_LF_1">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <font color="#3366ff"><b>Financial</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common" align="left">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:210px">
                                            <b><asp:Label ID="l_c_wages" runat="server" Text="Gross Monthly Earnings:" Width="210"></asp:Label></b>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" align="left" width="300px">
                                            <asp:TextBox ID="c_wages" runat="server" CssClass="inface" MaxLength="50" Width="300px"></asp:TextBox>
                                        </td>
                                        <td width="20" >
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                    <tr style="height:5px;">
                                        <td colspan=5>
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="right"class="td_label" style="width:210px">
                                            <b><asp:Label ID="l_c_pandi" runat="server" Text="P & I Balance:"></asp:Label></b>
                                        </td>
                                        <td  style="width: 5px">
                                        </td>
                                        <td width="300">
                                            <table align="left" cellspacing="0" cellpadding="0" border="0" width="100%">
                                                <tr class="tr_common">
                                                    <td align="left" style="width: 120px">
                                                        <asp:TextBox ID="c_pandi" runat="server" CssClass="inface" MaxLength="50" Width="120px"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 10px"></td>
                                                    <td style="width: 60px" align="right" width="60" class="td_label" >
                                                        <b><asp:Label ID="l_c_pandiDate" runat="server" Text="Date:"></asp:Label></b>
                                                    </td>
                                                    <td  style="width: 5px"></td>
                                                    <td class="td_unline" align="right">
                                                        <asp:TextBox ID="c_pandiDate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                                            CssClass="inface" Width="95"></asp:TextBox>
                                                        <asp:CompareValidator ControlToValidate="c_pandiDate" Operator="DataTypeCheck" Type="Date" 
                                                            Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="pandi_dt"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>                       
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td>
                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic_agency_1" runat="server" Text="Other Cash Resource:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300px">
                                                        <asp:DropDownList ID="c_generic_agency_1" runat="server" Width="305" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                 OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td valign="top" align="left">
                                                        <asp:Image ID="btn_Addagency" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Other Agency" onclick="displayOtherAgency();" />
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic1amount" runat="server" Text="Amount:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_generic1amount" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic1Freq" runat="server" Text="Frequency:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_generic1Freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>
                                            <table id="tab_agency2" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic_agency_2" runat="server" Text="Other Cash Resource:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_generic_agency_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic2amount" runat="server" Text="Amount:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_generic2amount" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic2Freq" runat="server" Text="Frequency:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_generic2Freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>
                                            <table id="tab_agency3" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic_agency_3" runat="server" Text="Other Cash Resource:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_generic_agency_3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic3amount" runat="server" Text="Amount:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_generic3amount" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_generic3Freq" runat="server" Text="Frequency:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_generic3Freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center">
                                <font color="#3366ff"><b>Benefits</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_ssn" runat="server" Text="Social Security Number:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td width="300">
                                        <table align="left" cellspacing="0" cellpadding="0" border="0">
                                           <tr>
                                             <td align="left" class="td_unline" width="35px">
                                                <asp:TextBox ID="c_ssn_1" runat="server" CssClass="inface" MaxLength="3" Width="35" 
                                                onKeyup="autotab(this, document.ConsumerInfo.c_ssn_2);"></asp:TextBox>
                                             </td>
                                             <td align="center" width="15px">-</td>
                                             <td class="td_unline" width="30px">
                                                <asp:TextBox ID="c_ssn_2" runat="server" CssClass="inface" MaxLength="2" Width="30"
                                                onKeyup="autotab(this, document.ConsumerInfo.c_ssn_3);"></asp:TextBox>
                                             </td>
                                             <td align="center" width="10px">-</td>
                                             <td class="td_unline" width="45px">
                                                <asp:TextBox ID="c_ssn_3" runat="server" CssClass="inface" MaxLength="4" Width="45"></asp:TextBox>
                                             </td>
                                           </tr>
                                        </table>  
                                    </td>
                                    <td style="width: 60px" align="right" width="60" class="td_label" >
                                        <b><asp:Label ID="l_CCS" runat="server" Text="CCS:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td align="left" width="100">
                                        <asp:DropDownList ID="CCS" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="105" OnChange="DataChanged()" >
                                                <asp:ListItem Value=""></asp:ListItem>
                                                <asp:ListItem Value="Y">Yes</asp:ListItem>
                                                <asp:ListItem Value="N">No</asp:ListItem>
                                                <asp:ListItem Value="X">N/A</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td  style="width: 20px">
                                    </td>
                                    <td style="width: 30px" align="right" width="30" class="td_label" >
                                        <b><asp:Label ID="l_CCS_Num" runat="server" Text="#:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td class="td_unline" align="left" width="300">
                                        <asp:TextBox ID="CCS_Num" runat="server" CssClass="inface" MaxLength="20" Width="300"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td>
                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_ss1" runat="server" Text="Cash Benefit:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_ss1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td valign="top" align="left">
                                                        <asp:Image ID="btn_AddBenefit" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Other Benefit" onclick="displayOtherBenefits();" />
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_ss1amount" runat="server" Text="Amount:"></asp:Label></b>
                                                    </td>
                                                    <td  style="width: 5px">
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_ss1amount" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_ss1Freq" runat="server" Text="Frequency:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_ss1Freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_payee_indicator" runat="server" Text="Representative Payee:"></asp:Label></b>
                                                    </td>
                                                    <td  style="width: 5px">
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_payee_indicator" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_payee_zip" runat="server" Text="Payee Code:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_payee_zip"
                                                              runat="server"  DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="305" OnClick="DataChanged();payeezip_click();" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>
                                            <table id="tab_Benefit2" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_ss2" runat="server" Text="Cash Benefit:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_ss2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_ss2amount" runat="server" Text="Amount:"></asp:Label></b>
                                                    </td>
                                                    <td  style="width: 5px">
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_ss2amount" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_ss2Freq" runat="server" Text="Frequency:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_ss2Freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                                  Width="305" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_payee_indicator2" runat="server" Text="Representative Payee:"></asp:Label></b>
                                                    </td>
                                                    <td  style="width: 5px">
                                                    </td>
                                                    <td class="td_unline" align="left" width="300">
                                                        <asp:TextBox ID="c_payee_indicator2" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                                        <b><asp:Label ID="l_c_payee_zip2" runat="server" Text="Payee Code:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300">
                                                        <asp:DropDownList ID="c_payee_zip2" 
                                                              runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="305" OnClick="DataChanged();payeezip2_click();" >
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_medi_cal" runat="server" Text="Medi-Cal Number:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                            <asp:TextBox ID="c_medi_cal" runat="server" CssClass="inface" MaxLength="17" Width="300"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_bic_number" runat="server" Text="BIC Number:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                            <asp:TextBox ID="c_bic_number" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                    </td>
                                    <td valign="top" align="left">
                                        <asp:Image ID="btnBICRpt" runat="server" Height="25px" Width="25px" ImageUrl="../img/reports.ico" ToolTip="Report" />
                                    </td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_medical_type" runat="server" Text="Type of Medi-Cal:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td align="left" width="300">
                                        <asp:DropDownList ID="c_medical_type" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="305" OnChange="DataChanged()" >
                                        </asp:DropDownList>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_medicare_number" runat="server" Text="Medicare Number:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                            <asp:TextBox ID="c_medicare_number" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_otherinsurance1" runat="server" Text="Other Health Insurance:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td align="left"  width="300">
                                        <asp:DropDownList ID="c_otherinsurance1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  Width="305" OnChange="DataChanged()" >
                                        </asp:DropDownList>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                <tr class="tr_common">
                                    <td style="width: 210px" align="right" width="210" class="td_label" >
                                        <b><asp:Label ID="l_c_policy" runat="server" Text="Policy #:"></asp:Label></b>
                                    </td>
                                    <td  style="width: 5px">
                                    </td>
                                    <td class="td_unline" align="left" style="width: 300px">
                                            <asp:TextBox ID="c_policy" runat="server" CssClass="inface" MaxLength="50" Width="300"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td style="width:auto"></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>
                    </table>
                 </div>
                 <div id="Consumer_LF_2" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="center" colspan="3">
                                <font color="#3366ff"><b>Health Benefits</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="8">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left"  style="width:48%">
                                <b>Primary Insurance</b>
                            </td>
                            <td style="width:4%">&nbsp;</td>
                            <td align="left" style="width:48%" >
                                <b>Secondary Insurance</b>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" style="width:48%">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b><asp:Checkbox ID="primary_med" runat="server" Text="Medi-Cal:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td align="left" width="200px">
                                            <asp:DropDownList ID="primary_medi_cal" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  Width="200px" OnChange="DataChanged()" >
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                    <tr><td height="5"></td></tr> 
                                    <tr class="tr_common">
                                        <td class="td_label" colspan="3" style="width:150px">
						                    <b><asp:Checkbox ID="primary_medicare" runat="server" Text="MediCare:"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_partA" runat="server" Text="Part A Start Date:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td class="td_unline" style="width:120px">
							                <asp:textbox id="primary_partA_time" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_partB" runat="server" Text="Part B Start Date:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td class="td_unline" style="width:120px">
							                <asp:textbox id="primary_partB_time" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_partCD" runat="server" Text="Part C/D Provider:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="primary_partCD_provider" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_thicksepline" colspan="3">
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label" colspan="3" style="width:150px">
						                    <b><asp:Checkbox ID="primary_otherinsurance" runat="server" Text="Other Insurance:"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_blueshield" runat="server" Text="Blue Shield"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_healthyfamilies" runat="server" Text="Healthy Families"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_kaiser" runat="server" Text="Kaiser"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_pacificare" runat="server" Text="Pacific Care"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_tricare" runat="server" Text="Tricare"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="primary_champus" runat="server" Text="Champus"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width:4%">&nbsp;</td>
                            <td align="left" style="width:48%" >
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b><asp:Checkbox ID="secondary_med" runat="server" Text="Medi-Cal:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td align="left" width="200px">
                                            <asp:DropDownList ID="secondary_medi_cal" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  Width="200px" OnChange="DataChanged()" >
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                    <tr><td height="5"></td></tr> 
                                    <tr class="tr_common">
                                        <td class="td_label" colspan="3" style="width:150px">
						                    <b><asp:Checkbox ID="secondary_medicare" runat="server" Text="MediCare:"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_partA" runat="server" Text="Part A Start Date:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td class="td_unline" style="width:120px">
							                <asp:textbox id="secondary_partA_time" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_partB" runat="server" Text="Part B Start Date:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td class="td_unline" style="width:120px">
							                <asp:textbox id="secondary_partB_time" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_partCD" runat="server" Text="Part C/D Provider:"></asp:Checkbox></b>						   						    
						                </td>
                                        <td height="20" width="5"></td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="secondary_partCD_provider" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_thicksepline" colspan="3">
                                        </td>
                                    </tr>
                                    <tr style="height:5px">
                                        <td colspan="3">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td class="td_label" colspan="3" style="width:150px">
						                    <b><asp:Checkbox ID="secondary_otherinsurance" runat="server" Text="Other Insurance:"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_blueshield" runat="server" Text="Blue Shield"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_healthyfamilies" runat="server" Text="Healthy Families"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_kaiser" runat="server" Text="Kaiser"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_pacificare" runat="server" Text="Pacific Care"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_tricare" runat="server" Text="Tricare"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                    <tr><td height="5"></td></tr>
                                    <tr class="tr_common">
                                        <td class="td_label" style="width:150px" colspan="3">
						                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Checkbox ID="secondary_champus" runat="server" Text="Champus"></asp:Checkbox></b>						   						    
						                </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                 </div>
                 <div id="Consumer_LF_3" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="center">
                                <font color="#3366ff"><b>Other Benefits</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common" align="left">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:250px">
                                            <b><asp:Label ID="l_c_ihss" runat="server" Text="In Home Supported Services (IHSS):"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="300" >
                                            <asp:DropDownList ID="c_ihss" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="305" OnChange="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" valign="top" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="l_ihss_comment" runat="server" Text="If no, please explain:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="height: 60px" valign="top">
                                            <asp:TextBox ID="ihss_comment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell1" ControlIdsToCheck="ihss_comment" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                        </td>   
                                    </tr>
                                </table>
                            </td>
                        </tr>
                 <tr><td><table id="otherbene_1" class="table_inside" runat="server">     
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="l_account" runat="server" Text="Account #:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="account" CssClass="inface" runat="server" Width="300px" MaxLength="30"></asp:TextBox>
                                        </td>  
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td> 
                                    </tr>
                                </table>
                            </td>
                        </tr>
                 </table></td></tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="l_c_ihss_hrs" runat="server" Text="IHSS Hours:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="70px">
                                            <asp:TextBox ID="c_ihss_hrs" CssClass="inface" runat="server" Width="70px" MaxLength="5"></asp:TextBox>
                                        </td>  
                                        <td style="width:20px"></td> 
                                        <td align="right" class="td_label"  style="width: 100px" id="otherbene_3" runat="server">
                                            <b><asp:Label ID="l_reviewdate" runat="server" Text="Review Date:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" style="width:100px" id="otherbene_4" runat="server">
							                <asp:textbox id="reviewdate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                </td>
                                        <td style="width:30px"></td>  
                                        <td style="width:20px"></td> 
                                        <td align="right" class="td_label"  style="width: 200px" id="otherbene_5" runat="server">
                                            <b><asp:Label ID="l_spec_surpervision" runat="server" Text="Protective Supervision:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="80px" id="otherbene_6" runat="server">
                                            <asp:DropDownList ID="spec_surpervision" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  Width="70px" OnChange="DataChanged()" >
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                 <tr><td><table id="otherbene_2" class="table_inside" runat="server">      
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common" align="left">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:250px">
                                            <b><asp:Label ID="l_ihss_relationship" runat="server" Text="IHSS provider relationship:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="300" >
                                            <asp:DropDownList ID="ihss_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="305" OnChange="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width:30px" valign="top" align="left">
                                            <asp:Image ID="btn_AddihssProv" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" 
                                            ToolTip="Add Other Provider" onclick="displayOtherihssProv();" />
                                        </td>
                                        <td style="width:20px"></td> 
                                        <td align="right" class="td_label"  style="width: 180px">
                                            <b><asp:Label ID="Label42" runat="server" Text="Protective Supervision Hours:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" style="width:120px">
							                <asp:textbox id="spec_surpervision_hrs" runat="server" CssClass="inface" MaxLength="10"></asp:textbox>
						                </td> 
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table id="tab_ihssProv2" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                    <tr style="height:5px;">
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:250px">
                                            <b><asp:Label ID="l_ihss_relationship2" runat="server" Text="IHSS provider relationship:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="300" >
                                            <asp:DropDownList ID="ihss_relationship2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="305" OnChange="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table id="tab_ihssProv3" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                    <tr style="height:5px;">
                                        <td colspan="4">
                                        </td>
                                    </tr>
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:250px">
                                            <b><asp:Label ID="l_ihss_relationship3" runat="server" Text="IHSS provider relationship:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="300" >
                                            <asp:DropDownList ID="ihss_relationship3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="305" OnChange="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="l_housing_auth" runat="server" Text="Housing Authority:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="housing_auth" CssClass="inface" runat="server" Width="300px" MaxLength="30"></asp:TextBox>
                                        </td>  
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td> 
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="l_hud_voucher" runat="server" Text="HUD Voucher:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="hud_voucher" CssClass="inface" runat="server" Width="300px" MaxLength="30"></asp:TextBox>
                                        </td>  
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td> 
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common" align="left">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common" align="left">
                                        <td align="left">
                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width:250px">
                                                        <b><asp:Label ID="l_othersupport_1" runat="server" Text="Other Supports:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="right" width="300" >
                                                        <asp:DropDownList ID="othersupport_1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnChange="DataChanged()" Visible=false>
                                                        </asp:DropDownList>
                                                        <asp:Image ID="btn_othersupport" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Other Support" onclick="displayOtherSupport2();" />
                                                    </td>
                                                    <td style="width:auto"></td> 
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td colspan=4>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_unline" colspan="3" align="left">
                                                        <asp:textbox id="othersupport_1_txt" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" 
                                                             width="95%" height="60" MaxLength=250></asp:textbox>
                                                    </td>  
                                                    <td></td> 
                                                </tr>
                                            </table>
                                        </td>
                                        
                                        <td  align="left" style="width:auto">
                                            <table class="table_common" cellspacing="0" cellpadding="0" id="othersupport2_tab" style="display:none">
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width:250px">
                                                        <b><asp:Label ID="l_othersupport_2" runat="server" Text="Other Supports:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="300" >
                                                        <asp:DropDownList ID="othersupport_2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                            CssClass="infaceDrop" OnChange="DataChanged()" Visible=false>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="width:auto"></td> 
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td colspan=4>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td class="td_unline" colspan="3" align="left">
				                                         <asp:textbox id="othersupport_2_txt" textmode=MultiLine Wrap=true  BorderStyle=Solid runat="server" 
                                                             width="95%" height="60" MaxLength=250></asp:textbox>
                                                    </td>        
                                                    <td></td>                                              
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center">
                                <font color="#3366ff"><b>Burial/Trusts</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="Label20" runat="server" Text="Advanced Directive given:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="80px">
                                            <asp:DropDownList ID="given" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  Width="105px" OnChange="DataChanged()" >
                                            </asp:DropDownList>
                                        </td> 
                                        <td style="width:20px"></td> 
                                        <td align="right" class="td_label"  style="width: 200px">
                                            <b><asp:Label ID="Label22" runat="server" Text="End of life plan developed:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="80px">
                                            <asp:DropDownList ID="lifeplan_developed" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                  Width="105px" OnChange="DataChanged()" >
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common" align="left">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common" align="left">
                                        <td align="left">
                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label21" runat="server" Text="Burial Cremation Plan:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="200">
                                                        <asp:TextBox ID="burial_plan1" CssClass="inface" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                    </td>  
                                                    <td valign="top" align="left">
                                                        <asp:Image ID="btn_burialplan" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add Other Plan" onclick="displayOtherPlan();" />
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label24" runat="server" Text="Date Established:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" style="width:100px">
							                            <asp:textbox id="establisheddate1" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                            </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label25" runat="server" Text="Amount of Plan:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="200">
                                                        <asp:TextBox ID="plan_amount1" CssClass="inface" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label26" runat="server" Text="Burial Arrangements Complete:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="80px">
                                                        <asp:DropDownList ID="burial_arrangement1" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="105px" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td> 
                                                </tr>
                                            </table>
                                        </td>
                                        <td align="left" >
                                            <table id="plan2" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label23" runat="server" Text="Burial Cremation Plan:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="200">
                                                        <asp:TextBox ID="burial_plan2" CssClass="inface" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                    </td> 
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label27" runat="server" Text="Date Established:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" style="width:100px">
							                            <asp:textbox id="establisheddate2" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                            </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label28" runat="server" Text="Amount of Plan:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="200">
                                                        <asp:TextBox ID="plan_amount2" CssClass="inface" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label29" runat="server" Text="Burial Arrangements Complete:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="80px">
                                                        <asp:DropDownList ID="burial_arrangement2" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="105px" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td> 
                                                </tr>
                                            </table>
                                        </td>
                                        <td align="left">
                                            <table id="plan3" style="display:none" class="table_common" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label30" runat="server" Text="Burial Cremation Plan:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="200">
                                                        <asp:TextBox ID="burial_plan3" CssClass="inface" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label31" runat="server" Text="Date Established:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" style="width:100px">
							                            <asp:textbox id="establisheddate3" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                            </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label32" runat="server" Text="Amount of Plan:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td class="td_unline" align="left" width="200">
                                                        <asp:TextBox ID="plan_amount3" CssClass="inface" runat="server" Width="200px" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td style="width:auto"></td>
                                                </tr>
                                                <tr style="height:5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label"  style="width: 250px">
                                                        <b><asp:Label ID="Label33" runat="server" Text="Burial Arrangements Complete:"></asp:Label></b>
                                                    </td>
                                                    <td width="5" >
                                                    </td>
                                                    <td align="left" width="80px">
                                                        <asp:DropDownList ID="burial_arrangement3" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                              Width="105px" OnChange="DataChanged()" >
                                                        </asp:DropDownList>
                                                    </td> 
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="Label34" runat="server" Text="Name of Trust:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="trustname" CssClass="inface" runat="server" Width="300px" MaxLength="50"></asp:TextBox>
                                        </td>  
                                        <td valign="top" align="left">
                                            <asp:Image ID="btn_pdf" runat="server" Height="25px" Width="25px" ImageUrl="../img/reports.ico" ToolTip="pdf" />
                                        </td>
                                        <td style="width:auto"></td> 
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                         <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:250px">
                                            <b><asp:Label ID="Label35" runat="server" Text="Type of Trust:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="200" >
                                            <asp:DropDownList ID="trusttype" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="305px" OnChange="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr> 
                                 </table>
                            </td>
                        </tr> 
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="Label36" runat="server" Text="Date Established:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" style="width:100px">
							                <asp:textbox id="trustdate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr> 
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="Label37" runat="server" Text="Amount of Trust:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="300">
                                            <asp:TextBox ID="trust_amount" CssClass="inface" runat="server" Width="300px" MaxLength="50"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr> 
                                </table>
                            </td>
                        </tr> 
                        <tr style="height:5px;">
                            <td>
                            </td>
                        </tr>  
                        <tr class="tr_common">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" valign="top" class="td_label"  style="width: 250px">
                                            <b><asp:Label ID="Label38" runat="server" Text="Trustee Name and Contact Information:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td style="height: 60px" valign="top">
                                            <asp:TextBox ID="contactinfo" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                runat="server" Width="99%" Height="60"></asp:TextBox>
                                            <cc1:UltimateSpell ID="UltimateSpell2" ControlIdsToCheck="contactinfo" ShowModal="true"
                                                    runat="server">
                                            </cc1:UltimateSpell>
                                        </td>   
                                    </tr>
                                </table>
                            </td>
                        </tr>
                 </table></td></tr>
                        <tr style="height:20px;">
                            <td>
                            </td>
                        </tr>                  
                    </table>
                 </div>
                 <div id="Consumer_LF_4" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr style="height:10px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="BtnAddSLS" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addSLSRecord();"/>
                            </td>
                            <td align="center">
                                <font color="#3366ff"><b>SLS Assessment Questionnaire List</b></font>
			                </td>
		                </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_SLSList" runat="server" AllowPaging="false" CssClass="grd_body"
					              AutoGenerateColumns="False" AllowSorting="false" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						        <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						        <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:TemplateColumn HeaderText="Edit">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							        </ItemTemplate>
						        </asp:TemplateColumn>
						        <asp:TemplateColumn HeaderText="DELETE">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									        BorderWidth="0"></asp:ImageButton>
							        </ItemTemplate>
						        </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                           <td class="td_thicksepline" colspan="2">
                           </td>
                        </tr>
                        <tr style="height:5px">
                           <td colspan="2">
                           </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_SLS" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                        AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                            
						            <asp:TemplateColumn HeaderText="">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
	                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                        
                                                                <td align="right" class="td_label" style="width: 300px">
                                                                    <asp:Label ID="Label146" runat="server" Text="IPP Date:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" style="width: 120px">
                                                                    <asp:Label ID="sls_ippdate" Width="120" CssClass="infaceText" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "sls_ippdate", "{0:d}") %>'></asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td class="td_label" style="width: 300px">
                                                                    <asp:Label ID="Label5" runat="server" Text="SLS Assessment Questionnaire completed?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="sls_question_completed" Width="120" CssClass="infaceText" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "sls_question_completed_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_label" style="width: 80px"><b>Date:</b></td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" style="width: 100px">
                                                                   <asp:Label ID="sls_question_compdate" runat="server" CssClass="infaceText" width="80" 
                                                                   Text='<%# DataBinder.Eval(Container.DataItem, "sls_question_compdate", "{0:d}") %>'></asp:Label>
                                                                </td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 300px">
                                                                    <asp:Label ID="Label148" runat="server" Text="Provided SLS Services?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="sls_service" runat="server"  Width="120" CssClass="infaceText"  Text='<%# DataBinder.Eval(Container.DataItem, "sls_service_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 300px">
                                                                    <asp:Label ID="Label4" runat="server" Text="IHSS Hours considered?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="sls_ihsshrs_considered"   Width="120" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "sls_ihsshrs_considered_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 300px">
                                                                    <asp:Label ID="Label12" runat="server" Text="#:of IHSS Hours:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" style="width: 120px">
                                                                    <asp:Label ID="sls_ihsshrs" Width="120" CssClass="infaceText" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "sls_ihsshrs") %>'></asp:Label></b>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>  
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                 </div>
                 <div id="Consumer_LF_5" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="BtnAddFCPP" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addFCPPRecord();"/>
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>FCPP List</b></font>
			                </td>
                        </tr>
                        
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_FCPPList" runat="server" AllowPaging="false" CssClass="grd_body"
					              AutoGenerateColumns="False" AllowSorting="false" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						        <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						        <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:TemplateColumn HeaderText="Edit">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							        </ItemTemplate>
						        </asp:TemplateColumn>
						        <asp:TemplateColumn HeaderText="DELETE">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									        BorderWidth="0"></asp:ImageButton>
							        </ItemTemplate>
						        </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                           <td class="td_thicksepline" colspan="2">
                           </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_FCPP" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                        AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
	                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label55" runat="server" Text="IFSP/IPP Date:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left"  style="width: 105px">
                                                                    <asp:Label ID="ippdate" Width="105px" runat="server"  CssClass="infaceText" Text='<%# DataBinder.Eval(Container.DataItem, "ippdate", "{0:d}") %>'></asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label5" runat="server" Text="Did Family provide income documentation?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="income_doc" Width="105px" CssClass="infaceText" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "income_doc_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label56" runat="server" Text="Family Cost Participation Program Assessment Date:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="assessment_date" Text='<%# DataBinder.Eval(Container.DataItem, "assessment_date", "{0:d}") %>' runat="server"
                                                                        CssClass="inface" Width="100"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label3" runat="server" Text="Share of Cost Assessment %:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="cost_share" Width="100" Text='<%# DataBinder.Eval(Container.DataItem, "cost_share") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label4" runat="server" Text="Did Family meet the exception?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="exception" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "exception_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label6" runat="server" Text="Services effected:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="300">
                                                                    <asp:TextBox ID="service_effected" Text='<%# DataBinder.Eval(Container.DataItem, "service_effected") %>' Width="300" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label7" runat="server" Text="Share of POS Hours Family:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="pos_share" Text='<%# DataBinder.Eval(Container.DataItem, "pos_share") %>' Width="100" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label48" runat="server" Text="Share of POS Hours RC:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="pos_share_rc" Text='<%# DataBinder.Eval(Container.DataItem, "pos_share_rc") %>' Width="100" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label8" runat="server" Text="Family Size:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="familysize" Width="100" Text='<%# DataBinder.Eval(Container.DataItem, "familysize") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label9" runat="server" Text="Date Letter Mailed to family:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="maileddate1" Text='<%# DataBinder.Eval(Container.DataItem, "maileddate1", "{0:d}") %>'  runat="server"
                                                                        CssClass="inface" Width="100"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label57" runat="server" Text="Next FCPP due:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left"  style="width: 105px">
                                                                    <asp:Label ID="next_fcpp" Width="105px" Text='<%# DataBinder.Eval(Container.DataItem, "next_fcpp", "{0:d}") %>' runat="server"  CssClass="infaceText"></asp:Label>
                                                                </td>

                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>  
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="td_thicksepline" colspan="2">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="BtnAddAFPF" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addAFPFRecord();"/>
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>AFPF List</b></font>
			                </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_AFPFList" runat="server" AllowPaging="false" CssClass="grd_body"
					              AutoGenerateColumns="False" AllowSorting="false" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						        <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						        <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:TemplateColumn HeaderText="Edit">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							        </ItemTemplate>
						        </asp:TemplateColumn>
						        <asp:TemplateColumn HeaderText="DELETE">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									        BorderWidth="0"></asp:ImageButton>
							        </ItemTemplate>
						        </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                           <td class="td_thicksepline" colspan="2">
                           </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_AFPF" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                        AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
	                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label63" runat="server" Text="IFSP/IPP Date:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left"  style="width: 105px">
                                                                    <asp:Label ID="ippdate" Width="105px" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ippdate", "{0:d}") %>' CssClass="infaceText"></asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label5" runat="server" Text="Did Family provide income documentation?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="income_doc" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "income_doc_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label70" runat="server" Text="Annual Family Program Fee Assessment Date:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="assessment_date" Text='<%# DataBinder.Eval(Container.DataItem, "assessment_date", "{0:d}") %>' runat="server"
                                                                        CssClass="inface" Width="100"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label3" runat="server" Text="Fee Amount:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" width="100">
                                                                    <asp:TextBox ID="feeamount" Width="100" Text='<%# DataBinder.Eval(Container.DataItem, "feeamount") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label4" runat="server" Text="Did Family meet the exception?"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="exception" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "exception_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label7" runat="server" Text="Family paid Fee to DDS"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left" width="100">
                                                                    <asp:Label ID="pay_DDS" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "pay_DDS_desc").ToString().TrimEnd()%>'>
                                                                    </asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label9" runat="server" Text="Date 1st Notice Letter Mailed to family:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" style="width: 105px">
                                                                    <asp:TextBox ID="maileddate1" Text='<%# DataBinder.Eval(Container.DataItem, "maileddate1", "{0:d}") %>'  runat="server"
                                                                        CssClass="inface" Width="105px"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label6" runat="server" Text="Date 2nd Notice Letter Mailed to family:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td class="td_unline" align="left" style="width: 105px">
                                                                    <asp:TextBox ID="maileddate2" Text='<%# DataBinder.Eval(Container.DataItem, "maileddate2", "{0:d}") %>' runat="server"
                                                                        CssClass="inface" Width="105px"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td>
                                                        <table class="table_common" cellspacing="0" cellpadding="0">
                                                            <tr class="tr_common">
                                                                <td align="right" class="td_label" style="width: 400px">
                                                                    <asp:Label ID="Label71" runat="server" Text="Next AFPF due:"></asp:Label>
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td align="left"  style="width: 105px">
                                                                    <asp:Label ID="next_fcpp" Width="105px" Text='<%# DataBinder.Eval(Container.DataItem, "next_fcpp", "{0:d}") %>' runat="server" CssClass="infaceText"></asp:Label>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                                <td style="width: auto">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>

                                                <tr style="height: 5px;">
                                                    <td>
                                                    </td>
                                                </tr>
                                            </table>  
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                 </div>
                 <div id="Consumer_LF_6" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
	                        <td  align="left" style="width:30px;height:25">
                                <asp:Image ID="BtnAddCoPay" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addCoPayRecord();"/>
                            </td>
                            <td align="center" style="width:800px">
			                    <font color="#3366ff"><b>Co-Payment/Co-Insurance/Deductible Reimbursement List</b></font>
			                </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_CoPayList" runat="server" AllowPaging="false" CssClass="grd_body"
					              AutoGenerateColumns="False" AllowSorting="false" >
					            <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					            <ItemStyle CssClass="grd_item"></ItemStyle>
					            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					            <Columns>
					            <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						        <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						        <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
						        <asp:TemplateColumn HeaderText="Edit">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							        </ItemTemplate>
						        </asp:TemplateColumn>
						        <asp:TemplateColumn HeaderText="DELETE">
							        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							        <ItemTemplate>
								        <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									        BorderWidth="0"></asp:ImageButton>
							        </ItemTemplate>
						        </asp:TemplateColumn>
					            </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                           <td class="td_thicksepline" colspan="2">
                           </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="2">
                                <asp:datagrid id="dg_CoPay" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                        AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
	                                        <table class="table_common" cellSpacing="0" cellPadding="0" align="center" border="0" style="width: 98%">
                                                <tr style="height: 5px;">
                                                    <td colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label1" runat="server" Text="Insurance Company Name:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="Insurancename" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "Insurancename") %>' runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label10" runat="server" Text="Service or Item requested:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="ServiceItem" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "ServiceItem") %>' runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label11" runat="server" Text="Individual Out of Pocket Maximum (OOPM):"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                           <asp:TextBox ID="OopmAmount" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "OopmAmount") %>' runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label5" runat="server" Text="Co-Payment:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td align="left" width="400">
                                                        <asp:Label ID="copay" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "copay_desc").ToString().TrimEnd()%>'>
                                                        </asp:Label>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label2" runat="server" Text="Dollar Amount per Copayment:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="Amount" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "Amount") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label3" runat="server" Text="Co-payment Frequency:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="Frequency" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "Frequency") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label12" runat="server" Text="Co-Insurance?"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td align="left" width="400">
                                                        <asp:Label ID="coins" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "coins_desc").ToString().TrimEnd()%>'>
                                                        </asp:Label>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label13" runat="server" Text="Co-Insurance Percentage:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="coins_perc" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "coins_perc") %>' runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label14" runat="server" Text="Service or Item Actual Cost:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="ItemCost" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "ItemCost") %>' runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label15" runat="server" Text="Co-Insurance Cost:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="InsCost" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "InsCost") %>' runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label16" runat="server" Text="Deductible?"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:Label ID="deductible" Width="105px" CssClass="infaceText" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "deductible_desc").ToString().TrimEnd()%>'>
                                                        </asp:Label>                                                    
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label17" runat="server" Text="Individual Deductible Amount:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                         <asp:TextBox ID="deductAmount" Width="400" Text='<%# DataBinder.Eval(Container.DataItem, "deductAmount").ToString().TrimEnd()%>' runat="server" CssClass="inface" MaxLength="10"></asp:TextBox>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td colspan="3" class="td_label">      
                                                        <asp:Radiobutton ID="purchase_yes" groupname="purchase" runat="server" Font-Bold=true Text="Purchase Reimbursement" 
                                                        Checked='<%# (DataBinder.Eval(Container.DataItem, "purchase").ToString().TrimEnd() =="Y") ? true : false %>'></asp:Radiobutton>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Radiobutton ID="purchase_no" groupname="purchase" runat="server" Font-Bold=true Text="Vendor" 
                                                        Checked='<%# (DataBinder.Eval(Container.DataItem, "purchase").ToString().TrimEnd() =="N") ? true : false %>'></asp:Radiobutton>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label4" runat="server" Text="Reimbursement/Vendor Number:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td align="left" width="400">
                                                        <asp:Label ID="Label44" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Vendor_desc").ToString().TrimEnd()%>'>
                                                        </asp:Label>
                                                    </td>
                                                    <td style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label6" runat="server" Text="Income/Extraordinary Event Exemption:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td align="left" width="400">
                                                        <asp:Label ID="Label45" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Exemption_desc").ToString().TrimEnd()%>'>
                                                        </asp:Label>
                                                    </td>
                                                    <td  style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label7" runat="server" Text="Exemption Date:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="CpDate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                                            CssClass="inface" Width="100" Text='<%# DataBinder.Eval(Container.DataItem, "CpDate", "{0:d}") %>'></asp:TextBox>
                                                    </td>
                                                    <td style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label8" runat="server" Text="Co-payment/Co-insurance/Deductible Start Date:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="StartDate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                                            CssClass="inface" Width="100" Text='<%# DataBinder.Eval(Container.DataItem, "StartDate", "{0:d}") %>'></asp:TextBox>
                                                    </td>
                                                    <td style="width: 40px"></td>
                                                </tr>
                                                <tr style="height: 5px;">
                                                    <td  colspan="4">
                                                    </td>
                                                </tr>
                                                <tr class="tr_common">
                                                    <td align="right" class="td_label" style="width: 400px">
                                                        <b>
                                                            <asp:Label ID="Label9" runat="server" Text="Co-payment/Co-insurance/Deductible End Date:"></asp:Label></b>
                                                    </td>
                                                    <td width="5">
                                                    </td>
                                                    <td class="td_unline" align="left" width="400">
                                                        <asp:TextBox ID="EndDate" onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                                            CssClass="inface" Width="100" Text='<%# DataBinder.Eval(Container.DataItem, "EndDate", "{0:d}") %>'></asp:TextBox>
                                                    </td>
                                                    <td style="width: 40px"></td>
                                                </tr>
                                            </table>  
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                </asp:datagrid>
                            </td>
                        </tr>
                    </table>
                 </div>
                </div>
                <div id="Consumer_AF" style="display: none">
                    <div id="Consumer_AF_1" runat="server">
                        <table class="table_common" cellspacing="0" cellpadding="0">
                            <tr class="tr_common">
                                <td align="center">
                                    <font color="#3366ff"><b>Confidential Info</b></font>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 700px">
                                                <b>
                                                    <asp:Label ID="Label121" runat="server" Text="Is this consumer banned from SCLARC's premises?"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" width="105">
                                                <asp:DropDownList ID="c_offsite_location" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="105" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td align="left" class="td_label" style="width: 700px">
                                                <b>
                                                    <asp:Label ID="Label77" runat="server" Text="Does consumer/parent/legal guardian/conservator request that SC not share information? Are there any special legal circumstances?"></asp:Label></b>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" width="105">
                                                <asp:DropDownList ID="request_not_share" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="105" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: auto">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td style="width: 250px" align="left" class="td_label" >
                                                <b><asp:Label ID="Label76" runat="server" Text="Provide detailed Comments:"></asp:Label></b>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="2" style="height: 40px" valign="top">
                                                <asp:TextBox ID="comments" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                                <cc1:UltimateSpell ID="UltimateSpell3" ControlIdsToCheck="comments" ShowModal="true"
                                                    runat="server">
                                                </cc1:UltimateSpell>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Consumer_AF_2" style="display: none" runat="server">
                        <table class="table_inside" cellspacing="0" cellpadding="0">
                            <tr class="tr_common">
                                <td align="center" colspan="3">
                                    <font color="#3366ff"><b>Legal Info</b></font>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td class="td_label" style="width:49%">
						            <b><asp:Checkbox ID="non_conserved" onclick="displayLegalInfo();" runat="server" Text="Non-Conserved/No Legal Guardian">
                                    </asp:Checkbox></b>						   						    
						        </td>
                                <td></td>
                                <td align="left" style="width:49%" >
                                   &nbsp;
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                       <td style="width: 210px" align="right" width="210" class="td_label" >
                                          <b><asp:Label ID="l_c_legal_status_1" runat="server" Text="Legal Status 1:"></asp:Label></b>
                                       </td>
                                       <td  style="width: 5px">
                                       </td>
                                       <td align="left" width="300">
                                          <asp:DropDownList ID="c_legal_status_1" runat="server" DataValueField="tb_entry_name" DataTextField="fullentry"
                                               Width="235" OnClick="LegalStatusChg();" >
                                          </asp:DropDownList>
                                       </td>
                                       <td align="right" width="210" class="td_label" >
                                          <b><asp:Label ID="l_c_legal_status_date_1" runat="server" Text="Legal Status Date 1:"></asp:Label></b>
                                       </td>
                                       <td width="5" >
                                       </td>
                                       <td class="td_unline" align="left" width="300">
                                          <asp:TextBox ID="c_legal_status_date_1"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                              CssClass="inface" Width="80px"></asp:TextBox>
                                          <asp:CompareValidator ControlToValidate="c_legal_status_date_1" Operator="DataTypeCheck" Type="Date" 
                                              Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="legal_status_1_dt"></asp:CompareValidator>
                                       </td>
                                    </tr>
                                </table>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="3">
                                </td>
                            </tr>
                            <tr id="legalinfo_tab" style="display: none">
                                <td colspan="3">
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                <tr><td colspan="3">
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common" style="display:none">
                                        <td style="width: 210px" align="right" width="210" class="td_label" >
                                            <b><asp:Label ID="l_c_legal_status_2" runat="server" Text="Legal Status 2:"></asp:Label></b>
                                        </td>
                                        <td  style="width: 5px">
                                        </td>
                                        <td align="left" width="300">
                                           <asp:DropDownList ID="c_legal_status_2" runat="server" DataValueField="tb_entry_name" DataTextField="fullentry"
                                              Width="235" OnChange="DataChanged()">
                                           </asp:DropDownList>
                                        </td>
                                        <td align="right" width="210" class="td_label" >
                                           <b><asp:Label ID="l_c_legal_status_date_2" runat="server" Text="Legal Status Date 2:"></asp:Label></b></td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="300">
                                           <asp:TextBox ID="c_legal_status_date_2"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  runat="server"
                                              CssClass="inface" Width="80px"></asp:TextBox>
                                           <asp:CompareValidator ControlToValidate="c_legal_status_date_2" Operator="DataTypeCheck" Type="Date" 
                                              Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="legal_status_2_dt"></asp:CompareValidator>
                                        </td>
                                    </tr>                                    
                                    </table>
                                </td></tr>
                                <tr style="height:5px;">
                                    <td colspan="3">
                                    </td>
                                </tr>
                                <tr class="tr_common">
                                    <td align="left"  style="width:49%">
                                        <b>Conservator</b>
                                    </td>
                                    <td></td>
                                    <td align="left" style="width:49%" >
                                        <b>Guardian</b>
                                    </td>
                                </tr>
                                <tr style="height:5px;">
                                    <td colspan="3">
                                    </td>
                                </tr>
                                <tr> 
                                <td align="left" valign="top" style="width:49%">
                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b><asp:Checkbox ID="cons_pending" runat="server" Text="Pending Conservatorship"></asp:Checkbox></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:210px">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label78" runat="server" Text="Date of ID Team:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td class="td_unline" style="width:300px">
							                    <asp:textbox id="IDTeamdate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);">
                                                </asp:textbox>
						                    </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b><asp:Checkbox ID="conserved" runat="server" Text="Conserved"></asp:Checkbox></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:210px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label81" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td align="left" width="300">
                                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                  <td align="left" width="260">
                                                   <asp:TextBox ID="cons_name1" width="250" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                  </td>
                                                  <td align="left" width="40">
                                                   <asp:Image ID="btn_AddConservator" runat="server" ImageUrl="../img/add.ico" 
                                                      ToolTip="Add Other Conservator" onclick="displayConservator();" />
                                                  </td>
                                                </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:210px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label82" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td align="left" width="300">
                                                <asp:DropDownList ID="cons_relationship1" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:210px">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label79" runat="server" Text="Type of Conservatorship:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td align="left" width="300">
                                                <asp:DropDownList ID="cons_type" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:210px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label80" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td class="td_unline" style="width:300px">
							                    <asp:textbox id="cons_establishdate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label83" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" align="left" colspan="3">
                                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="cons_address1" runat="server" CssClass="inface" Width="450px" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b><asp:Checkbox ID="cons_followup_req" runat="server" Text="Conservatorship follow up required"></asp:Checkbox></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <table id="Conservator2_Tab" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                                     <tr>
                                                        <td colspan="3" class="td_thicksepline">
                                                        </td>
                                                     </tr>
                                                     <tr style="height:5px">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label84" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" align="left" width="300">
                                                            <asp:TextBox ID="cons_name2" runat="server" width="250" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                      <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label85" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                            <asp:DropDownList ID="cons_relationship2" runat="server" DataValueField="tb_entry_name"
                                                                DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px">
						                                   <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label51" runat="server" Text="Type of Conservatorship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                           <asp:DropDownList ID="cons_type2" runat="server" DataValueField="tb_entry_name"
                                                               DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                           </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label52" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" style="width:300px">
							                                <asp:textbox id="cons_establishdate2" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" align="left" colspan="3">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label145" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" colspan="3">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="cons_address2" runat="server" Width="450px" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <table id="Conservator3_Tab" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                                     <tr>
                                                        <td colspan="3" class="td_thicksepline">
                                                        </td>
                                                     </tr>
                                                     <tr style="height:5px">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label87" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" align="left" width="300">
                                                            <asp:TextBox ID="cons_name3" runat="server" width="250" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label88" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                            <asp:DropDownList ID="cons_relationship3" runat="server" DataValueField="tb_entry_name"
                                                                DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px">
						                                   <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label53" runat="server" Text="Type of Conservatorship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                           <asp:DropDownList ID="cons_type3" runat="server" DataValueField="tb_entry_name"
                                                               DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                           </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label54" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" style="width:300px">
							                                <asp:textbox id="cons_establishdate3" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" align="left" colspan="3">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label98" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" colspan="3">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="cons_address3" runat="server" Width="450px" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                           <td colspan="3">
                                           </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <table id="Conservator4_Tab" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                                     <tr>
                                                        <td colspan="3" class="td_thicksepline">
                                                        </td>
                                                     </tr>
                                                     <tr style="height:5px">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label90" runat="server" Text="Name of Conservator:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" align="left" width="300">
                                                            <asp:TextBox ID="cons_name4" runat="server" width="250" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label91" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                            <asp:DropDownList ID="cons_relationship4" runat="server" DataValueField="tb_entry_name"
                                                                DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px">
						                                   <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label62" runat="server" Text="Type of Conservatorship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                           <asp:DropDownList ID="cons_type4" runat="server" DataValueField="tb_entry_name"
                                                               DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                           </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label65" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" style="width:300px">
							                                <asp:textbox id="cons_establishdate4" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" align="left" colspan="3">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label89" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" colspan="3">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="cons_address4" runat="server" Width="450px" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>     
                                <td></td>  
                                <td align="left" valign="top" style="width:49%">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:200px" colspan="3">
						                        <b><asp:Checkbox ID="grd_pending" runat="server" Text="Pending Legal Guardian"></asp:Checkbox></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b><asp:Checkbox ID="guardian" runat="server" Text="Legal Guardian"></asp:Checkbox></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" class="td_thicksepline">
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:200px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label96" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td class="td_unline" align="left" width="300">
                                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                                <tr class="tr_common">
                                                  <td align="left" width="260">
                                                    <asp:TextBox ID="grd_name1" runat="server" width="250" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                  </td>
                                                  <td align="left" width="40">
                                                    <asp:Image ID="btn_AddGuardian" runat="server" ImageUrl="../img/add.ico" 
                                                     ToolTip="Add Other Guardian" onclick="displayGuardian();" />
                                                  </td>
                                                </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:200px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label97" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td align="left" width="300">
                                                <asp:DropDownList ID="grd_relationship1" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height:5px">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:200px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label94" runat="server" Text="Type of Guardian:"></asp:Label></b>						   						    
						                    </td>
                                            <td width="5"></td>
                                            <td align="left" width="300">
                                                <asp:DropDownList ID="grd_type" runat="server" DataValueField="tb_entry_name"
                                                    DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" style="width:200px" align="right">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label95" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                    </td>
                                            <td height="20" width="5"></td>
                                            <td class="td_unline" style="width:300px">
							                    <asp:textbox id="grd_establishdate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label86" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_unline" align="left" colspan="3">
                                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="grd_address1" runat="server" CssClass="inface" Width="450px" MaxLength="50"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td class="td_label" colspan="3">
						                        <b><asp:Checkbox ID="grd_followup_req" runat="server" Text="Guardian follow up required"></asp:Checkbox></b>						   						    
						                    </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <table id="Guardian2_Tab" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                                     <tr>
                                                        <td colspan="3" class="td_thicksepline">
                                                        </td>
                                                     </tr>
                                                     <tr style="height:5px">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:200px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label99" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" align="left" width="300">
                                                            <asp:TextBox ID="grd_name2" runat="server" width="250"  CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:200px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label100" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                            <asp:DropDownList ID="grd_relationship2" runat="server" DataValueField="tb_entry_name"
                                                                DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px">
						                                   <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label68" runat="server" Text="Type of Guardian:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                           <asp:DropDownList ID="grd_type2" runat="server" DataValueField="tb_entry_name"
                                                               DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                           </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label74" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" style="width:300px">
							                                <asp:textbox id="grd_establishdate2" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" align="left" colspan="3">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label92" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" colspan="3">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="grd_address2" runat="server" Width="450px" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <table id="Guardian3_Tab" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                                     <tr>
                                                        <td colspan="3" class="td_thicksepline">
                                                        </td>
                                                     </tr>
                                                     <tr style="height:5px">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:200px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label102" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" align="left" width="300">
                                                            <asp:TextBox ID="grd_name3" runat="server" width="250"  CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:150px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label103" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                            <asp:DropDownList ID="grd_relationship3" runat="server" DataValueField="tb_entry_name"
                                                                DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px">
						                                   <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label107" runat="server" Text="Type of Guardian:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                           <asp:DropDownList ID="grd_type3" runat="server" DataValueField="tb_entry_name"
                                                               DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                           </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label114" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" style="width:300px">
							                                <asp:textbox id="grd_establishdate3" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" align="left" colspan="3">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label101" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" colspan="3">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="grd_address3" runat="server" Width="450px" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr style="height:5px;">
                                            <td colspan="3">
                                            </td>
                                        </tr>
                                        <tr class="tr_common">
                                            <td colspan="3">
                                                <table id="Guardian4_Tab" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                                     <tr>
                                                        <td colspan="3" class="td_thicksepline">
                                                        </td>
                                                     </tr>
                                                     <tr style="height:5px">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:200px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label105" runat="server" Text="Name of Guardian:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" align="left" width="300">
                                                            <asp:TextBox ID="grd_name4" runat="server" width="250"  CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:200px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label106" runat="server" Text="Relationship:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                            <asp:DropDownList ID="grd_relationship4" runat="server" DataValueField="tb_entry_name"
                                                                DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px">
						                                   <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label118" runat="server" Text="Type of Guardian:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td align="left" width="300">
                                                           <asp:DropDownList ID="grd_type4" runat="server" DataValueField="tb_entry_name"
                                                               DataTextField="tb_entry_text" Width="255" OnChange="DataChanged()">
                                                           </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" style="width:210px" align="right">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label120" runat="server" Text="Date Established:"></asp:Label></b>						   						    
						                                </td>
                                                        <td width="5"></td>
                                                        <td class="td_unline" style="width:300px">
							                                <asp:textbox id="grd_establishdate4" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_label" align="left" colspan="3">
						                                    <b>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label104" runat="server" Text="Address(if different from face sheet):"></asp:Label></b>						   						    
						                                </td>
                                                    </tr>
                                                    <tr style="height:5px;">
                                                        <td colspan="3">
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td class="td_unline" align="left" colspan="3">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="grd_address4" runat="server" Width="450px" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                </tr>
                                </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Consumer_AF_3" style="display: none">
                        <table class="table_common" cellspacing="0" cellpadding="0">
                            <tr class="tr_common">
                                <td align="center" colspan="2">
                                    <font color="#3366ff"><b>Judicial Involvement</b></font>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td class="td_label" align="left" style="width:360px">
						                        <b>      
                                                <asp:Radiobutton ID="judicial_inv_no" groupname="judicial_inv" runat="server" Font-Bold=true Text="No Judicial Involvement" Checked=false></asp:Radiobutton>
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:Radiobutton ID="judicial_inv_yes" groupname="judicial_inv" runat="server" Font-Bold=true Text="Judicial Involvement" Checked=false></asp:Radiobutton>
                                                </b>						   						    
						                    </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" align="left">
                            <td align="left">
                                <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="right" class="td_label" style="width:250px">
                                            <b><asp:Label ID="Label93" runat="server" Text="Is Consumer a sex offender?"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="105" >
                                            <asp:DropDownList ID="sex_offender" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                Width="105" OnChange="DataChanged()">
                                            </asp:DropDownList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" align="left">
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td align="right" class="td_label" style="width:250px">
                                                <b><asp:Label ID="Label108" runat="server" Text="If yes, where did consumer register?"></asp:Label></b>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td align="left" width="200" >
                                                <asp:textbox id="registerstation" runat="server" CssClass="inface" maxlength="250"></asp:textbox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" align="left">
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td align="right" class="td_label" style="width:250px">
                                                <b><asp:Label ID="Label109" runat="server" Text="Date of registration:"></asp:Label></b>
                                            </td>
                                            <td width="5"></td>
                                            <td class="td_unline" style="width:100px" colspan="2">
							                    <asp:textbox id="registerdate" runat="server" CssClass="inface" Width="100px" onclick="showcalendar(event, this);" onfocus="showcalendar(event, this);"></asp:textbox>
						                    </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" align="left">
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td align="right" class="td_label" style="width:250px">
                                                <b><asp:Label ID="Label110" runat="server" Text="Does consumer have any strikes?"></asp:Label></b>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td align="left" width="100" >
                                                <asp:DropDownList ID="strikes" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                                    Width="105" OnChange="DataChanged()">
                                                </asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height: 5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common" align="left">
                                <td align="left">
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                        <tr class="tr_common">
                                            <td align="right" class="td_label" style="width:250px">
                                                <b><asp:Label ID="Label111" runat="server" Text="If yes, how many?"></asp:Label></b>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td align="left" width="100" >
                                                <asp:DropDownList ID="strikes_cnt" runat="server"
                                                    Width="105" OnChange="DataChanged()">
                                                    <asp:ListItem Value=""></asp:ListItem>
                                                    <asp:ListItem Value="1">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width:auto"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                                  <tr style="height: 30px;" valign="middle">
	                                    <td  align="left" style="width:30px;height:25">
                                            <asp:Image ID="BtnAddJudical" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addJudicalRecord();"/>
                                        </td>
                                        <td align="center">
			                               <asp:label id="Label58" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">Current Judicial Involvement List</asp:label>
			                            </td>
		                              </tr>
		                            </table>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center">
                                    <asp:datagrid id="dg_JudicialList" runat="server" AllowPaging="false" CssClass="grd_body"
					                  AutoGenerateColumns="False" AllowSorting="false" >
					                <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_item"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						            <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:TemplateColumn HeaderText="Edit">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="DELETE">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									            BorderWidth="0"></asp:ImageButton>
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline">
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td>
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td>
                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                    <tr class="tr_common">
                                        <td align="center">
                                            <asp:datagrid id="dg_Judicial" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                                  AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                            <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                            <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                            <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                            <Columns>
					                            <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						                        <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                                <asp:TemplateColumn HeaderText="">
							                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							                        <ItemTemplate>
	                                                    <table class="table_inside" cellspacing="0" cellpadding="0">
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label59" runat="server" Text="Case Number:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="100">
                                                                                <asp:TextBox ID="casenumber" width="100" Text='<%# DataBinder.Eval(Container.DataItem, "casenumber") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label5" runat="server" Text="Current Criminal Charge(s):"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td align="left" width="250px">
                                                                                <asp:Label ID="criminal_charge"  Width="235px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "criminal_charge").ToString().TrimEnd()%>'>
                                                                                </asp:Label>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label60" runat="server" Text="Type:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td align="left" width="250px">
                                                                                <asp:Label ID="criminal_type"   Width="235px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "criminal_type").ToString().TrimEnd()%>'>
                                                                                </asp:Label>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label3" runat="server" Text="Courthouse:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="350px">
                                                                                <asp:TextBox ID="courthouse" Text='<%# DataBinder.Eval(Container.DataItem, "courthouse") %>'  runat="server"
                                                                                    CssClass="inface" Width="350px"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width:auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label4" runat="server" Text="Division:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="350px">
                                                                                <asp:TextBox ID="division" Text='<%# DataBinder.Eval(Container.DataItem, "division") %>'  runat="server"
                                                                                    CssClass="inface" Width="350px"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label7" runat="server" Text="Date of arrest:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="100">
                                                                                <asp:TextBox ID="arrestdate" Text='<%# DataBinder.Eval(Container.DataItem, "arrestdate", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="100"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label8" runat="server" Text="Housing:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td align="left" width="250px">
                                                                                <asp:Label ID="housing"  Width="235px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "housing_desc").ToString().TrimEnd()%>'>
                                                                                </asp:Label>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label9" runat="server" Text="Attorney/Public Defender Name:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="230px">
                                                                                <asp:TextBox ID="defendername" Text='<%# DataBinder.Eval(Container.DataItem, "defendername") %>' width="230px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                            </td>
                                                                            <td width="20">
                                                                            </td>
                                                                            <td align="right" class="td_label" style="width: 250px">
                                                                                <asp:Label ID="Label61" runat="server" Text="Phone Number:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="150">
                                                                                <asp:TextBox ID="defender_phone" Text='<%# DataBinder.Eval(Container.DataItem, "defender_phone") %>' width="150px" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label12" runat="server" Text="Court Dates:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate1" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate1", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate2" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate2", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate3" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate3", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate4" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate4", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate5" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate5", "{0:d}") %>' runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" style="width: 340px">
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate6" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate6", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate7" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate7", "{0:d}") %>' runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate8" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate8", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate9" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate9", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="80px">
                                                                                <asp:TextBox ID="courtdate10" Text='<%# DataBinder.Eval(Container.DataItem, "courtdate10", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="80px"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label13" runat="server" Text="Number of Strikes:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left"  width="230px">
                                                                                <asp:TextBox ID="strikes_total_desc"  Text='<%# DataBinder.Eval(Container.DataItem, "strikes_total_desc") %>' width="230px" runat="server" CssClass="infaceText"  MaxLength="5"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label14" runat="server" Text="Current judicial status:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="250px">
                                                                                <asp:TextBox ID="judicial_stat" Text='<%# DataBinder.Eval(Container.DataItem, "judicial_stat") %>'  runat="server"
                                                                                    CssClass="inface" Width="250px"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label15" runat="server" Text="End Date of current judicial status:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="120">
                                                                                <asp:TextBox ID="enddate" Text='<%# DataBinder.Eval(Container.DataItem, "enddate", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="120"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label16" runat="server" Text="If IST is consumer receiving CST Training?"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td align="left" width="230px">
                                                                                <asp:Label ID="ist" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ist_desc").ToString().TrimEnd()%>'>
                                                                                </asp:Label>
                                                                            </td>
                                                                            <td width="20">
                                                                            </td>
                                                                            <td align="right" class="td_label" style="width: 140px">
                                                                                <asp:Label ID="Label17" runat="server" Text="Name of CST:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="150">
                                                                                <asp:TextBox ID="cstname" Text='<%# DataBinder.Eval(Container.DataItem, "cstname") %>' width="150px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label18" runat="server" Text="If on Parole or Probation Name of Probation Officer:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="230px">
                                                                                <asp:TextBox ID="prob_officername" Text='<%# DataBinder.Eval(Container.DataItem, "prob_officername") %>' width="230px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                            </td>
                                                                            <td width="20">
                                                                            </td>
                                                                            <td align="right" class="td_label" style="width: 250px">
                                                                                <asp:Label ID="Label19" runat="server" Text="Phone Number:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="150">
                                                                                <asp:TextBox ID="officer_phone" Text='<%# DataBinder.Eval(Container.DataItem, "officer_phone") %>' width="150px" runat="server" CssClass="inface" MaxLength="15"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label6" runat="server" Text="If in prison name of prison:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="230px">
                                                                                <asp:TextBox ID="prisonname" Text='<%# DataBinder.Eval(Container.DataItem, "prisonname") %>' width="230px" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                            </td>
                                                                            <td width="20">
                                                                            </td>
                                                                            <td align="right" class="td_label" style="width: 250px">
                                                                                <asp:Label ID="Label64" runat="server" Text="Scheduled Date of Release:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="100">
                                                                                <asp:TextBox ID="releasedate" Text='<%# DataBinder.Eval(Container.DataItem, "releasedate", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="100"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label20" runat="server" Text="Entered By:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left"  width="230px">
                                                                                <asp:TextBox ID="judicial_sc" Text='<%# DataBinder.Eval(Container.DataItem, "judicial_sc") %>' width="230px" ReadOnly="true" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px">
                                                                                <asp:Label ID="Label21" runat="server" Text="Closed Case:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td class="td_unline" align="left" width="120">
                                                                                <asp:TextBox ID="closed_cases_date" Text='<%# DataBinder.Eval(Container.DataItem, "closed_cases_date", "{0:d}") %>'  runat="server"
                                                                                    CssClass="inface" Width="120"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 5px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr class="tr_common">
                                                                <td>
                                                                    <table class="table_common" cellspacing="0" cellpadding="0">
                                                                        <tr class="tr_common">
                                                                            <td align="right" class="td_label" style="width: 340px" valign="top">
                                                                                <asp:Label ID="judicialcomments" runat="server" Text="Comments:"></asp:Label>
                                                                            </td>
                                                                            <td width="5">
                                                                            </td>
                                                                            <td style="height: 40px" valign="top">
                                                                                <asp:TextBox ID="TextBox23" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" Text='<%# DataBinder.Eval(Container.DataItem, "judicialcomment_text") %>'
                                                                                    runat="server" Width="99%" Height="80"></asp:TextBox>
                                                                            </td>
                                                                            <td>&nbsp;</td>
                                                                            <td style="width: auto">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="height: 10px;">
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </table>  
							                    </ItemTemplate>
						                    </asp:TemplateColumn>
					                        </Columns>
				                            </asp:datagrid>
                                        </td>
                                    </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Consumer_AF_4" style="display: none">
                        <table class="table_common" cellspacing="0" cellpadding="0">
                            <tr class="tr_common">
                                <td></td>
                                <td align="center" style="width:800px">
                                    <a href="../FormList/FormFairHearingList.aspx">
                                       <font size="3" color="#3366ff"><b><u>Fair Hearing</u></b></font></a>
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td class="td_thicksepline" colspan="2">
                                </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
	                            <td  align="left" style="width:30px;height:25">
                                    <asp:Image ID="BtnAddComplaint" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addComplaintRecord();"/>
                                </td>
                                <td align="center" style="width:800px">
                                    <font size="3" color="#3366ff"><b>4731 Complaints List</b></font>
			                    </td>  
                            </tr>
                            
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center" colspan="2">
                                    <asp:datagrid id="dg_ComplaintList" runat="server" AllowPaging="false" CssClass="grd_body"
					                  AutoGenerateColumns="False" AllowSorting="false" >
					                <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_item"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						            <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:TemplateColumn HeaderText="Edit">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="DELETE">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									            BorderWidth="0"></asp:ImageButton>
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                               <td class="td_thicksepline" colspan="2">
                               </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center"  colspan="2">
                                    <asp:datagrid id="dg_Complaint" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                            AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                    <Columns>
					                    <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						                <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="">
							                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							                <ItemTemplate>
	                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 250px">
                                                                        <asp:Label ID="Label7" runat="server" Text="4731 Complaint Received Date:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="120">
                                                                        <asp:TextBox ID="complaint_recv_date" Text='<%# DataBinder.Eval(Container.DataItem, "complaint_recv_date", "{0:d}") %>'  runat="server"
                                                                            CssClass="inface" Width="120"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 250px">
                                                                        <asp:Label ID="Label4" runat="server" Text="Complaint Type:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="250px">
                                                                        <asp:TextBox ID="complaint_type" Text='<%# DataBinder.Eval(Container.DataItem, "complaint_type") %>'  runat="server"
                                                                            CssClass="inface" Width="250px"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 250px">
                                                                        <asp:Label ID="Label66" runat="server" Text="4731 Complaint Due:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="120">
                                                                        <asp:TextBox ID="complaint_due" Text='<%# DataBinder.Eval(Container.DataItem, "complaint_due", "{0:d}") %>'  runat="server"
                                                                            CssClass="inface" Width="120"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 250px">
                                                                        <asp:Label ID="Label67" runat="server" Text="Date Mailed to consumer:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="120">
                                                                        <asp:TextBox ID="complaint_maileddate" Text='<%# DataBinder.Eval(Container.DataItem, "complaint_maileddate", "{0:d}") %>'  runat="server"
                                                                            CssClass="inface" Width="120"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" valign="top" class="td_label" style="width: 250px">
                                                                        <asp:Label ID="Label47" runat="server" Text="Resolution:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td colspan=3 class="td_unline" align="left">
                                                                        <asp:Label ID="complaint_resolution" Text='<%# DataBinder.Eval(Container.DataItem, "complaint_resolution") %>'  runat="server"
                                                                            CssClass="inface" Style="Width:auto"></asp:label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 10px;">
                                                        <td>
                                                        </td>
                                                    </tr>

                                                </table>  
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Consumer_AF_5" style="display: none">
                        <table class="table_common" cellspacing="0" cellpadding="0">
                            <tr style="height:10px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
	                            <td  align="left" style="width:30px;height:25">
                                    <asp:Image ID="BtnAddVoter" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addVoterRegRecord();"/>
                                </td>
                                <td align="center" style="width:800px">
                                    <font color="#3366ff"><b>Voter Registration List</b></font>
			                    </td>  
                            </tr>
                            
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center" colspan="2">
                                    <asp:datagrid id="dg_VoterRegList" runat="server" AllowPaging="false" CssClass="grd_body"
					                  AutoGenerateColumns="False" AllowSorting="false" >
					                <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_item"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						            <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:TemplateColumn HeaderText="Edit">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="DELETE">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									            BorderWidth="0"></asp:ImageButton>
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                               <td class="td_thicksepline" colspan="2">
                               </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center" colspan="2">
                                    <asp:datagrid id="dg_VoterReg" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                            AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                    <Columns>
					                    <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						                <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="">
							                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							                <ItemTemplate>
	                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label69" runat="server" Text="IPP Date:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left"  style="width: 105px">
                                                                        <asp:Label ID="Label72" Width="105px" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ippdate", "{0:d}") %>' CssClass="infaceText"></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label5" runat="server" Text="Is Consumer Registered to vote?"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" width="105px">
                                                                        <asp:Label ID="voter_reg"  Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "voter_reg_desc").ToString().TrimEnd()%>'>
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label73" runat="server" Text="Was an NVRA Voter Form Completed?"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" width="105px">
                                                                        <asp:Label ID="nvra_voter" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "nvra_voter_desc").ToString().TrimEnd()%>'>
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label3" runat="server" Text="If No, please explain:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="300px">
                                                                        <asp:TextBox ID="nvra_voter_explain" Text='<%# DataBinder.Eval(Container.DataItem, "nvra_voter_explain") %>' runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label4" runat="server" Text="If Voter Registration completed by Regional Center Registration Date:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="100">
                                                                        <asp:TextBox ID="reg_completeddate" Text='<%# DataBinder.Eval(Container.DataItem, "reg_completeddate", "{0:d}") %>'  runat="server"
                                                                            CssClass="inface" Width="100"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label6" runat="server" Text="Additional Comments:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td style="height: 40px" valign="top">
                                                                        <asp:TextBox ID="additionalcomment" TextMode="MultiLine" Text='<%# DataBinder.Eval(Container.DataItem, "additionalcomment") %>' Wrap="true" BorderStyle="Solid"
                                                                            runat="server" Width="99%" Height="60"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label7" runat="server" Text="Next NVRA Form due:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" class="td_label" style="width: 105px">
                                                                        <asp:Label ID="next_nvra_due" Width="105px" Text='<%# DataBinder.Eval(Container.DataItem, "next_nvra_due", "{0:d}") %>' runat="server"  CssClass="infaceText"></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                </table>
                                                </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td> 
                            </tr>
                        </table>
                    </div>
                    <div id="Consumer_AF_6" style="display: none">
                        <table class="table_common" cellspacing="0" cellpadding="0">
                            <tr style="height:10px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
	                            <td  align="left" style="width:30px;height:25">
                                    <asp:Image ID="BtnAddIMD" runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" onclick="addIMDRecord();"/>
                                </td>
                                <td align="center" style="width:800px">
			                        <font color="#3366ff"><b>IMD/MHRC List</b></font>
			                    </td>
                            </tr>
                            
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center" colspan="2">
                                    <asp:datagrid id="dg_IMDList" runat="server" AllowPaging="false" CssClass="grd_body"
					                  AutoGenerateColumns="False" AllowSorting="false" >
					                <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                <ItemStyle CssClass="grd_item"></ItemStyle>
					                <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					                <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                <Columns>
					                <asp:BoundColumn DataField="uci" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						            <asp:BoundColumn DataField="createdate" HeaderText="Entry Date" ></asp:BoundColumn>
						            <asp:BoundColumn DataField="enteredby" HeaderText="Entered By">
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:BoundColumn>
						            <asp:TemplateColumn HeaderText="Edit">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							            </ItemTemplate>
						            </asp:TemplateColumn>
						            <asp:TemplateColumn HeaderText="DELETE">
							            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							            <ItemTemplate>
								            <asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									            BorderWidth="0"></asp:ImageButton>
							            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td>
                            </tr>
                            <tr style="height:5px">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                               <td class="td_thicksepline" colspan="2">
                               </td>
                            </tr>
                            <tr style="height:5px;">
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr class="tr_common">
                                <td align="center" colspan="2">
                                    <asp:datagrid id="dg_IMD" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					                            AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					                    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					                    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					                    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					                    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					                    <Columns>
					                    <asp:BoundColumn DataField="uci" HeaderText="" Visible="False"></asp:BoundColumn>
						                <asp:BoundColumn DataField="createdate" HeaderText="" Visible="False"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="">
							                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							                <ItemTemplate>
	                                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label75" runat="server" Text="IPP Date:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left"  style="width: 105px">
                                                                        <asp:Label ID="Label112" Width="105px" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ippdate", "{0:d}") %>' CssClass="infaceText"></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label113" runat="server" Text="Emergency Placement Date:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="100">
                                                                        <asp:TextBox ID="placementdate" Text='<%# DataBinder.Eval(Container.DataItem, "placementdate", "{0:d}") %>'  runat="server"
                                                                            CssClass="inface" Width="100"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label5" runat="server" Text="Was Assessment Completed?"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" width="105px">
                                                                        <asp:Label ID="assessment_completed"  Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "assessment_completed_desc").ToString().TrimEnd()%>'>
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td width="40">
                                                                    </td>
                                                                    <td align="right" class="td_label" style="width: 200px">
                                                                        <asp:Label ID="Label3" runat="server" Text="Date of Assessment:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="100">
                                                                        <asp:TextBox ID="assessment_date" Text='<%# DataBinder.Eval(Container.DataItem, "assessment_date", "{0:d}") %>'  runat="server"
                                                                            CssClass="inface" Width="100"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label4" runat="server" Text="Last Quarterly Completed:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" style="width: 105px">
                                                                        <asp:Label ID="last_quarterly_completed" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "last_quarterly_completed") %>'  CssClass="infaceText"></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label6" runat="server" Text="Has a placement been secured?"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" width="100">
                                                                        <asp:Label ID="placement_secured"  Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "placement_secured_desc").ToString().TrimEnd()%>'>
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label8" runat="server" Text="If Yes Name of Placement:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="300">
                                                                        <asp:TextBox ID="placement_name" Text='<%# DataBinder.Eval(Container.DataItem, "placement_name") %>' runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label7" runat="server" Text="If No or Pending please explain:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="300px">
                                                                        <asp:TextBox ID="placement_reason" Text='<%# DataBinder.Eval(Container.DataItem, "placement_reason") %>' runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label9" runat="server" Text="Has SSRS been contacted?"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left" width="105">
                                                                        <asp:Label ID="ssrs_contacted" Width="105px" CssClass="infaceText"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ssrs_contacted_desc").ToString().TrimEnd()%>'>
                                                                        </asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" valign="top" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label115" runat="server" Text="Please explain:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="600px">
                                                                        <asp:TextBox ID="ssrs_reason" Text='<%# DataBinder.Eval(Container.DataItem, "ssrs_reason") %>' TextMode="MultiLine" Height="60px" runat="server" CssClass="inface" MaxLength="250"></asp:TextBox>
                                                                                
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label12" runat="server" Text="180 day due date:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td class="td_unline" align="left" width="100">
                                                                        <asp:TextBox ID="placementdate_180" Text='<%# DataBinder.Eval(Container.DataItem, "placementdate_180", "{0:d}") %>'  runat="server" 
                                                                            CssClass="inface" Width="100"></asp:TextBox>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr_common">
                                                        <td>
                                                            <table class="table_common" cellspacing="0" cellpadding="0">
                                                                <tr class="tr_common">
                                                                    <td align="right" class="td_label" style="width: 400px">
                                                                        <asp:Label ID="Label116" runat="server" Text="Next Quarterly Due:"></asp:Label>
                                                                    </td>
                                                                    <td width="5">
                                                                    </td>
                                                                    <td align="left"  style="width: 105px">
                                                                        <asp:Label ID="Label117" Width="105px" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "next_quarterlydue", "{0:d}") %>' CssClass="infaceText"></asp:Label>
                                                                    </td>
                                                                    <td>&nbsp;</td>
                                                                    <td style="width: auto">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 5px;">
                                                        <td>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
						            </asp:TemplateColumn>
					                </Columns>
				                    </asp:datagrid>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="Consumer_DC" runat="server" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_status_date_dup" runat="server" Text="Status Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_status_date_dup" runat="server" Text="" Width="120"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:button id="btnRefForm101" Runat="server" Text="Referral" style="width:125px" CssClass="buttonbluestyle" 
                                          onclick="btnRefForm101_Click" Visible="false"></asp:button>
                                
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_case_level" runat="server" Text="Frequency of Contact:"></asp:Label></b>
                            </td>
                            <td width="5" ></td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_case_level" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="235" CssClass="infaceDropRead" Enabled="false">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6"> </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="3" >
                                <font color="#3366ff"><b>Early Start Intake</b></font>
                                &nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="btnEditESRIntake" runat="server" AlternateText="Edit" 
                                    ImageURL="../img/view.gif" ToolTip="Edit" OnClientClick="NoCreateIDNotes();return true;" OnClick="btnEditESRIntake_Click">
                                </asp:ImageButton>
                            </td>
                            <td align="center" colspan="3" >
                                <font color="#3366ff"><b>Tickler Dates</b></font>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date05" runat="server" Text="Initial Inquiry Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date05" runat="server" CssClass="inface" 
                                      onclick="DataChanged();showcalendarsubmit(event, this);" onfocus="DataChanged();showcalendarsubmit(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date05" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date05_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_pcp_ifsp_date" runat="server" Text="PCP/IFSP/PP Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_pcp_ifsp_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_pcp_ifsp_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_pcp_ifsp_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date06" runat="server" Text="Initial Interview Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date06" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date06" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date06_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date10" runat="server" Text="PCP/IFSP/PP Report:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date10" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date10" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date10_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="Label3" runat="server" Text="Proposed Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="Label4" runat="server" CssClass="infaceText"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_quarterly1_date" runat="server" Text="Quarterly 1 Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_quarterly1_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_quarterly1_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_quarterly1_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date05_dup" runat="server" Text="Due Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_date05_dup" runat="server" CssClass="infaceText" width="80px"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_sar_date" runat="server" Text="Semi-Annual Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_sar_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_sar_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_sar_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text5" runat="server" Text="Intake CM:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:DropDownList ID="c_text5" runat="server" DataValueField="employeeID" CssClass="infaceDrop" OnClick="DataChanged()"
                                    DataTextField="employeeName">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_quarterly3_date" runat="server" Text="Quarterly 3 Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_quarterly3_date" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_quarterly3_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_quarterly3_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date07" runat="server" Text="Assigned Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date07" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date07" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date07_dt"></asp:CompareValidator>
                                
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date12" runat="server" Text="Prior PCP/IFSP/PP Meeting:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date12" runat="server" CssClass="inface"  
                                      onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date12" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date12_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date08" runat="server" Text="Eligibility Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date08" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date08" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date08_dt"></asp:CompareValidator>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="center" colspan="3">
                                <font color="#3366ff"><b>Lanterman Intake:</b></font>
                                &nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="btnEditIntake" runat="server" AlternateText="Edit" OnClientClick="NoCreateIDNotes();return true;" 
                                    ImageURL="../img/view.gif" ToolTip="Edit" OnClick="btnEditIntake_Click">
                                </asp:ImageButton>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_cder_esr_date" runat="server" Text="CDER/ESR:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_cder_esr_date" runat="server" CssClass="inface"  
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_cder_esr_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_cder_esr_dt"></asp:CompareValidator>
                            </td>
                        </tr>   
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>                             
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_initial_inquiry_date" runat="server" Text="Initial Inquiry Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_initial_inquiry_date" runat="server" CssClass="inface"
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_initial_inquiry_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="initial_inquiry_dt"></asp:CompareValidator>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_date_waiver" runat="server" Text="CDER Exp. Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date_waiver" runat="server" CssClass="inface" 
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date_waiver" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date_waiver_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_initial_interview_date" runat="server" Text="Initial Interview Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_initial_interview_date" runat="server" CssClass="inface"
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_initial_interview_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="initial_interview_dt"></asp:CompareValidator>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_review_mw_date" runat="server" Text="Medicaid Waiver:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_review_mw_date" runat="server" CssClass="inface" 
                                   onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_review_mw_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="review_mw_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="Label6" runat="server" Text="Proposed Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="Label7" runat="server" CssClass="infaceText" Width="80"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date_consent" runat="server" Text="Consent Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date_consent" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date_consent" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date_consent_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_initial_inquiry_date_dup" runat="server" Text="Due Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_initial_inquiry_date_dup" runat="server" CssClass="infaceText" width="80"></asp:Label>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_qol" runat="server" Text="LQA:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_qol" runat="server" CssClass="inface" MaxLength="15" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text6" runat="server" Text="Intake CM:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:DropDownList ID="c_text6" runat="server" DataValueField="employeeID" CssClass="infaceDrop" OnClick="DataChanged()"
                                    DataTextField="employeeName">
                                </asp:DropDownList>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date11" runat="server" Text="Assigned Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date11" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date11" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date11_dt"></asp:CompareValidator>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_tickler_cycle" runat="server" Text="Tickler Cycle:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:DropDownList ID="c_tickler_cycle" runat="server" CssClass="infaceDrop" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                      Width="150" OnChange="DataChanged()">       
                                </asp:DropDownList>
                                <b><asp:Label ID="l_year" runat="server" Text=" Year:" CssClass="infaceText"></asp:Label></b>
                                <asp:TextBox ID="c_tickler_date" runat="server" CssClass="inface" Width="80px"></asp:TextBox>
                            </td>   
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_eligibility_date" runat="server" Text="Eligibility Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_eligibility_date" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_eligibility_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="eligibility_dt"></asp:CompareValidator>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label">
                                <b><asp:Label ID="l_c_base_month" runat="server" Text="Tickler Month:"></asp:Label></b>
                            </td>
                            <td width="5"></td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_base_month" runat="server" CssClass="infaceDrop" Width="150" OnChange="DataChanged()">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="1">January</asp:ListItem>
                                    <asp:ListItem Value="2">February</asp:ListItem>
                                    <asp:ListItem Value="3">March</asp:ListItem>
                                    <asp:ListItem Value="4">April</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">June</asp:ListItem>
                                    <asp:ListItem Value="7">July</asp:ListItem>
                                    <asp:ListItem Value="8">August</asp:ListItem>
                                    <asp:ListItem Value="9">September</asp:ListItem>
                                    <asp:ListItem Value="10">October</asp:ListItem>
                                    <asp:ListItem Value="11">November</asp:ListItem>
                                    <asp:ListItem Value="12">December</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="button" value="Start IPP" style="width:100px" ID="startipp" class="buttonbluestyle" runat="server" 
                                       OnClick="javascript:StartIPP();" />
                            </td>   
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date01" runat="server" Text="Next Eligibility Review:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_date01" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_date01" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="date01_dt"></asp:CompareValidator>
                            </td>
                            <td colspan="3">
                            </td>    
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date02" runat="server" Text="Psychosocial Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td colspan="3" class="td_unline" align="left">
                                <table class="table_inside" cellpadding="0" cellspacing="0">
                                    <tr class="tr_common">
                                        <td  align="left" width="80">
                                            <asp:TextBox ID="c_date02" runat="server" CssClass="inface" 
                                                onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                            <asp:CompareValidator ControlToValidate="c_date02" Operator="DataTypeCheck" Type="Date" 
                                                    Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="CompareValidator1"></asp:CompareValidator>
                                        </td>
                                        <td width="10" >
                                        </td>
                                        <td style="width: 50px" align="left" class="td_label" >
                                            <b><asp:Label ID="l_c_text1" runat="server" Text="Seen By:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="400">
                                            <asp:TextBox ID="c_text1" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                            <td></td>  
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date03" runat="server" Text="Psychological  Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td colspan="3" class="td_unline" align="left">
                                <table class="table_inside" cellpadding="0" cellspacing="0">
                                    <tr class="tr_common">
                                        <td  align="left" width="80">
                                            <asp:TextBox ID="c_date03" runat="server" CssClass="inface" 
                                                onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                            <asp:CompareValidator ControlToValidate="c_date03" Operator="DataTypeCheck" Type="Date" 
                                                    Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="CompareValidator2"></asp:CompareValidator>
                                        </td>
                                        <td width="10" >
                                        </td>
                                        <td style="width: 50px" align="left"class="td_label" >
                                            <b><asp:Label ID="l_c_text2" runat="server" Text="Seen By:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="400">
                                            <asp:TextBox ID="c_text2" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                            <td></td>  
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date09" runat="server" Text="Medical  Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td colspan="3" class="td_unline" align="left">
                                <table class="table_inside" cellpadding="0" cellspacing="0">
                                    <tr class="tr_common">
                                        <td align="left" width="80">
                                            <asp:TextBox ID="c_date09" runat="server" CssClass="inface" 
                                                onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                            <asp:CompareValidator ControlToValidate="c_date09" Operator="DataTypeCheck" Type="Date" 
                                                    Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="CompareValidator3"></asp:CompareValidator>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td style="width: 50px" align="left" class="td_label" >
                                            <b><asp:Label ID="l_c_text9" runat="server" Text="Seen By:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="400">
                                            <asp:TextBox ID="c_text9" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                            <td></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_date13" runat="server" Text="Medical Held On Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td colspan="3" class="td_unline" align="left">
                                <table class="table_inside" cellpadding="0" cellspacing="0">
                                    <tr class="tr_common">
                                        <td align="left" width="80">
                                            <asp:TextBox ID="c_date13" runat="server" CssClass="inface" 
                                                onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                        </td>
                                        <td width="10">
                                        </td>
                                        <td style="width: 50px" align="left" class="td_label" >
                                            <b><asp:Label ID="l_c_text7" runat="server" Text="MD:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td class="td_unline" align="left" width="400">
                                            <asp:TextBox ID="c_text7" runat="server" CssClass="inface" MaxLength="50" ></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td style="width:auto"></td>
                                    </tr>
                                </table>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td style="height:120px">
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_AD" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_id" runat="server" Text="Case Manager:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_id" runat="server" DataValueField="employeeID" DataTextField="employeeIDName" 
                                     Width="235" OnClick="DataChanged();" OnChange="CMChange();" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_case_assign_date" runat="server" Text="Case Assign Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_case_assign_date" runat="server" CssClass="inface"  
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_case_assign_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="case_assign_dt"></asp:CompareValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="image" id="btnStats" runat="server" alt="Info" style="width: 18px;height:18px"  
                                      src="../img/history.jpg" title="Info"
                                    onclick="javascript:document.location.replace('../FormList/FormConsumerStatsList.aspx');return false;" />
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_type" runat="server" Text="Case Manager Type:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_type" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_uci" runat="server" Text="UCI Number:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:label ID="c_uci" runat="server" CssClass="infaceText" Width="120px"></asp:label>&nbsp;&nbsp;&nbsp;
                                <input type="image" id="btnChgUCI" runat="server" alt="ChgUCI" style="width: 18px;height:18px"  
                                      src="../img/view.gif" title="Edit UCI" visible=false
                                    onclick="javascript:chguci_click();return false;" />&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="c_date21" runat="server" CssClass="infaceText" Width="120px"></asp:Label>   
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_unit_area" runat="server" Text="Area/Group:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_unit_area" runat="server" DataValueField="GroupID" DataTextField="GroupName" CssClass="infaceDrop">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_mis" runat="server" Text="MIS Number"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_mis" runat="server" CssClass="inface" MaxLength="8"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_case_assign_manager" runat="server" Text="Supervisor"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_case_assign_manager" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text10" runat="server" Text="Vendor"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_text10" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_status" runat="server" Text="Current Status:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_status_date" runat="server" Text="Current Status Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_status_date" runat="server" CssClass="inface" 
                                     onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_status_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="status_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_cm_agency" runat="server" Text="CM Agency:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_cm_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" class="td_label" >
                                <b><asp:Label ID="l_c_report_agency" runat="server" Text="Report Agency:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_report_agency" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_text4" runat="server" Text="Prior Case Manager:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_text4" runat="server" CssClass="inface" MaxLength="50"></asp:TextBox>
                            </td>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_previous_status" runat="server" Text="Previous Status"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_previous_status" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID" 
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_previous_status_date" runat="server" Text="Previous Status Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_previous_status_date" runat="server" CssClass="inface" 
                                    onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_previous_status_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="previous_status_dt"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_comment_1" runat="server" Text="Federal Program Comments:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" colspan="4">
                                <asp:TextBox ID="c_comment_1" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                       runat="server" Width="99%" Height="120"></asp:TextBox> 
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_comment_2" runat="server" Text="Comments 2:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_2" runat="server" CssClass="inface" MaxLength="60" ></asp:TextBox>
                            </td>
                            <td colspan="2" ></td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_comment_3" runat="server" Text="Comments 3:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="510" colspan="2">
                                <asp:TextBox ID="c_comment_3" runat="server" CssClass="inface" MaxLength="60"></asp:TextBox>
                            </td>
                            <td colspan="2"></td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_last_mod_by" runat="server" Text="Last Modified By:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_last_mod_by" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="235" OnChange="DataChanged()" ReadOnly="True">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_last_mod_date" runat="server" Text="Last Modified Date:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:Label ID="c_last_mod_date" runat="server" CssClass="infaceText" Width="200"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" class="td_label" >
                                <b><asp:Label ID="l_c_chartScanned" runat="server" Text="Chart Scanned:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_chartScanned" Width="235" runat="server" OnChange="DataChanged()" CssClass="infaceDrop">
                                    <asp:ListItem Value="0" Selected="True">No</asp:ListItem>
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_RE" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_date" runat="server" Text="Date of Call:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_date"  onclick="DataChanged();showcalendar(event, this);" onfocus="DataChanged();showcalendar(event, this);"  
                                      runat="server" CssClass="inface" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_ref_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="ref_dt"></asp:CompareValidator>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_name_last" runat="server" Text="Last Name:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_name_last" runat="server" CssClass="inface" MaxLength="14"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_screener" runat="server" Text="Screener:" ></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_screener" runat="server" DataValueField="employeeID" DataTextField="employeeName" 
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                               <b><asp:Label ID="l_c_ref_name_first" runat="server" Text="First Name:" ></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_name_first" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_source" runat="server" Text="Referral Source:" ></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_phone_1" runat="server" Text="Phone:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_ref_phone_1_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_ref_phone_1_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_ref_phone_1_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_ref_phone_1_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_ref_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>                                  
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_relationship" runat="server" Text="Relationship:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_reason" runat="server" Text="Reason:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_reason" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 210px" align="right" valign="top" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_comment" runat="server" Text="Comments:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td colspan="4" align="left" width="815">
                                <asp:TextBox ID="c_ref_comment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                       runat="server" Width="99%" Height="40"></asp:TextBox> 
                                <br />
                                <cc1:UltimateSpell ID="UltimateSpell5" ControlIdsToCheck="c_ref_comment" ShowModal="true"
                                       runat="server">
                                </cc1:UltimateSpell>   
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" class="td_thicksepline">
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_date" runat="server" Text="Date of Call:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_date"  onclick="DataChanged();showcalendar(event, this);" 
                                    onfocus="DataChanged();showcalendar(event, this);"  runat="server" CssClass="inface" Width="80"></asp:TextBox>
                                <asp:CompareValidator ControlToValidate="c_ref_2_date" Operator="DataTypeCheck" Type="Date" 
                                          Display="Dynamic" ErrorMessage="Invalid date" runat="server" ID="ref_2_dt"></asp:CompareValidator>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_name_last" runat="server" Text="Last Name:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_name_last" runat="server" CssClass="inface" MaxLength="14"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_screener" runat="server" Text="Screener:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_2_screener" runat="server" DataValueField="employeeID" DataTextField="employeeName"
                                    Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_name_first" runat="server" Text="First Name:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <asp:TextBox ID="c_ref_2_name_first" runat="server" CssClass="inface" MaxLength="11"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_source" runat="server" Text="Other Referral Source:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_2_source" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                     Width="235" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_phone_1" runat="server" Text="Phone:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="300">
                                <table align="left" cellspacing="0" cellpadding="0" border="0">
                                   <tr>
                                     <td align="center" width="10px">(</td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_ref_2_phone_1_1" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_ref_2_phone_1_2);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="15px">) </td>
                                     <td class="td_unline" width="30px">
                                        <asp:TextBox ID="c_ref_2_phone_1_2" runat="server" CssClass="inface" MaxLength="3"
                                        onKeyup="autotab(this, document.ConsumerInfo.c_ref_2_phone_1_3);"></asp:TextBox>
                                     </td>
                                     <td align="center" width="10px">-</td>
                                     <td class="td_unline" width="40px">
                                        <asp:TextBox ID="c_ref_2_phone_1_3" runat="server" CssClass="inface" MaxLength="4"></asp:TextBox>
                                     </td>
                                   </tr>  
                                </table>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_relationship" runat="server" Text="Relationship:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_2_relationship" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                            <td style="width: 210px" align="right" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_reason" runat="server" Text="Reason:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300">
                                <asp:DropDownList ID="c_ref_2_reason" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text" 
                                     Width="235" OnChange="DataChanged()" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:5px;">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 210px" align="right" valign="top" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_agency_line_1" runat="server" Text="Agency:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td class="td_unline" align="left" width="625" colspan="4">
                                <asp:TextBox ID="c_ref_2_agency_line_1" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox><br />
                                <asp:TextBox ID="c_ref_2_agency_line_2" runat="server" CssClass="inface" MaxLength="30"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:5px">
                            <td colspan="6">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 210px" align="right" valign="top" width="210" class="td_label" >
                                <b><asp:Label ID="l_c_ref_2_comment" runat="server" Text="Comments:"></asp:Label></b></td>
                            <td width="5" >
                            </td>
                            <td colspan="4" align="left" width="815">
                                <asp:TextBox ID="c_ref_2_comment" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                       runat="server" Width="99%" Height="40"></asp:TextBox> 
                                <br /> 
                                <cc1:UltimateSpell ID="UltimateSpell4" ControlIdsToCheck="c_ref_2_comment" ShowModal="true"
                                       runat="server">
                                </cc1:UltimateSpell> 
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_AM" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr style="height: 30px;" valign="middle">
	                        <td align="center">
			                   <asp:label id="Label46" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">EMPLOYMENT FIRST POLICY</asp:label>
			                </td>
		               </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                              <table class="table_inside" cellspacing="0" cellpadding="0">
                                 <tr class="tr_common">
                                    <td style="width: 800px" align="left" width="800" class="td_label" >
                                      <b><asp:Label ID="l_employed" runat="server" Text="1. Is Consumer Employed/ Postsecondary Education?"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 75px" >
								       <asp:dropdownlist id="employed" runat="server" CssClass="infaceDrop" OnClick="employed_click();">
									     <asp:ListItem Value=""></asp:ListItem>
								         <asp:ListItem Value="YES">Yes</asp:ListItem>
								         <asp:ListItem Value="NO">No</asp:ListItem>
								       </asp:dropdownlist>
							        </td>
                                    <td width="auto"></td>
                                 </tr>
                              </table>
                            </td>  
                       </tr>
                       <tr>
                            <td>
                              <table id="employed_yes" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                 <tr style="height:5px">
                                    <td colspan="5">
                                    </td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td width="50px"></td>
                                    <td style="width: 400px" align="left" width="400" class="td_label" >
                                      <b><asp:Label ID="l_programtype1" runat="server" Text="If Yes, Program Type:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td style="width:300px" >
								       <asp:dropdownlist id="ProgramType1" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									     <asp:ListItem Value=""></asp:ListItem>
								         <asp:ListItem Value="1">Integrated Employment</asp:ListItem>
								         <asp:ListItem Value="2">Competitive Employment</asp:ListItem>
								         <asp:ListItem Value="3">Microenterprises</asp:ListItem>
								         <asp:ListItem Value="4">Self-Employment</asp:ListItem>
								         <asp:ListItem Value="5">Post-Secondary Education</asp:ListItem>
								       </asp:dropdownlist>
							        </td>
                                    <td width="200px"></td>
                                    <td style="width:auto"></td>
                                 </tr>
                                 <tr style="height:5px">
                                    <td colspan="5">
                                    </td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td width="50px"></td>
                                    <td style="width: 400px" align="left" width="400" class="td_label" >
                                      <b><asp:Label ID="l_programname" runat="server" Text="Name of Program/School:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td colspan="2" class="td_unline" align="left" style="width:500px" >
                                      <asp:TextBox ID="ProgramName" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
							        </td>
                                    <td width="auto"></td>
                                 </tr>
                              </table>
                            </td>  
                       </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                              <table class="table_inside" cellspacing="0" cellpadding="0">
                                 <tr class="tr_common">
                                    <td style="width: 800px" align="left" width="800" class="td_label" >
                                      <b><asp:Label ID="l_discussed" runat="server" Text="2. Discussed options for integrated competitive employment and services and supports including postsecondary education?"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 75px" >
								       <asp:dropdownlist id="discussed" runat="server" CssClass="infaceDrop">
									     <asp:ListItem Value=""></asp:ListItem>
								         <asp:ListItem Value="YES">Yes</asp:ListItem>
								         <asp:ListItem Value="NO">No</asp:ListItem>
								       </asp:dropdownlist>
							        </td>
                                    <td width="auto"></td>
                                 </tr>
                              </table>
                            </td>  
                       </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                              <table class="table_inside" cellspacing="0" cellpadding="0">
                                 <tr class="tr_common">
                                    <td style="width: 600px" align="left" width="600" class="td_label" >
                                      <b><asp:Label ID="l_chosed" runat="server" Text="3. Consumer/Family Chose?"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td style="width: 200px" >
								       <asp:dropdownlist id="chosed" runat="server" CssClass="infaceDrop" onclick="chosed_click();">
									     <asp:ListItem Value=""></asp:ListItem>
								         <asp:ListItem Value="1">Competitive Employment</asp:ListItem>
								         <asp:ListItem Value="2">Postsecondary Education</asp:ListItem>
								         <asp:ListItem Value="3">Chose Other Goal</asp:ListItem>
								       </asp:dropdownlist>
							        </td>
                                    <td width="auto"></td>
                                 </tr>
                              </table>
                            </td>  
                       </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                              <table id="employed_comp" style="display:none" class="table_inside" cellspacing="0" cellpadding="0">
                                 <tr style="height:5px">
                                    <td colspan="5">
                                    </td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td width="50px"></td>
                                    <td style="width: 400px" align="left" width="400" class="td_label" >
                                      <b><asp:Label ID="l_ProgramType2" runat="server" Text="Program Type:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td style="width:300px" >
								       <asp:dropdownlist id="ProgramType2" runat="server" CssClass="infaceDrop" OnClick="DataChanged()">
									     <asp:ListItem Value=""></asp:ListItem>
								         <asp:ListItem Value="1">Integrated Employment</asp:ListItem>
								         <asp:ListItem Value="2">Competitive Employment</asp:ListItem>
								         <asp:ListItem Value="3">Microenterprises</asp:ListItem>
								         <asp:ListItem Value="4">Self-Employment</asp:ListItem>
								       </asp:dropdownlist>
							        </td>
                                    <td width="200px"></td>
                                    <td width="auto"></td>
                                 </tr>
                                 <tr style="height:5px">
                                    <td colspan="5">
                                    </td>
                                 </tr>
                                 <tr class="tr_common">
                                    <td width="50px"></td>
                                    <td style="width: 400px" align="left" width="400" class="td_label" >
                                      <b><asp:Label ID="l_referred" runat="server" Text="Consumer referred to the Department of Rehabilitation?"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td class="td_unline" align="left" style="width:300px" >
								       <asp:dropdownlist id="referred" runat="server" CssClass="infaceDrop" Width="75px">
									     <asp:ListItem Value=""></asp:ListItem>
								         <asp:ListItem Value="YES">Yes</asp:ListItem>
								         <asp:ListItem Value="NO">No</asp:ListItem>
								       </asp:dropdownlist>
							        </td>
                                    <td width="200px"></td>
                                    <td width="auto"></td>
                                 </tr>
                              </table>
                            </td>  
                       </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td style="width: 210px" align="left" class="td_label" >
                                <b><asp:Label ID="l_EmploymentStatus" runat="server" Text="Current Status/Plan/Comments"></asp:Label></b>
                            </td>
                       </tr>
                       <tr>
                            <td align="left">
                                <asp:TextBox ID="EmploymentStatus" TextMode="MultiLine" Wrap="true" BorderStyle="Solid"
                                       runat="server" Width="99%" Height="40"></asp:TextBox>
                            </td>
                       </tr>

                       <tr style="height:30px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddAm" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" ></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_Employment" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">EMPLOYMENT LIST</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_employmentlist" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False">
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="clientid" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="entrydate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="employer" HeaderText="Employer">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="outcome" HeaderText="Outcome">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="plans" HeaderText="Plans">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>
                        <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                           <td class="td_thicksepline">
                           </td>
                        </tr>
                        <tr style="height:5px">
                           <td>
                           </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                        <asp:datagrid id="dg_employment" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:TemplateColumn HeaderText="">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <asp:Label ID="l_employer" runat="server" Text="Name of Employer:"></asp:Label>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="employer" runat="server" CssClass="inface" MaxLength="50"
                                         Text='<%# DataBinder.Eval(Container.DataItem, "employer") %>'></asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <asp:Label ID="l_city" runat="server" Text="Address/Phone:"></asp:Label>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="city" runat="server" CssClass="inface" MaxLength="100"
                                         Text='<%# DataBinder.Eval(Container.DataItem, "city") %>'></asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <asp:Label ID="l_jobtitle" runat="server" Text="Job Title:"></asp:Label>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="jobtitle" runat="server" CssClass="inface" MaxLength="50"
                                         Text='<%# DataBinder.Eval(Container.DataItem, "jobtitle") %>'></asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <asp:Label ID="l_jobtype" runat="server" Text="Type of Job:"></asp:Label>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td style="width: 600px" align="left">
                                        <asp:TextBox ID="jobtype" runat="server" CssClass="inface" Text='<%# DataBinder.Eval(Container.DataItem, "jobtype_desc").ToString().TrimEnd()%>'>
                                        </asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <asp:Label ID="l_employmenttype" runat="server" Text="Type of Paid Employment:"></asp:Label>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td style="width: 600px" align="left">
                                        <asp:TextBox ID="employmenttype" CssClass="inface" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "employmenttype_desc").ToString().TrimEnd()%>'>
                                        </asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <asp:Label ID="l_timeonjob" runat="server" Text="Start Date:"></asp:Label>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="timeonjob" runat="server" CssClass="inface" MaxLength="100"
                                           Text='<%# DataBinder.Eval(Container.DataItem, "timeonjob", "{0:d}") %>'></asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="4" class="td_thinsepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td align="left" style="width: 120px" class="td_label">
                                              <asp:Label ID="l_monthyear" runat="server" Text="For the Month As of:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 80px" align="left" class="td_unline">
                                              <asp:Textbox ID="monthyear" runat="server" CssClass="inface"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "monthyear", "{0:d}") %>'></asp:Textbox>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td colspan="2" align="left">
                                         <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td align="left" style="width: 120px" class="td_label">
                                              <asp:Label ID="l_rate" runat="server" Text="Hourly Rate:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 80px" align="left" class="td_unline">
                                              <asp:Textbox ID="rate" runat="server" CssClass="inface" MaxLength="10"
                                                  Text='<%# DataBinder.Eval(Container.DataItem, "rate") %>'></asp:Textbox>
                                            </td>
                                            <td align="center" style="width: 60px" class="td_label">
                                              <asp:Label ID="Label10" runat="server" Text="or:"></asp:Label>
                                            </td>
                                            <td align="left" style="width: 120px" class="infaceTextNoPad">
                                              <asp:Checkbox ID="piecerate" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "piecerate").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>Piece Rate
                                            </td>
                                            <td align="right" style="width: 120px" class="td_label">
                                              <asp:Label ID="l_hours" runat="server" Text="Total weekly hours worked:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 80px" align="left" class="td_unline">
                                              <asp:Textbox ID="hours" runat="server" CssClass="inface" MaxLength="10"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "hours") %>'></asp:Textbox>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td align="left" style="width: 50px">
                                            </td>
                                            <td style="width: 160px" align="left" class="td_label">
                                              <asp:Label ID="l_monthlygross" runat="server" Text="Total Gross Wages:"></asp:Label>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td colspan="2" align="left">
                                         <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr class="tr_common">
                                            <td style="width: 150px" align="left" width="150" class="td_unline" >
                                              <asp:Textbox ID="monthlygross" runat="server" CssClass="inface" MaxLength="10"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "monthlygross") %>'></asp:Textbox>
                                            </td>
                                            <td style="width: 150px">
                                            </td>
                                            <td align="right" style="width: 200px" class="td_label">
                                              <asp:Label ID="l_nonworkhours" runat="server" Text="Total Hours of Non-Work Activities:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 80px" align="left" width="80" class="td_unline" >
                                              <asp:Textbox ID="nonworkhours" runat="server" CssClass="inface" MaxLength="10"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "nonworkhours") %>'></asp:Textbox>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr class="tr_common">
                                            <td align="left" style="width: 50px">
                                            </td>
                                            <td style="width: 160px" align="left" class="td_label">
                                              <asp:Label ID="Label11" runat="server" Text="Current Benefits Received:"></asp:Label>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td style="width:10px">
                                      </td>
                                      <td colspan="2" align="left">
                                         <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr class="tr_common">
                                            <td style="width: 150px" align="left" class="infaceTextNoPad">
                                              <asp:Checkbox ID="vacation" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "vacation").ToString().TrimEnd() =="Y") ? true : false %>' >                                              
                                              </asp:Checkbox>Paid Vacation                                              
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 150px" align="left" class="infaceTextNoPad">
                                              <asp:Checkbox ID="sicktime" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "sicktime").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>Paid Sick Time                                              
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 150px" align="left" class="infaceTextNoPad">
                                              <asp:Checkbox ID="holidays" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "holidays").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>Paid Holidays                                              
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 150px" align="left" class="infaceTextNoPad">
                                              <asp:Checkbox ID="insurance" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "insurance").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>Health Ins.                                              
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 210px" class="td_label" >
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td colspan="2" align="left">
                                         <table class="table_inside" cellspacing="0" cellpadding="0" width="100%" border="0">
                                          <tr class="tr_common">
                                            <td style="width: 100px" align="left" class="infaceTextNoPad">
                                              <asp:Checkbox ID="nothing" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "nothing").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>None                                              
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 200px" align="left" class="infaceTextNoPad">
                                              <asp:Checkbox ID="other" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "other").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>Other(Please Specify):                                              
                                            </td>
                                            <td style="width: 10px">
                                            </td>
                                            <td style="width: 300px" align="left" class="td_unline">
                                              <asp:Textbox ID="othertext" runat="server" CssClass="inface" MaxLength="100" 
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "othertext") %>'></asp:Textbox>                                              
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr>
                                      <td colspan="4" class="td_thinsepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="4" class="td_label" align="left" >
                                          <asp:Label ID="Label1" runat="server" Text="Comments:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common" style="height:60px;">
                                      <td colspan="4">
                                          <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="60" 
                                             Text='<%# DataBinder.Eval(Container.DataItem, "comments") %>'>
                                          </asp:TextBox>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="4" align="left" class="td_label">
                                          Entered By:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="EnterBy" runat="server" CssClass="infaceText"
                                             Text='<%# DataBinder.Eval(Container.DataItem, "EnterBy") %>'></asp:Label> 
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          Last Mod By:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="lastmodby" runat="server" CssClass="infaceText"
                                             Text='<%# DataBinder.Eval(Container.DataItem, "lastmodby") %>'></asp:Label>
                                          
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="4" align="left" class="td_label">
                                          Entered Date:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="entrydate" runat="server" CssClass="infaceText" Width="180"
                                            Text='<%# DataBinder.Eval(Container.DataItem, "entrydate") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          Modify Date:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="lastmoddate" runat="server" CssClass="infaceText" Width="180"
                                            Text='<%# DataBinder.Eval(Container.DataItem, "lastmoddate") %>'></asp:Label>
                                      </td>
                                   </tr>
                                </table>
                            </ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
                            </td>
                        </tr>     
                    </table>
                </div>
                <div id="Consumer_SC" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddSc" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" ></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_School" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">SCHOOL LIST</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_schoollist" runat="server" AllowPaging="false" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="false" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="clientid" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="entrydate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="employer" HeaderText="School Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			           </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                        </tr>
                        <tr>
                           <td class="td_thicksepline">
                           </td>
                        </tr>
                        <tr style="height:5px">
                           <td>
                           </td>
                        </tr>
                        <tr class="tr_common">
                            <td>
                        <asp:datagrid id="dg_school" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
						<asp:TemplateColumn HeaderText="">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 230px" width="230px" class="td_label" >
                                        <asp:Label ID="l_employer" runat="server" Text="Name of School:"></asp:Label>
                                      </td>
                                      <td style="width: 10px" width="10px">
                                      </td>
                                      <td style="width: 600px" width="600px" align="left" class="td_unline">
                                        <asp:TextBox ID="employer" runat="server" CssClass="inface" MaxLength="50"
                                           Text='<%# DataBinder.Eval(Container.DataItem, "employer") %>'></asp:TextBox>
                                      </td>
                                      <td style="width:20px">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 230px" class="td_label" >
                                        <asp:Label ID="l_city" runat="server" Text="Address/Phone:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="city" runat="server" CssClass="inface" MaxLength="100"
                                           Text='<%# DataBinder.Eval(Container.DataItem, "city") %>'></asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 230px" class="td_label" >
                                        <asp:Label ID="l_jobtitle" runat="server" Text="School District:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="jobtitle" runat="server" CssClass="inface" MaxLength="50"
                                           Text='<%# DataBinder.Eval(Container.DataItem, "jobtitle") %>'></asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 230px" class="td_label" >
                                        <asp:Label ID="l_other" runat="server" Text="Behavior Plan:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td style="width: 600px" align="left" class="td_unline">
                                        <asp:TextBox ID="other" runat="server" CssClass="inface" Text='<%# DataBinder.Eval(Container.DataItem, "other_desc").ToString().TrimEnd()%>'>
                                        </asp:TextBox>
                                      </td>
                                      <td>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 230px" class="td_label" >
                                         <asp:Label ID="l_timeonjob" runat="server" Text="Current IEP Date:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td>
                                         <table class="table_inside" cellspacing="0" cellpadding="0" >
                                          <tr class="tr_common">
                                            <td style="width: 120px" align="left" class="td_unline">
                                              <asp:Textbox ID="timeonjob" runat="server" CssClass="inface" 
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "timeonjob", "{0:d}") %>'></asp:Textbox>
                                            </td>
                                             <td width="10">
                                            </td>
                                            <td align="left" style="width: 150px" class="infaceTextNoPad">
                                              <asp:Checkbox ID="piecerate" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "piecerate").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>SC Attended IEP:
                                            </td>
                                            <td align="right" style="width: 120px" class="td_label">
                                              <asp:Label ID="l_monthyear" runat="server" Text="Next IEP Date:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 120px" align="left" class="td_unline">
                                              <asp:Textbox ID="monthyear" runat="server" CssClass="inface"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "monthyear", "{0:d}") %>'></asp:Textbox>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td align="left" style="width: 100px" class="infaceTextNoPad">
                                              <asp:Checkbox ID="NoIEP" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "noiep").ToString().TrimEnd() =="Y") ? true : false %>' >
                                              </asp:Checkbox>No IEP
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td></td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td align="left" style="width: 230px" class="td_label" >
                                         <asp:Label ID="Label49" runat="server" Text="504:"></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td>
                                         <table class="table_inside" cellspacing="0" cellpadding="0" >
                                          <tr class="tr_common">
                                            <td style="width: 120px" align="left" class="td_unline">
                                              <asp:Textbox ID="YN504" runat="server" CssClass="inface" 
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "YN504") %>'></asp:Textbox>
                                            </td>
                                            <td width="10">
                                            </td>
                                            <td align="right" style="width: 120px" class="td_label">
                                              <asp:Label ID="Label50" runat="server" Text="504 Date:"></asp:Label>
                                            </td>
                                            <td width="5">
                                            </td>
                                            <td style="width: 120px" align="left" class="td_unline">
                                              <asp:Textbox ID="Date504" runat="server" CssClass="inface"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "Date504", "{0:d}") %>'></asp:Textbox>
                                            </td>
                                            <td style="width:auto"></td>
                                          </tr>
                                         </table>
                                      </td>
                                      <td></td>
                                   </tr>
                                   <tr style="height: 5px">
                                       <td colspan="4">
                                       </td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td colspan="3" align="left" class="infaceTextNoPad">
                                            <asp:Radiobutton ID="Diploma_yes" groupname="Diploma" runat="server" CssClass="inface"  Text="" Checked='<%# (DataBinder.Eval(Container.DataItem, "Diploma").ToString().TrimEnd() =="Y") ? true : false %>'></asp:Radiobutton>
                                            Diploma&nbsp;&nbsp;&nbsp;
                                            <asp:Radiobutton ID="Diploma_no"  groupname="Diploma" runat="server" CssClass="inface"  Text="" Checked='<%# (DataBinder.Eval(Container.DataItem, "Diploma").ToString().TrimEnd() =="N") ? true : false %>'></asp:Radiobutton> 
                                            Certificate Completion                        
                                       </td>
                                       <td></td>
                                    </tr>
                                    <tr style="height: 5px">
                                       <td colspan="4">
                                       </td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td align="left" style="width: 230px" class="td_label" >
                                          <asp:Label ID="Label2" runat="server" Text="Date of Diploma/Certificate Completion:"></asp:Label>
                                       </td>
                                       <td width="10">
                                       </td>
                                       <td align="left">
                                            <asp:TextBox ID="DiplomaDate" runat="server" Width="120px" CssClass="inface" Text='<%# DataBinder.Eval(Container.DataItem, "DiplomaDate", "{0:d}") %>'>
                                            </asp:TextBox>
                                       </td>
                                       <td>
                                       </td>
                                    </tr>
                                    <tr style="height: 5px">
                                       <td colspan="4">
                                       </td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td align="left" style="width: 230px" class="td_label" >
                                          <asp:Label ID="l_edutype" runat="server" Text="Type of Education Placement:"></asp:Label>
                                       </td>
                                       <td width="10">
                                       </td>
                                       <td align="left" class="infaceText" width="600px" style="width:600px">
                                            <asp:Checkbox ID="fullinclusion" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "fullinclusion").ToString().TrimEnd() =="Y") ? true : false %>' >
                                            </asp:Checkbox>Full Inclusion
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Checkbox ID="specialclass" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "specialclass").ToString().TrimEnd() =="Y") ? true : false %>' >
                                            </asp:Checkbox>Special Day Class
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Checkbox ID="mainstream" runat="server" Text=""
                                                 Checked='<%# (DataBinder.Eval(Container.DataItem, "mainstream").ToString().TrimEnd() =="Y") ? true : false %>' >
                                            </asp:Checkbox>Mainstream
                                       </td>
                                       <td>
                                       </td>
                                    </tr>
                                    <tr style="height: 5px">
                                       <td colspan="4">
                                       </td>
                                    </tr>
                                    <tr class="tr_common">
                                       <td align="left" style="width: 230px" class="td_label" >
                                          <asp:Label ID="l_funding" runat="server" Text="School Placement Funding:"></asp:Label>
                                       </td>
                                       <td width="10">
                                       </td>
                                       <td align="left" class="td_unline">
                                            <asp:TextBox ID="placementfunding_desc" runat="server" CssClass="inface" Text=''>
                                            </asp:TextBox>
                                            <asp:Label ID="placementfunding" runat="server" CssClass="inface" Visible="false" Text='<%# DataBinder.Eval(Container.DataItem, "placementfunding") %>'>
                                            </asp:Label>
                                       </td>
                                       <td></td>
                                    </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                </table>
                                <table class="table_inside" cellspacing="0" cellpadding="0">
                                   <tr>
                                      <td colspan="4" class="td_thinsepline">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="4" class="td_label" align="left" >
                                          <asp:Label ID="Label1" runat="server" Text="Comments:"></asp:Label>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr style="height:60px;">
                                      <td colspan="4">
                                          <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Wrap="true" BorderStyle="Solid" width="98%" height="60" 
                                             Text='<%# DataBinder.Eval(Container.DataItem, "comments") %>'>
                                          </asp:TextBox>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="4" align="left" class="td_label">
                                          Entered By:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="EnterBy" runat="server" CssClass="infaceText"
                                             Text='<%# DataBinder.Eval(Container.DataItem, "EnterBy") %>'></asp:Label> 
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          Last Mod By:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="lastmodby" runat="server" CssClass="infaceText"
                                             Text='<%# DataBinder.Eval(Container.DataItem, "lastmodby") %>'></asp:Label>
                                          
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="4">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td colspan="4" align="left" class="td_label">
                                          Entered Date:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="entrydate" runat="server" CssClass="infaceText" Width="180"
                                            Text='<%# DataBinder.Eval(Container.DataItem, "entrydate") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          Modify Date:&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="lastmoddate" runat="server" CssClass="infaceText" Width="180"
                                            Text='<%# DataBinder.Eval(Container.DataItem, "lastmoddate") %>'></asp:Label>
                                      </td>
                                   </tr>
                                </table>
                        </ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid>  
                            </td>       
                        </tr>                      
                    </table>
                </div>
                <div id="Consumer_PG" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr style="height:10px">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr class="tr_common">
	                                <td style="width: 120px" align="right" width="120" class="td_label" >
                                            <b><asp:Label ID="Label119" runat="server" Text="Day Program:"></asp:Label></b>
                                        </td>
                                        <td width="5" >
                                        </td>
                                        <td align="left" width="350">
                                            <asp:DropDownList ID="c_program_primary" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_textID"
                                                    CssClass="infaceDrop" OnChange="DataChanged()" >
                                            </asp:DropDownList>
                                        </td>
                                        <td width="5">
                                        </td>
                                        <td class="td_label" style="width: 80px"><b>Date:</b></td>
                                        <td width="5">
                                        </td>
                                        <td class="td_unline" align="left" style="width: 100px">
                                            <asp:TextBox ID="c_date20" runat="server" CssClass="inface" onclick="DataChanged();showcalendar(event, this);" 
                                                   onfocus="DataChanged();showcalendar(event, this);" width="80" ></asp:TextBox>
                                        </td>
                                        <td style="width:auto"></td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
                       <tr style="height:10px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddPgF" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add" visible="false"></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_prog_fund" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">Funded Program(s)</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_prog_fund" runat="server" AllowPaging="false" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="false" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="rap_uci" HeaderText="rap_uci" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="r_resource_name" HeaderText="Resource Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="rap_auth" HeaderText="Auth #">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_svc_code" HeaderText="Service #">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="SvcCodeName" HeaderText="Service Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_sub_code" HeaderText="SubCode">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="rap_start_dt" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="rap_term_dt" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="View">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE" Visible="false">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			           </tr>
                       <tr style="height:5px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                           <td class="td_thicksepline">
                           </td>
                       </tr>
                       <tr style="height:5px">
                           <td>
                           </td>
                       </tr>
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddPgU" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add"></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_prog_unfund" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">Unfunded Program(s)</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_prog_unfund" runat="server" AllowPaging="false" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="false" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="clientid" HeaderText="ClientID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="entrydate" HeaderText="EntryDate" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="employer" HeaderText="Program Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="startdate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:BoundColumn DataField="enddate" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="Middle"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			           </tr>
                </table>
                </div>
                <div id="Consumer_PO" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
	                                <td align="left">
			                           <asp:label id="l_PosList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">POS LIST</asp:label>
			                        </td>
			                        <td align="left" width="300px">
                                       <asp:button id="btnPosUfsHist" Runat="server" Text="View History" style="width:125px" CssClass="buttonbluestyle" 
                                          OnClientClick="NoCreateIDNotes();" onclick="btnPosUfsHist_Click"></asp:button>
                                    &nbsp;&nbsp;&nbsp;
                                       <asp:button id="btnPosUfsPay" Runat="server" Text="View Payables" style="width:125px" CssClass="buttonbluestyle" Enabled=false></asp:button>
                                    </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
                        <asp:datagrid id="dg_posufs" runat="server" AllowPaging="false" CssClass="grd_bodyborder"
					          AutoGenerateColumns="False" AllowSorting="false" ShowHeader="false">
					    <HeaderStyle CssClass="grd_head" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_itemborder"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitemborder"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="rap_uci" HeaderText="" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="rap_auth" HeaderText="" Visible="False"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
	                            <table class="table_inside" cellspacing="0" cellpadding="0">
                                   <tr class="tr_common">
                                      <td colspan="7">
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                          <tr>
                                            <td align="left" style='width: 100px;background-color:<%#DataBinder.Eval(Container.DataItem, "specbkcolor") %>;color:<%#DataBinder.Eval(Container.DataItem, "speccolor") %>' 
                                               class="td_label">
                                              <asp:Label ID="rap_svc_code" runat="server" 
                                                   Text='<%# DataBinder.Eval(Container.DataItem, "rap_svc_code") %>'></asp:Label>
                                            </td>
                                            <td width="20" >
                                            </td>
                                            <td style='width: 400px;background-color:<%#DataBinder.Eval(Container.DataItem, "specbkcolor") %>;color:<%#DataBinder.Eval(Container.DataItem, "speccolor") %>' align="left" width="400"  class="td_label">
                                              <asp:Label ID="SvcCodeName" runat="server"
                                                  Text='<%# DataBinder.Eval(Container.DataItem, "SvcCodeName") %>' ></asp:Label>
                                            </td>
                                            <td>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="7">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td width="350">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr class="tr_common">
                                            <td align="left" style="width: 100px" class="td_label">
                                              <asp:Label ID="rap_vid" runat="server"  
                                                  Text='<%# DataBinder.Eval(Container.DataItem, "rap_vid") %>'></asp:Label>
                                            </td>
                                            <td width="100">
                                            </td>
                                            <td style="width: 140px" align="left" class="td_label">
                                              <asp:Label ID="r_site_phone_1" runat="server"
                                                  Text='<%# DataBinder.Eval(Container.DataItem, "r_site_phone_1") %>'></asp:Label>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td width="50">
                                      </td>
                                      <td style="width: 100px" align="right" class="td_label">
                                          <asp:Label ID="l_rap_auth" runat="server" Text="Auth#:"></asp:Label>
                                      </td>
                                      <td width="5">
                                      </td>
                                      <td class="td_label" align="left" style="width: 150px">
                                          <asp:Label ID="rap_auth" runat="server"
                                              Text='<%# DataBinder.Eval(Container.DataItem, "rap_auth") %>'></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td width="300">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr class="tr_common">
                                            <td align="left" style="width: 100px" class="td_label">
                                              <asp:Label ID="l_RapUnitName" runat="server" Text="Unit Type:"></asp:Label>
                                            </td>
                                            <td width="20">
                                            </td>
                                            <td style="width: 170px" align="left" class="td_label">
                                              <asp:Label ID="RapUnitName" runat="server"
                                                  Text='<%# DataBinder.Eval(Container.DataItem, "RapUnitName") %>'></asp:Label>
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="7">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td width="350" class="td_label">
                                          <asp:Label ID="r_resource_name" runat="server"
                                              Text='<%# DataBinder.Eval(Container.DataItem, "r_resource_name") %>'></asp:Label>
                                      </td>
                                      <td width="50">
                                      </td>
                                      <td style="width: 100px" align="right" class="td_label">
                                          <asp:Label ID="l_rap_start_dt" runat="server" Text="Start Date:"></asp:Label>
                                      </td>
                                      <td width="5">
                                      </td>
                                      <td align="left" style="width:150px" class="td_label">
                                          <asp:Label ID="rap_start_dt" runat="server"
                                              Text='<%# DataBinder.Eval(Container.DataItem, "rap_start_dt", "{0:d}") %>'></asp:Label>
                                      </td>
                                      <td width="10">
                                      </td>
                                      <td width="300" rowspan="7" align="left" class="td_label">
                                          <asp:Label ID="rap_desc" runat="server" Height="80"
                                              Text='<%# DataBinder.Eval(Container.DataItem, "rap_desc") %>'></asp:Label>                                             
                                      </td>
                                   </tr>
                                   <tr style="height:5px;">
                                      <td colspan="6">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td width="350" class="td_label" >
                                          <asp:Label ID="r_site_address_line_1" runat="server"
                                              Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_line_1") %>'></asp:Label>                                                                                           
                                      </td>
                                      <td width="50">
                                      </td>
                                      <td style="width: 100px" align="right" width="150" class="td_label" >
                                          <asp:Label ID="l_rap_term_dt" runat="server" Text="End Date:"></asp:Label>                                                                                                                                     
                                      </td>
                                      <td width="5" >
                                      </td>
                                      <td class="td_label" align="left" style="width:150px;color:<%#DataBinder.Eval(Container.DataItem, "speccolor") %>">
                                          <asp:Label ID="rap_term_dt" runat="server"
                                              Text='<%# DataBinder.Eval(Container.DataItem, "rap_term_dt", "{0:d}") %>'></asp:Label>
                                      </td>
                                      <td width="10" >
                                      </td>
                                   </tr>
                                   <tr style="height:5px;">
                                      <td colspan="6">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td width="350">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td class="td_label" align="left" style="width: 170px">
                                              <asp:Label ID="r_site_address_city" runat="server"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_city") %>'></asp:Label>                                                  
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td class="td_label" style="width: 60px" align="left" width="60">
                                              <asp:Label ID="r_site_address_state" runat="server"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_state") %>'></asp:Label>                                                                                                 
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td class="td_label" style="width: 100px" align="left" width="100">
                                              <asp:Label ID="r_site_address_zip" runat="server"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "r_site_address_zip") %>'></asp:Label>                                                                                                                                                  
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td width="50">
                                      </td>
                                      <td style="width: 100px" align="right" width="150" class="td_label">
                                          <asp:Label ID="l_rap_rate" runat="server" Text="Rate:"></asp:Label>
                                      </td>
                                      <td width="5">
                                      </td>
                                      <td class="td_label" align="left" style="width:150">
                                          <asp:Label ID="rap_rate" runat="server"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "rap_rate") %>'></asp:Label>                                                                                                 
                                      </td>
                                      <td width="10">
                                      </td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="6">
                                      </td>
                                   </tr>
                                   <tr class="tr_common">
                                      <td width="350">
                                        <table class="table_inside" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td align="right" style="width: 240px">
                                              <asp:Label ID="l_LastPaid" runat="server" CssClass="infaceText"></asp:Label>
                                            </td>
                                            <td width="5" >
                                            </td>
                                            <td class="td_unline" style="width: 100px" align="left" width="100">
                                              <asp:Label ID="LastPaid" runat="server" CssClass="infaceText"
                                                 Text='<%# DataBinder.Eval(Container.DataItem, "LastPaid") %>'></asp:Label>                                                                              
                                            </td>
                                          </tr>
                                        </table>
                                      </td>
                                      <td width="50">
                                      </td>
                                      <td style="width: 100px" align="right" class="td_label">
                                          <asp:Label ID="l_rap_unit_freq" runat="server" Text="Frequency:"></asp:Label>
                                      </td>
                                      <td width="5">
                                      </td>
                                      <td class="td_label" align="left" width="150" >
                                          <asp:Label ID="rap_unit_freq" runat="server"
                                             Text='<%# DataBinder.Eval(Container.DataItem, "rap_unit_freq") %>'></asp:Label>                                             
                                      </td>
                                      <td width="10" >
                                      </td>
                                      <td></td>
                                   </tr>
                                   <tr style="height:5px">
                                      <td colspan="7">
                                      </td>
                                   </tr>
                                </table>  
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>     
                    </table>
                </div>
                <div id="Consumer_CT" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddCo" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add"></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_ContactList" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">CONTACT LIST</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_contact" runat="server" PageSize="8" AllowPaging="True" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="True" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="s_key" HeaderText="s_key" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="s_number" HeaderText="s_number" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="Name" HeaderText="Name" SortExpression="Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="GroupName" HeaderText="Group" SortExpression="GroupName">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="Relationship" HeaderText="Relationship" SortExpression="Relationship">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="PhoneStr" HeaderText="Phone" SortExpression="PhoneStr">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="s_emergencycontact_desc" HeaderText="Emergency" SortExpression="s_emergencycontact_desc">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="s_group" HeaderText="s_group" Visible="False"></asp:BoundColumn>
					    </Columns>
					    <PagerStyle Mode="NumericPages" CssClass="grd_paitem"></PagerStyle>
				        </asp:datagrid> 
				        	</td>
			            </tr>     
                    </table>
                </div>
                <div id="Consumer_SA" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                        <tr style="height:15px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 500px" align="left" class="td_label">
                                <b><asp:Label ID="l_drug_substance_use" runat="server" Text="Primary Substance Use/Abuse Problem:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: auto" class="td_unline" align="left" colspan="5">
                                <asp:TextBox ID="drug_substance_use" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_drug_first_time" runat="server" Text="When was the first time (date) you used your primary drug?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" >
                                <asp:DropDownList ID="drug_first_time" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="30" >
                            </td>
                            <td align="left" class="td_label"  style="width: 200px">
                                <b><asp:Label ID="l_drug_freq" runat="server" Text="Frequency of Use:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="200px" >
                                <asp:DropDownList ID="drug_freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                     Width="200px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_drug_route" runat="server" Text="Usual route of administration for primary drug:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="drug_route" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_smoke" runat="server" Text="Do you smoke?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" >
                                <asp:DropDownList ID="smoke" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                            <td width="30" >
                            </td>
                            <td align="left" class="td_label"  style="width: 200px">
                                <b><asp:Label ID="l_smoke_freq" runat="server" Text="How frequent do you smoke?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="200px" >
                                <asp:DropDownList ID="smoke_freq" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="200px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_quitting" runat="server" Text="If yes, are you interested in quitting?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="quitting" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_NRT" runat="server" Text="Are you interested in Nicotine Replacement Therapy (NRT)?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="NRT" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>

                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_quit_smokeing_info" runat="server" Text="Would you like information on how to quit smoking?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="quit_smokeing_info" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>

                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 500px" align="left" class="td_label">
                                <b><asp:Label ID="l_other_drugs_used" runat="server" Text="Other drugs used:"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: auto" class="td_unline" align="left" colspan="5">
                                <asp:TextBox ID="other_drugs_used" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                            </td>
                        </tr>

                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_inject_use_needle" runat="server" Text="Have you used a needle to inject drugs in the past year?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="inject_use_needle" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_drug_user_contact" runat="server" Text="Have you had contact with an intravenous drug user? "></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="drug_user_contact" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td align="left" class="td_label"  style="width: 500px">
                                <b><asp:Label ID="l_pharmaceutical_med_used" runat="server" Text="Have you ever used/abused pharmaceutical medications?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td align="left" width="300px" colspan="5">
                                <asp:DropDownList ID="pharmaceutical_med_used" runat="server" DataValueField="tb_entry_name" DataTextField="tb_entry_text"
                                        Width="300px" OnChange="DataChanged()">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:10px;">
                          <td colspan="7">
                          </td>
                        </tr>
                        <tr class="tr_common">
                            <td style="width: 500px" align="left" class="td_label">
                                <b><asp:Label ID="l_pharmaceutical_medications" runat="server" Text="If yes, what pharmaceutical medications have you used/abused?"></asp:Label></b>
                            </td>
                            <td width="5" >
                            </td>
                            <td style="width: auto" class="td_unline" align="left" colspan="5">
                                <asp:TextBox ID="pharmaceutical_medications" runat="server" CssClass="inface" MaxLength="100"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="Consumer_EG" runat="server"  style="display: none">
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                        <tr style="height:15px;">
                          <td>
                          </td>
                        </tr>
                        <tr style="height: 30px;" valign="middle">
                            <td align="center">
                                <asp:Label ID="l_es_intake" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                                    Height="18px" Text="ES INTAKE LIST"></asp:Label>
                            </td>
                        </tr>
                    </table>  
                    <div id="ES101Div" align="center" style="position: relative; width: 100%; height: 100%;
                        overflow:auto">    
                        <asp:DataGrid ID="dg_EsrForm101" runat="server" AllowPaging="False" CssClass="grd_body"
                                Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                            <HeaderStyle CssClass="grd_head">
                            </HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>              
                                <asp:BoundColumn DataField="id" HeaderText="id" Visible="False" ></asp:BoundColumn>     
                                <asp:BoundColumn DataField="createdate" HeaderText="Create Date" SortExpression="createdate" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="mis" HeaderText="MIS number" SortExpression="mis">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="client_name" HeaderText="Consumer Name" SortExpression="client_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ref_screener_name" HeaderText="Screener" SortExpression="ref_screener_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ref_source_name" HeaderText="Referred by" SortExpression="ref_source_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="submitdate" HeaderText="SubmitDate" SortExpression="submitdate" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="terminated_date" HeaderText="TerminatedDate" SortExpression="terminated_date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="View/Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                            BorderWidth="0"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="submittedby" HeaderText="Submittedby" SortExpression="submittedby" Visible=false>
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>                 
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                        <tr style="height:15px;">
                          <td>
                          </td>
                        </tr>
                        <tr style="height: 30px;" valign="middle">
                            <td align="center">
                                <asp:Label ID="Label41" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                                    Height="18px">ES PSYCHOSOCIAL LIST</asp:Label>
                            </td>
                        </tr>
                    </table> 
                    <div id="ESPsySocialDiv" align="center" style="position: relative; width: 100%; height: 100%;
                        overflow:auto">  
                        <asp:DataGrid ID="dg_EsrPsySocialList" runat="server" AllowPaging="false" CssClass="grd_body"
				            Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
				            <HeaderStyle CssClass="grd_head"></HeaderStyle>
				            <ItemStyle CssClass="grd_item"></ItemStyle>
				            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>     
                                <asp:BoundColumn DataField="EntryKey" HeaderText="EntryKey" Visible="False">
                                </asp:BoundColumn>  
                                <asp:BoundColumn DataField="uci" HeaderText="uci" Visible="False">
                                </asp:BoundColumn>        
                                <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="SignedBySC" HeaderText="Signed By SC" >
                                    <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="SignedByPM" HeaderText="Signed By PM">
                                    <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                </asp:BoundColumn>     
                                <asp:TemplateColumn HeaderText="View/Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="middle"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                            BorderWidth="0"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid> 
                    </div>
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                        <tr style="height:15px;">
                          <td>
                          </td>
                        </tr>
                        <tr style="height: 30px;" valign="middle">
                            <td align="center">
                                <asp:Label ID="l_title" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                                    Height="18px">ES ELIGIBILITY LIST</asp:Label>
                            </td>
                        </tr>
                    </table>  
                    <div id="ESEligDiv" align="center" style="position: relative; width: 100%; height: 100%;overflow:auto">       
                        <asp:DataGrid ID="dg_ESEligibiltyList" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
                            <HeaderStyle CssClass="grd_head"></HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false"></asp:BoundColumn>
                                <asp:BoundColumn DataField="c_uci" HeaderText="UCI"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ConsumerName" HeaderText="Consumer Name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="groupname" HeaderText="Area">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="" HeaderText="Category">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="" HeaderText="SC">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Duedate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="DecisionDate" HeaderText="Decision Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="LastModBy" HeaderText="Last Mod By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="LastModDate" HeaderText="Last Mod Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                            BorderWidth="0"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn HeaderText="speccolor" DataField="speccolor" Visible="false"></asp:BoundColumn>
                                <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}" Visible="false">
                                </asp:BoundColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    <br />
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                        <tr style="height:15px;">
                          <td>
                          </td>
                        </tr>
                        <tr style="height: 30px;" valign="middle">
                            <td align="center">
                                <asp:Label ID="l_lantarman_intake" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                                    Height="18px" Text="LANTERMAN INTAKE LIST"></asp:Label>
                            </td>
                        </tr>
                    </table>  
                    <div id="101Div" align="center" style="position: relative; width: 100%; height: 100%;
                        overflow:auto">    
                        <asp:DataGrid ID="dg_Form101" runat="server" AllowPaging="False" CssClass="grd_body"
                                Visible="True" AutoGenerateColumns="False" AllowSorting="True">
                            <HeaderStyle CssClass="grd_head">
                            </HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>              
                                <asp:BoundColumn DataField="id" HeaderText="id" Visible="False" ></asp:BoundColumn>     
                                <asp:BoundColumn DataField="createdate" HeaderText="Create Date" SortExpression="createdate" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="mis" HeaderText="MIS number" SortExpression="mis">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="client_name" HeaderText="Consumer Name" SortExpression="client_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ref_screener_name" HeaderText="Screener" SortExpression="ref_screener_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="ref_source_name" HeaderText="Referred by" SortExpression="ref_source_name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="submitdate" HeaderText="SubmitDate" SortExpression="submitdate" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="terminated_date" HeaderText="TerminatedDate" SortExpression="terminated_date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="View/Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                            BorderWidth="0"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>              
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                        <tr style="height:15px;">
                          <td>
                          </td>
                        </tr>
                        <tr style="height: 30px;" valign="middle">
                            <td align="center">
                                <asp:Label ID="Label43" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                                    Height="18px">LANTERMAN PSYCHOSOCIAL LIST</asp:Label>
                            </td>
                        </tr>
                    </table> 
                    <div id="PsySocialDiv" align="center" style="position: relative; width: 100%; height: 100%;
                        overflow:auto">   
                        <asp:DataGrid ID="dg_PsySocialList" runat="server" AllowPaging="false" CssClass="grd_body"
				            Visible="True" AutoGenerateColumns="False" AllowSorting="false" >
				            <HeaderStyle CssClass="grd_head"></HeaderStyle>
				            <ItemStyle CssClass="grd_item"></ItemStyle>
				            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
				            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>     
                                <asp:BoundColumn DataField="EntryKey" HeaderText="EntryKey" Visible="False">
                                </asp:BoundColumn>  
                                <asp:BoundColumn DataField="c_key" HeaderText="c_key" Visible="False">
                                </asp:BoundColumn>        
                                <asp:BoundColumn DataField="EntryDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="SignedBySC" HeaderText="Signed By SC" >
                                    <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="SignedByPM" HeaderText="Signed By PM">
                                    <ItemStyle HorizontalAlign="left" VerticalAlign="middle" />
                                </asp:BoundColumn>     
                                <asp:TemplateColumn HeaderText="View/Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="middle"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                            BorderWidth="0"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="95%">
                        <tr style="height:15px;">
                          <td>
                          </td>
                        </tr>
                        <tr style="height: 30px;" valign="middle">
                            <td align="center">
                                <asp:Label ID="Label40" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green"
                                    Height="18px">LANTERMAN ELIGIBILITY LIST</asp:Label>
                            </td>
                        </tr>
                    </table>  
                    <div id="EligDiv" align="center" style="position: relative; width: 100%; height: 100%;
                        overflow:auto">                
                        <asp:datagrid ID="dg_EligibiltyList" runat="server" AllowPaging="false" CssClass="grd_body"
                            Visible="True" AutoGenerateColumns="False" AllowSorting="false">
                            <HeaderStyle CssClass="grd_head"></HeaderStyle>
                            <ItemStyle CssClass="grd_item"></ItemStyle>
                            <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
                            <FooterStyle CssClass="grd_fsitem"></FooterStyle>
                            <Columns>
                                <asp:BoundColumn HeaderText="EntryKey" DataField="EntryKey" Visible="false">                                    
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_uci" HeaderText="UCI"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ConsumerName" HeaderText="Consumer Name">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="c_dob" HeaderText="DOB" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="groupname" HeaderText="Area">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="type" HeaderText="Category">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Leader" HeaderText="SC">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="reviewgroup" HeaderText="HRG Group" Visible="false">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="Duedate" HeaderText="Due Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="DecisionDate" HeaderText="Decision Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="LastModBy" HeaderText="Last Mod By">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="LastModDate" HeaderText="Last Mod Date" DataFormatString="{0:MM/dd/yyyy}">
                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Edit">
                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" runat="server" ImageUrl="../img/view.gif"
                                            BorderWidth="0"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn HeaderText="speccolor" DataField="speccolor" Visible="false">                                    
                                </asp:BoundColumn>
                            </Columns>
                        </asp:datagrid>
                    </div>
                </div>
                <div id="Consumer_PE" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddPe" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add"></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="l_Permission" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">PERMISSION ASSIGNMENT LIST</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_permission" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="FormID" HeaderText="FormID" Visible="False"></asp:BoundColumn>
						<asp:BoundColumn DataField="AccountType" HeaderText="Type">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="AssignName" HeaderText="Name">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="StartDate" HeaderText="StartDate" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="EndDate" HeaderText="EndDate" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="TypeSource" HeaderText="Source" Visible="false">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="EnteredByName" HeaderText="Entered By">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    <asp:BoundColumn DataField="AssignClient" HeaderText="AssignClient" Visible="False"></asp:BoundColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>     
                    </table>
                </div>
                <div id="Consumer_SD" style="display: none">
                    <table class="table_common" cellspacing="0" cellpadding="0">
                       <tr style="height:10px">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr class="tr_common">
	                                <td style="width: 150px" align="right" width="150" class="td_label" >
                                       <b><asp:Label ID="Label123" runat="server" Text="Service Delivery Type:"></asp:Label></b>
                                    </td>
                                    <td width="5" >
                                    </td>
                                    <td align="left" width="300">
                                       <asp:DropDownList ID="c_court_docs" runat="server" CssClass="infaceDropRead" Enabled="false">
                                                <asp:ListItem Value="T" Selected="True">Traditional</asp:ListItem>
                                                <asp:ListItem Value="S">Self Determination</asp:ListItem>
                                            </asp:DropDownList>
                                    </td>
                                    <td style="width:auto"></td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
                       <tr style="height:10px">
                            <td>
                            </td>
                       </tr>
                       <tr>
                            <td>
                               <table border="0" cellpadding="0" style="BORDER-COLLAPSE: collapse" width="95%" >
	                              <tr style="height: 30px;" valign="middle">
                                    <td  align="left" style="width:30px;height:25">
				                       <asp:ImageButton ID="BtnAddSDP" Runat="server" Height="25px" Width="25px" ImageUrl="../img/add.ico" ToolTip="Add"></asp:ImageButton>
                                    </td>
	                                <td align="center">
			                           <asp:label id="Label122" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Green" Height="18px">Self Determination List</asp:label>
			                        </td>
		                          </tr>
		                       </table>
		                    </td>
		               </tr>
		               <tr class="tr_common">
                            <td>
                            </td>
                       </tr>
                       <tr class="tr_common">
                            <td>
				        <asp:datagrid id="dg_SDP" runat="server" AllowPaging="False" CssClass="grd_body"
					          AutoGenerateColumns="False" AllowSorting="False" >
					    <HeaderStyle CssClass="grd_head_fix" BackColor="Aquamarine" BorderColor="Aquamarine"></HeaderStyle>					
					    <ItemStyle CssClass="grd_item"></ItemStyle>
					    <AlternatingItemStyle CssClass="grd_alitem"></AlternatingItemStyle>
					    <FooterStyle CssClass="grd_fsitem"></FooterStyle>
					    <Columns>
					    <asp:BoundColumn DataField="FormID" HeaderText="FormID" Visible="False"></asp:BoundColumn>
					    <asp:BoundColumn DataField="uci" HeaderText="uci" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CreateDate" HeaderText="Create Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="SVCStartDate" HeaderText="Start (Activation) Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:BoundColumn DataField="SVCEndDate" HeaderText="End (Termination) Date" DataFormatString="{0:MM/dd/yyyy}">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="CreateBy_Name" HeaderText="Entered By">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundColumn>
						<asp:TemplateColumn HeaderText="Edit">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:HyperLink NavigateUrl="#herf_md" ID="hy_edit" Runat="server" ImageUrl="../img/view.gif" BorderWidth="0"></asp:HyperLink>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="DELETE">
							<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
							<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
							<ItemTemplate>
								<asp:ImageButton CommandName="Delete" Runat="server" ID="imgDel" Width="15px" Height="15px" ImageUrl="../img/delete.gif"
									BorderWidth="0"></asp:ImageButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					    </Columns>
				        </asp:datagrid> 
				        	</td>
			            </tr>     
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
